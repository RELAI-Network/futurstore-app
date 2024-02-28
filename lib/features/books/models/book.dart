import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:dart_utils/dart_utils.dart';
import 'package:futurstore/core/utils/config/firestore_serializable.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@Collection<BookModel>(BookModel.collection)
final booksReference = BookModelCollectionReference();

@firestoreSerializable
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'books';

  final String? audioFormat;
  final List<String> authors;
  final String coverUrl;
  final String description;
  final String gender;
  @Id()
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

  PublicationLanguage get publicationLanguageEnum {
    return PublicationLanguage.values.firstWhereOrNull(
          (languageEnum) => languageEnum.name == language,
        ) ??
        PublicationLanguage.english;
  }

  String get publicationLanguage => publicationLanguageEnum.name.capitalize;

  BookType get typeEnum {
    return BookType.values.firstWhereOrNull(
          (bookTypeEnum) => bookTypeEnum.name == type,
        ) ??
        BookType.text;
  }

  String get typeName => typeEnum.name.capitalize;

  String get publicationDate {
    return DateFormat.yMMMd(publicationLanguageEnum.code).format(publishedAt);
  }
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
  english('en'),
  french('fr'),
  spanish('es'),
  arabic('ar'),
  russian('ru'),
  chinese('ch'),
  italian('it');

  const PublicationLanguage(this.code);
  final String code;
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
