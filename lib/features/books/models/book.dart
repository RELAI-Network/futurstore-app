class BookModel {
  BookModel({
    required this.authors,
    required this.coverUrl,
    required this.description,
    required this.gender,
    required this.id,
    required this.isbn,
    required this.language,
    required this.price,
    required this.publishedAt,
    required this.publisherId,
    required this.publisherName,
    required this.resume,
    required this.title,
    required this.type,
    this.audioFormat,
    this.textFormat,
  });

  static const String collection = 'books';

  final String? audioFormat;
  final List<String> authors;
  final String coverUrl;
  final String description;
  final String gender;
  final String id;
  final String isbn;
  final String language;
  final double price;
  final DateTime publishedAt;
  final String publisherId;
  final String publisherName;
  final String resume;
  final String? textFormat;
  final String title;
  final String type;
}

enum BookGender {
  roman,
  essay,
  cartoon,
  manga,
  literature,
  history,
  science,
  biography,
  others;
}

enum PublicationLanguage {
  english,
  french,
  spanish,
  arabic,
  russian,
  chinese,
  italian;
}

enum BookType {
  text,
  audio;
}

enum TextBookFormatType {
  pdf,
  epub;
}

enum TextAudioFormatType {
  mp3,
  mp4,
  wav,
  ogg,
  flac;
}
