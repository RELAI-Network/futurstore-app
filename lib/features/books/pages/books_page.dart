import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/presentation/views/loading_async_data_screen.dart';

import '../controllers/providers/books_provider.dart';
import 'books_view.dart';

class BooksPage extends ConsumerWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(booksProvider);

    return books.build(
      builder: (books) => BooksView(books: books),
      retryOnError: () {
        // ignore: unused_result
        ref.refresh(booksProvider);
      },
    );
  }
}
