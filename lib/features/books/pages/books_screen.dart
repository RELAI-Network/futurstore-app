import 'package:flutter/material.dart';
import 'package:futurstore/features/books/models/book.dart';

import '../widgets/book_card.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});
  static const String label = 'Books';

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <BookModel>[].map((a) {
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
