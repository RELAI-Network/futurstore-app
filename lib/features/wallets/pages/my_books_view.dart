import 'package:flutter/material.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/presentation/theming/configs/app_spacing.dart';
import 'package:futurstore/features/books/data/models/book.dart';
import 'package:futurstore/features/books/pages/books_grid_view.dart';

class MyBooksView extends StatelessWidget {
  const MyBooksView(this.books, {super.key});

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.myBookAssets),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
          ),
          child: BooksGridView(
            books: books,
          ),
        ),
      ),
    );
  }
}
