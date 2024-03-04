import 'package:flutter/material.dart';
import 'package:futurstore/features/books/data/models/book.dart';

import '../widgets/book_card.dart';

class BooksView extends StatefulWidget {
  const BooksView({required this.books, super.key});

  final List<BookModel> books;

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: widget.books.map((a) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: BookCard(
            data: a,
          ),
        );
      }).toList(),
    );
  }
}
