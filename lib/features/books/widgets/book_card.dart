import 'package:flutter/material.dart';

import '../data/models/book.dart';
import '../pages/book_detail_screen.dart';

class BookCard extends StatelessWidget {
  const BookCard({required this.data, super.key});

  final BookModel data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute<Object>(
            builder: (context) => BookDetailScreen(data),
          ),
        );
      },
      child: Card(
        color: Colors.greenAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                data.title,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                data.price.toString(),
                style: const TextStyle(),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
