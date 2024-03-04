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
  Future<List<BookModel>> get({ItemCategory? category}) async {
    try {
      return (category == null
              ? (await _service.get())
              : (await _service.whereCategoryId(isEqualTo: category.id).get()))
          .docs
          .map((e) => e.data)
          .toList();
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
}
