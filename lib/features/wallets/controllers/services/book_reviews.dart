import 'package:dart_utils/dart_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:futurstore/features/books/controllers/providers/books_repo_provider.dart';
import 'package:futurstore/features/books/data/models/book.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/connected_wallet_provider.dart';
import '../providers/uniq_id_provider.dart';
import '../providers/user_uniq_identifier_provider.dart';
import 'assets.dart';

part 'book_reviews.g.dart';

@riverpod
Future<({String? error, bool success, BookReview? data})> addBookReview(
  AddBookReviewRef ref, {
  required String bookId,
  required double rating,
  String? comment,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final booksRepo = ref.read(booksRepoProvider);

    final book = await booksRepo.findBook(bookId);

    if (book == null || book.assetId == null) {
      return (
        error: 'Unable to add review at this time.'.hardcoded,
        success: false,
        data: null,
      );
    }

    if (!await ref.read(
      verifyAssetPurchaseProvider(
        assetId: int.parse(book.assetId!),
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

    if (await booksRepo.haveAddedReview(bookId, wallet.value!.address)) {
      return (
        error:
            '''User with this address have already added review for this book.'''
                .hardcoded,
        success: false,
        data: null,
      );
    }

    final hash = await ref.read(
      addReviewHashProvider(
        assetId: int.parse(book.assetId!),
        note: rating.toString(),
      ).future,
    );

    final deviceId = await ref.read(deviceUniqIdProvider);

    final uuid = await ref.read(userUniqIdentifierProvider);

    await booksRepo.addReview(
      uuid,
      deviceId,
      wallet.value!.address,
      bookId,
      book.assetId!,
      hash!,
      rating,
      comment,
      null,
    );

    return (
      error: null,
      success: true,
      data: await booksRepo.myReview(bookId, wallet.value!.address),
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
Future<bool> haveAddedBookReview(
  HaveAddedBookReviewRef ref, {
  required String bookId,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final booksRepo = ref.read(booksRepoProvider);

    return booksRepo.haveAddedReview(bookId, wallet.value!.address);
  } catch (e) {
    debugPrint(e.toString());

    return false;
  }
}

@riverpod
Future<BookReview?> myBookReview(
  MyBookReviewRef ref, {
  required String bookId,
}) async {
  try {
    final wallet = ref.read(connectedWalletProvider);

    if (wallet.value == null) {
      throw Exception('No connected wallet');
    }

    final booksRepo = ref.read(booksRepoProvider);

    return booksRepo.myReview(bookId, wallet.value!.address);
  } catch (e) {
    debugPrint(e.toString());

    return null;
  }
}
