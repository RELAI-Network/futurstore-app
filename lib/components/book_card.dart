import 'package:flutter/material.dart';

import '../models/book_model.dart';
import '../screens/book_detail_screen.dart';

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
                data.title!,
              ), // Assuming 'title' is a field in your AppModel
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                data.price.toString(),
                style: const TextStyle(),
                maxLines: 1,
              ), // Assuming 'size' is a field in your AppModel
            ),
          ],
        ),
      ),
    );
  }
}
