import 'package:futurstore/core/data/models/item_category.dart';

import '../models/book.dart';

abstract class IBooksRepo {
  Future<List<BookModel>> get({ItemCategory? category});

  Future<BookModel?> find(String id);
}
