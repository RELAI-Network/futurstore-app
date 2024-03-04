import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repo/i_books.dart';
import '../../data/sources/firestore_books.dart';

final booksRepoProvider = Provider<IBooksRepo>((ref) {
  return FirestoreBooksRepo();
});
