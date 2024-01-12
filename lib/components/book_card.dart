import 'package:flutter/material.dart';
import '../models/book_model.dart';
import '../screens/book_detail_screen.dart';

class BookCard extends StatelessWidget {
  final BookModel data;
  const BookCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailScreen(data),
            ),
          );
        },
        child: Card(
          color: Colors.greenAccent,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(data.title!), // Assuming 'title' is a field in your AppModel
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                    data.price.toString()!,
                  style: TextStyle(),
                  maxLines: 1,
                ), // Assuming 'size' is a field in your AppModel
              ),
            ],
          ),
        )
    );
  }
}


