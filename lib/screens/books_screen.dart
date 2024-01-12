import 'package:flutter/material.dart';
import '../models/book_model.dart';
import '../utils/data.dart';
import '../components/book_card.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});
  static const String label = "Books";

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {

  List<BookModel> books = testBooksList;

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 3,
      children: books.map((a) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: BookCard(data: a,)
        );
      }).toList(),
    );
  }
}
