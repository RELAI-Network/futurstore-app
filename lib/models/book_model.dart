class BookModel {
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
}
