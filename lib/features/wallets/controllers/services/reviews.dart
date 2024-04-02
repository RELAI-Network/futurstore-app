import 'package:dart_utils/dart_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:futurstore/features/apps/controllers/providers/apps_state_provider.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/connected_wallet_provider.dart';
import '../providers/uniq_id_provider.dart';
import '../providers/user_uniq_identifier_provider.dart';
import 'assets.dart';

part 'reviews.g.dart';

@riverpod
Future<({String? error, bool success, AppReview? data})> addReview(
  AddReviewRef ref, {
  required String applicationId,
  required double rating,
  String? comment,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final appsRepo = ref.read(appsRepoProvider);

    final application = await appsRepo.findApp(applicationId);

    if (application == null || application.assetId == null) {
      return (
        error: 'Unable to add review at this time.'.hardcoded,
        success: false,
        data: null,
      );
    }

    if (!await ref.read(
      verifyAssetPurchaseProvider(
        assetId: int.parse(application.assetId!),
        address: wallet.value!.address,
      ).future,
    )) {
      return (
        error:
            'Unable to verify your purchase at this time. Please retry later.'
                .hardcoded,
        success: false,
        data: null,
      );
    }

    if (await appsRepo.haveAddedReview(applicationId, wallet.value!.address)) {
      return (
        error:
            '''User with this address have already added review for this application.'''
                .hardcoded,
        success: false,
        data: null,
      );
    }

    final hash = await ref.read(
      addReviewHashProvider(
        assetId: int.parse(application.assetId!),
        note: rating.toString(),
      ).future,
    );

    final deviceId = await ref.read(deviceUniqIdProvider);

    final uuid = await ref.read(userUniqIdentifierProvider);

    await appsRepo.addReview(
      uuid,
      deviceId,
      wallet.value!.address,
      applicationId,
      application.assetId!,
      hash!,
      rating,
      comment,
      null,
    );

    return (
      error: null,
      success: true,
      data: await appsRepo.myReview(applicationId, wallet.value!.address),
    );
  } catch (e) {
    debugPrint(e.toString());

    return (
      error: e.toString(),
      success: false,
      data: null,
    );
  }
}

@riverpod
Future<bool> haveAddedReview(
  HaveAddedReviewRef ref, {
  required String applicationId,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final appsRepo = ref.read(appsRepoProvider);

    return appsRepo.haveAddedReview(applicationId, wallet.value!.address);
  } catch (e) {
    debugPrint(e.toString());

    return false;
  }
}

@riverpod
Future<AppReview?> myAppReview(
  MyAppReviewRef ref, {
  required String applicationId,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final appsRepo = ref.read(appsRepoProvider);

    return appsRepo.myReview(applicationId, wallet.value!.address);
  } catch (e) {
    debugPrint(e.toString());

    return null;
  }
}
