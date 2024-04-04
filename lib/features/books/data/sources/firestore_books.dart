// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:futurstore/core/data/models/item_category.dart';

import '../models/book.dart';
import '../repo/i_books.dart';

class FirestoreBooksRepo extends IBooksRepo {
  FirestoreBooksRepo() {
    _service = booksReference;
  }

  late final BookModelCollectionReference _service;

  @override
  Future<void> addReview(
    String uuid,
    String deviceId,
    String address,
    String bookId,
    String assetId,
    String hash,
    double rating,
    String? comment,
    String? userProfilePictureUrl,
  ) async {
    try {
      final docRef = _service.doc(bookId);
      final application = await docRef.get();

      if (!application.exists) {
        throw Exception('Book not found');
      }

      if (await haveAddedReview(bookId, address)) return;

      await docRef.reviews.doc(address).set(
            BookReview(
              addedAt: DateTime.now(),
              address: address,
              bookId: bookId,
              assetId: assetId,
              comment: comment,
              deviceId: deviceId,
              id: address,
              hash: hash,
              userId: uuid,
              rating: rating,
              userProfilePictureUrl: userProfilePictureUrl,
            ),
          );
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<BookModel?> find(String id) async {
    try {
      return (await _service.doc(id).get()).data;
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<BookModel?> findBook(String bookId) {
    try {
      return _service.doc(bookId).get().then((value) {
        return value.data;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<List<BookModel>> get({ItemCategory? category}) async {
    try {
      return (category == null
              ? (await _service.get())
              : (await _service.whereCategoryId(isEqualTo: category.id).get()))
          .docs
          .map((e) => e.data)
          .where(
            (book) => book.published && book.assetId != null,
          )
          .toList();
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<bool> haveAddedReview(
    String bookId,
    String address,
  ) {
    try {
      return _service.doc(bookId).reviews.doc(address).get().then((value) {
        return value.exists;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }

  @override
  Future<BookReview?> myReview(
    String bookId,
    String address,
  ) {
    try {
      return _service.doc(bookId).reviews.doc(address).get().then((value) {
        return value.data;
      });
    } catch (e) {
      debugPrint(e.toString());

      rethrow;
    }
  }
}
