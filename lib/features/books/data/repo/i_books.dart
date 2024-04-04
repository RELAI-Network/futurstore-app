import 'package:futurstore/core/data/models/item_category.dart';

import '../models/book.dart';

abstract class IBooksRepo {
  Future<List<BookModel>> get({ItemCategory? category});

  Future<BookModel?> find(String id);

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
  );

  Future<bool> haveAddedReview(
    String bookId,
    String address,
  );

  Future<BookReview?> myReview(
    String bookId,
    String address,
  );

  Future<BookModel?> findBook(String bookId);
}
