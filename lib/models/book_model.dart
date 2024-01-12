class BookModel {
  String? isbn;
  BookType? bookType;
  String? coverUrl;
  String? title;
  String? description;
  BookGenre? genre;
  List<String>? authors;
  int? publicationDate;
  PublicationLanguage? publicationLanguage;
  double? price;

  BookModel({
    this.isbn,
    this.bookType,
    this.coverUrl,
    this.title,
    this.description,
    this.genre,
    this.authors,
    this.publicationDate,
    this.publicationLanguage,
    this.price,
  });
}

enum BookGenre {
  Roman,
  Essay,
  Cartoon,
  Manga,
  Literature,
  History,
  Science,
  Biography,
  Others
}
enum PublicationLanguage {
  English,
  French,
  Spanish,
  Arabic,
  Russian,
  Chinese,
  Italian
}

enum BookType {
  Text,
  Audio
}

