import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/book.dart';
import 'books_repo_provider.dart';

part 'books_provider.g.dart';

@riverpod
Future<List<BookModel>> books(BooksRef ref) async {
  try {
    return ref.read(booksRepoProvider).get();
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
