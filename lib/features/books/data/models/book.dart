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
    required this.categoryId,
    required this.coverUrl,
    required this.description,
    required this.fileExtension,
    required this.fileMailUrl,
    required this.genre,
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

  final List<String> authors;
  final String description;
  final String genre;
  final String isbn;
  final String language;
  final double price;
  final String resume;
  final String title;
  final String type;

  @JsonKey(name: 'audio_format')
  final String? audioFormat;

  @JsonKey(name: 'category_id')
  final String categoryId;

  @JsonKey(name: 'cover_url')
  final String coverUrl;

  @JsonKey(name: 'file_extension')
  final String fileExtension;

  @JsonKey(name: 'file_main_url')
  final String fileMailUrl;

  @Id()
  final String id;

  @JsonKey(name: 'published_at')
  final DateTime publishedAt;

  @JsonKey(name: 'publisher_id')
  final String publisherId;

  @JsonKey(name: 'publisher_name')
  final String publisherName;

  @JsonKey(name: 'text_format')
  final String? textFormat;

  String get publicationDate {
    return DateFormat.yMMMd(publicationLanguageEnum.code).format(publishedAt);
  }

  String get publicationLanguage => publicationLanguageEnum.name.capitalize;
  PublicationLanguage get publicationLanguageEnum {
    return PublicationLanguage.values.firstWhereOrNull(
          (languageEnum) => languageEnum.name == language,
        ) ??
        PublicationLanguage.english;
  }

  BookType get typeEnum {
    return BookType.values.firstWhereOrNull(
          (bookTypeEnum) => bookTypeEnum.name == type,
        ) ??
        BookType.text;
  }

  String get typeName => typeEnum.name.capitalize;
}

enum BookGenre {
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
