import 'package:flutter/foundation.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/books/data/models/book.dart';
import 'package:futurstore/features/wallets/controllers/providers/connected_wallet_provider.dart';
import 'package:futurstore/features/wallets/controllers/providers/reviews_hash_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/network/extrinsics_providers.dart';
import '../providers/uniq_id_provider.dart';
import '../providers/user_uniq_identifier_provider.dart';
import '../providers/users_service_provider.dart';

part 'assets.g.dart';

@riverpod
Future<void> buyAsset(
  BuyAssetRef ref, {
  required int assetId,
  required String assetType,
  void Function(String)? onSuccess,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    if (await ref.read(
      verifyAssetPurchaseProvider(
        assetId: assetId,
        address: wallet.value!.address,
      ).future,
    )) {
      debugPrint('verifyAssetPurchaseProvider');
      return;
    }

    final authorApi = ref.read(relaiAuthorApiProvider);

    final extrinsic =
        await ref.read(extrinsicPayloadFromAddressAndAssetIdFuncProvider)(
      wallet.value!.mnemonic,
      assetId,
    );

    await authorApi.submitAndWatchExtrinsic(
      extrinsic,
      (data) async {
        debugPrint('${data.type}: ${data.value}');

        if (data.type.toLowerCase() == 'finalized' && data.value != null) {
          final deviceId = await ref.read(deviceUniqIdProvider);

          final uuid = await ref.read(userUniqIdentifierProvider);

          await ref.read(usersRepoProvider).buyAsset(
                uuid,
                deviceId,
                wallet.value!.address,
                assetId,
                assetType,
              );

          onSuccess?.call(data.value.toString());
        }
      },
    );
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}

@riverpod
Future<bool> verifyAssetPurchase(
  VerifyAssetPurchaseRef ref, {
  required int assetId,
  required String address,
}) async {
  try {
    return ref.read(verifyAssetPurchaseFromAddressAndAssetIdFuncProvider)(
      address,
      assetId,
    );
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}

@riverpod
Future<void> addReviewHash(
  AddReviewHashRef ref, {
  required int assetId,
  required int note,
  String? content,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final deviceId = await ref.read(deviceUniqIdProvider);

    final hash = await ref.read(getHashFromReviewInformationFuncProvider)(
      wallet.value!.mnemonic,
      deviceId,
      assetId,
      note,
      content,
    );

    await ref.read(reviewsHashRepoProvider).add(
          wallet.value!.address,
          assetId.toString(),
          hash,
        );
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}

@riverpod
Future<List<ApplicationModel>> myAppsGames(MyAppsGamesRef ref) async {
  try {
    final uuid = await ref.read(userUniqIdentifierProvider);

    return await ref.read(usersRepoProvider).myAppsGames(uuid);
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}

@riverpod
Future<List<BookModel>> myBooks(MyBooksRef ref) async {
  try {
    final uuid = await ref.read(userUniqIdentifierProvider);

    return await ref.read(usersRepoProvider).myBooks(uuid);
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
