import 'package:flutter/material.dart';
import 'package:futurstore/features/books/data/models/book.dart';
import 'package:futurstore/features/books/widgets/book_card.dart';

class BooksGridView extends StatelessWidget {
  const BooksGridView({
    required this.books,
    super.key,
  });

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        children: books.map((a) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: BookCard(
              data: a,
            ),
          );
        }).toList(),
      ),
    );
  }
}
