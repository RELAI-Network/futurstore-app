import 'package:flutter/material.dart';
import '../models/book_model.dart';

class BookDetailScreen extends StatefulWidget {
  static const String id = "bookdetail";
  final BookModel data;

  const BookDetailScreen(this.data);

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: FlutterLogo(size: 40,),
                title: Text(widget.data.title!),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Get'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Edition date: ${widget.data.publicationDate!}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.data.description!),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Book Type: ${widget.data.bookType.toString()!}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Language : ${widget.data.publicationLanguage.toString()!}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Price: ${widget.data.price!}'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

