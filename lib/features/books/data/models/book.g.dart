// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BookModelCollectionReference
    implements
        BookModelQuery,
        FirestoreCollectionReference<BookModel, BookModelQuerySnapshot> {
  factory BookModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$BookModelCollectionReference;

  static BookModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$BookModelFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    BookModel value,
    SetOptions? options,
  ) {
    return {..._$BookModelToJson(value)}..remove('id');
  }

  @override
  CollectionReference<BookModel> get reference;

  @override
  BookModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BookModelDocumentReference> add(BookModel value);
}

class _$BookModelCollectionReference extends _$BookModelQuery
    implements BookModelCollectionReference {
  factory _$BookModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$BookModelCollectionReference._(
      firestore.collection('books').withConverter(
            fromFirestore: BookModelCollectionReference.fromFirestore,
            toFirestore: BookModelCollectionReference.toFirestore,
          ),
    );
  }

  _$BookModelCollectionReference._(
    CollectionReference<BookModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<BookModel> get reference =>
      super.reference as CollectionReference<BookModel>;

  @override
  BookModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return BookModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BookModelDocumentReference> add(BookModel value) {
    return reference.add(value).then((ref) => BookModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BookModelDocumentReference
    extends FirestoreDocumentReference<BookModel, BookModelDocumentSnapshot> {
  factory BookModelDocumentReference(DocumentReference<BookModel> reference) =
      _$BookModelDocumentReference;

  DocumentReference<BookModel> get reference;

  /// A reference to the [BookModelCollectionReference] containing this document.
  BookModelCollectionReference get parent {
    return _$BookModelCollectionReference(reference.firestore);
  }

  late final BookModelEditionCollectionReference editions =
      _$BookModelEditionCollectionReference(
    reference,
  );

  @override
  Stream<BookModelDocumentSnapshot> snapshots();

  @override
  Future<BookModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String description,
    FieldValue descriptionFieldValue,
    String genre,
    FieldValue genreFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String? status,
    FieldValue statusFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
    String? actualEditionId,
    FieldValue actualEditionIdFieldValue,
    String? audioFormat,
    FieldValue audioFormatFieldValue,
    String authors,
    FieldValue authorsFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    String fileExtension,
    FieldValue fileExtensionFieldValue,
    String fileMailUrl,
    FieldValue fileMailUrlFieldValue,
    double price,
    FieldValue priceFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String? textFormat,
    FieldValue textFormatFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String description,
    FieldValue descriptionFieldValue,
    String genre,
    FieldValue genreFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String? status,
    FieldValue statusFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
    String? actualEditionId,
    FieldValue actualEditionIdFieldValue,
    String? audioFormat,
    FieldValue audioFormatFieldValue,
    String authors,
    FieldValue authorsFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    DateTime? createdAt,
    FieldValue createdAtFieldValue,
    String fileExtension,
    FieldValue fileExtensionFieldValue,
    String fileMailUrl,
    FieldValue fileMailUrlFieldValue,
    double price,
    FieldValue priceFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String? textFormat,
    FieldValue textFormatFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$BookModelDocumentReference
    extends FirestoreDocumentReference<BookModel, BookModelDocumentSnapshot>
    implements BookModelDocumentReference {
  _$BookModelDocumentReference(this.reference);

  @override
  final DocumentReference<BookModel> reference;

  /// A reference to the [BookModelCollectionReference] containing this document.
  BookModelCollectionReference get parent {
    return _$BookModelCollectionReference(reference.firestore);
  }

  late final BookModelEditionCollectionReference editions =
      _$BookModelEditionCollectionReference(
    reference,
  );

  @override
  Stream<BookModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(BookModelDocumentSnapshot._);
  }

  @override
  Future<BookModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(BookModelDocumentSnapshot._);
  }

  @override
  Future<BookModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(BookModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? actualEditionId = _sentinel,
    FieldValue? actualEditionIdFieldValue,
    Object? audioFormat = _sentinel,
    FieldValue? audioFormatFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? fileExtension = _sentinel,
    FieldValue? fileExtensionFieldValue,
    Object? fileMailUrl = _sentinel,
    FieldValue? fileMailUrlFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? textFormat = _sentinel,
    FieldValue? textFormatFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      isbn == _sentinel || isbnFieldValue == null,
      "Cannot specify both isbn and isbnFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      actualEditionId == _sentinel || actualEditionIdFieldValue == null,
      "Cannot specify both actualEditionId and actualEditionIdFieldValue",
    );
    assert(
      audioFormat == _sentinel || audioFormatFieldValue == null,
      "Cannot specify both audioFormat and audioFormatFieldValue",
    );
    assert(
      authors == _sentinel || authorsFieldValue == null,
      "Cannot specify both authors and authorsFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      coverUrl == _sentinel || coverUrlFieldValue == null,
      "Cannot specify both coverUrl and coverUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      fileExtension == _sentinel || fileExtensionFieldValue == null,
      "Cannot specify both fileExtension and fileExtensionFieldValue",
    );
    assert(
      fileMailUrl == _sentinel || fileMailUrlFieldValue == null,
      "Cannot specify both fileMailUrl and fileMailUrlFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      published == _sentinel || publishedFieldValue == null,
      "Cannot specify both published and publishedFieldValue",
    );
    assert(
      publishedAt == _sentinel || publishedAtFieldValue == null,
      "Cannot specify both publishedAt and publishedAtFieldValue",
    );
    assert(
      publisherId == _sentinel || publisherIdFieldValue == null,
      "Cannot specify both publisherId and publisherIdFieldValue",
    );
    assert(
      publisherName == _sentinel || publisherNameFieldValue == null,
      "Cannot specify both publisherName and publisherNameFieldValue",
    );
    assert(
      textFormat == _sentinel || textFormatFieldValue == null,
      "Cannot specify both textFormat and textFormatFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$BookModelFieldMap['description']!:
            _$BookModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelFieldMap['description']!: descriptionFieldValue,
      if (genre != _sentinel)
        _$BookModelFieldMap['genre']!:
            _$BookModelPerFieldToJson.genre(genre as String),
      if (genreFieldValue != null)
        _$BookModelFieldMap['genre']!: genreFieldValue,
      if (isbn != _sentinel)
        _$BookModelFieldMap['isbn']!:
            _$BookModelPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null) _$BookModelFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelFieldMap['language']!:
            _$BookModelPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelFieldMap['language']!: languageFieldValue,
      if (resume != _sentinel)
        _$BookModelFieldMap['resume']!:
            _$BookModelPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelFieldMap['resume']!: resumeFieldValue,
      if (status != _sentinel)
        _$BookModelFieldMap['status']!:
            _$BookModelPerFieldToJson.status(status as String?),
      if (statusFieldValue != null)
        _$BookModelFieldMap['status']!: statusFieldValue,
      if (title != _sentinel)
        _$BookModelFieldMap['title']!:
            _$BookModelPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelFieldMap['type']!:
            _$BookModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BookModelFieldMap['type']!: typeFieldValue,
      if (actualEditionId != _sentinel)
        _$BookModelFieldMap['actualEditionId']!: _$BookModelPerFieldToJson
            .actualEditionId(actualEditionId as String?),
      if (actualEditionIdFieldValue != null)
        _$BookModelFieldMap['actualEditionId']!: actualEditionIdFieldValue,
      if (audioFormat != _sentinel)
        _$BookModelFieldMap['audioFormat']!:
            _$BookModelPerFieldToJson.audioFormat(audioFormat as String?),
      if (audioFormatFieldValue != null)
        _$BookModelFieldMap['audioFormat']!: audioFormatFieldValue,
      if (authors != _sentinel)
        _$BookModelFieldMap['authors']!:
            _$BookModelPerFieldToJson.authors(authors as String),
      if (authorsFieldValue != null)
        _$BookModelFieldMap['authors']!: authorsFieldValue,
      if (categoryId != _sentinel)
        _$BookModelFieldMap['categoryId']!:
            _$BookModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$BookModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelFieldMap['coverUrl']!:
            _$BookModelPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelFieldMap['coverUrl']!: coverUrlFieldValue,
      if (createdAt != _sentinel)
        _$BookModelFieldMap['createdAt']!:
            _$BookModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$BookModelFieldMap['createdAt']!: createdAtFieldValue,
      if (fileExtension != _sentinel)
        _$BookModelFieldMap['fileExtension']!:
            _$BookModelPerFieldToJson.fileExtension(fileExtension as String),
      if (fileExtensionFieldValue != null)
        _$BookModelFieldMap['fileExtension']!: fileExtensionFieldValue,
      if (fileMailUrl != _sentinel)
        _$BookModelFieldMap['fileMailUrl']!:
            _$BookModelPerFieldToJson.fileMailUrl(fileMailUrl as String),
      if (fileMailUrlFieldValue != null)
        _$BookModelFieldMap['fileMailUrl']!: fileMailUrlFieldValue,
      if (price != _sentinel)
        _$BookModelFieldMap['price']!:
            _$BookModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelFieldMap['price']!: priceFieldValue,
      if (published != _sentinel)
        _$BookModelFieldMap['published']!:
            _$BookModelPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$BookModelFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$BookModelFieldMap['publishedAt']!:
            _$BookModelPerFieldToJson.publishedAt(publishedAt as DateTime),
      if (publishedAtFieldValue != null)
        _$BookModelFieldMap['publishedAt']!: publishedAtFieldValue,
      if (publisherId != _sentinel)
        _$BookModelFieldMap['publisherId']!:
            _$BookModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$BookModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$BookModelFieldMap['publisherName']!:
            _$BookModelPerFieldToJson.publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$BookModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (textFormat != _sentinel)
        _$BookModelFieldMap['textFormat']!:
            _$BookModelPerFieldToJson.textFormat(textFormat as String?),
      if (textFormatFieldValue != null)
        _$BookModelFieldMap['textFormat']!: textFormatFieldValue,
      if (updatedAt != _sentinel)
        _$BookModelFieldMap['updatedAt']!:
            _$BookModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$BookModelFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? genre = _sentinel,
    FieldValue? genreFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? actualEditionId = _sentinel,
    FieldValue? actualEditionIdFieldValue,
    Object? audioFormat = _sentinel,
    FieldValue? audioFormatFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? fileExtension = _sentinel,
    FieldValue? fileExtensionFieldValue,
    Object? fileMailUrl = _sentinel,
    FieldValue? fileMailUrlFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? textFormat = _sentinel,
    FieldValue? textFormatFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      genre == _sentinel || genreFieldValue == null,
      "Cannot specify both genre and genreFieldValue",
    );
    assert(
      isbn == _sentinel || isbnFieldValue == null,
      "Cannot specify both isbn and isbnFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      actualEditionId == _sentinel || actualEditionIdFieldValue == null,
      "Cannot specify both actualEditionId and actualEditionIdFieldValue",
    );
    assert(
      audioFormat == _sentinel || audioFormatFieldValue == null,
      "Cannot specify both audioFormat and audioFormatFieldValue",
    );
    assert(
      authors == _sentinel || authorsFieldValue == null,
      "Cannot specify both authors and authorsFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      coverUrl == _sentinel || coverUrlFieldValue == null,
      "Cannot specify both coverUrl and coverUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      fileExtension == _sentinel || fileExtensionFieldValue == null,
      "Cannot specify both fileExtension and fileExtensionFieldValue",
    );
    assert(
      fileMailUrl == _sentinel || fileMailUrlFieldValue == null,
      "Cannot specify both fileMailUrl and fileMailUrlFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      published == _sentinel || publishedFieldValue == null,
      "Cannot specify both published and publishedFieldValue",
    );
    assert(
      publishedAt == _sentinel || publishedAtFieldValue == null,
      "Cannot specify both publishedAt and publishedAtFieldValue",
    );
    assert(
      publisherId == _sentinel || publisherIdFieldValue == null,
      "Cannot specify both publisherId and publisherIdFieldValue",
    );
    assert(
      publisherName == _sentinel || publisherNameFieldValue == null,
      "Cannot specify both publisherName and publisherNameFieldValue",
    );
    assert(
      textFormat == _sentinel || textFormatFieldValue == null,
      "Cannot specify both textFormat and textFormatFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$BookModelFieldMap['description']!:
            _$BookModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelFieldMap['description']!: descriptionFieldValue,
      if (genre != _sentinel)
        _$BookModelFieldMap['genre']!:
            _$BookModelPerFieldToJson.genre(genre as String),
      if (genreFieldValue != null)
        _$BookModelFieldMap['genre']!: genreFieldValue,
      if (isbn != _sentinel)
        _$BookModelFieldMap['isbn']!:
            _$BookModelPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null) _$BookModelFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelFieldMap['language']!:
            _$BookModelPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelFieldMap['language']!: languageFieldValue,
      if (resume != _sentinel)
        _$BookModelFieldMap['resume']!:
            _$BookModelPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelFieldMap['resume']!: resumeFieldValue,
      if (status != _sentinel)
        _$BookModelFieldMap['status']!:
            _$BookModelPerFieldToJson.status(status as String?),
      if (statusFieldValue != null)
        _$BookModelFieldMap['status']!: statusFieldValue,
      if (title != _sentinel)
        _$BookModelFieldMap['title']!:
            _$BookModelPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelFieldMap['type']!:
            _$BookModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BookModelFieldMap['type']!: typeFieldValue,
      if (actualEditionId != _sentinel)
        _$BookModelFieldMap['actualEditionId']!: _$BookModelPerFieldToJson
            .actualEditionId(actualEditionId as String?),
      if (actualEditionIdFieldValue != null)
        _$BookModelFieldMap['actualEditionId']!: actualEditionIdFieldValue,
      if (audioFormat != _sentinel)
        _$BookModelFieldMap['audioFormat']!:
            _$BookModelPerFieldToJson.audioFormat(audioFormat as String?),
      if (audioFormatFieldValue != null)
        _$BookModelFieldMap['audioFormat']!: audioFormatFieldValue,
      if (authors != _sentinel)
        _$BookModelFieldMap['authors']!:
            _$BookModelPerFieldToJson.authors(authors as String),
      if (authorsFieldValue != null)
        _$BookModelFieldMap['authors']!: authorsFieldValue,
      if (categoryId != _sentinel)
        _$BookModelFieldMap['categoryId']!:
            _$BookModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$BookModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelFieldMap['coverUrl']!:
            _$BookModelPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelFieldMap['coverUrl']!: coverUrlFieldValue,
      if (createdAt != _sentinel)
        _$BookModelFieldMap['createdAt']!:
            _$BookModelPerFieldToJson.createdAt(createdAt as DateTime?),
      if (createdAtFieldValue != null)
        _$BookModelFieldMap['createdAt']!: createdAtFieldValue,
      if (fileExtension != _sentinel)
        _$BookModelFieldMap['fileExtension']!:
            _$BookModelPerFieldToJson.fileExtension(fileExtension as String),
      if (fileExtensionFieldValue != null)
        _$BookModelFieldMap['fileExtension']!: fileExtensionFieldValue,
      if (fileMailUrl != _sentinel)
        _$BookModelFieldMap['fileMailUrl']!:
            _$BookModelPerFieldToJson.fileMailUrl(fileMailUrl as String),
      if (fileMailUrlFieldValue != null)
        _$BookModelFieldMap['fileMailUrl']!: fileMailUrlFieldValue,
      if (price != _sentinel)
        _$BookModelFieldMap['price']!:
            _$BookModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelFieldMap['price']!: priceFieldValue,
      if (published != _sentinel)
        _$BookModelFieldMap['published']!:
            _$BookModelPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$BookModelFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$BookModelFieldMap['publishedAt']!:
            _$BookModelPerFieldToJson.publishedAt(publishedAt as DateTime),
      if (publishedAtFieldValue != null)
        _$BookModelFieldMap['publishedAt']!: publishedAtFieldValue,
      if (publisherId != _sentinel)
        _$BookModelFieldMap['publisherId']!:
            _$BookModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$BookModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$BookModelFieldMap['publisherName']!:
            _$BookModelPerFieldToJson.publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$BookModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (textFormat != _sentinel)
        _$BookModelFieldMap['textFormat']!:
            _$BookModelPerFieldToJson.textFormat(textFormat as String?),
      if (textFormatFieldValue != null)
        _$BookModelFieldMap['textFormat']!: textFormatFieldValue,
      if (updatedAt != _sentinel)
        _$BookModelFieldMap['updatedAt']!:
            _$BookModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$BookModelFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is BookModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class BookModelQuery
    implements QueryReference<BookModel, BookModelQuerySnapshot> {
  @override
  BookModelQuery limit(int limit);

  @override
  BookModelQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  BookModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereGenre({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereIsbn({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereLanguage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereResume({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereStatus({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereActualEditionId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereAudioFormat({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereAuthors({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereCategoryId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereCoverUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereFileExtension({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereFileMailUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery wherePrice({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery wherePublished({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery wherePublishedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery wherePublisherId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery wherePublisherName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereTextFormat({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  BookModelQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  BookModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByGenre({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByIsbn({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByLanguage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByResume({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByStatus({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByActualEditionId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByAudioFormat({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByAuthors({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByCategoryId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByCoverUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByFileExtension({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByFileMailUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByPrice({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByPublished({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByPublishedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByPublisherId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByPublisherName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByTextFormat({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });

  BookModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  });
}

class _$BookModelQuery extends QueryReference<BookModel, BookModelQuerySnapshot>
    implements BookModelQuery {
  _$BookModelQuery(
    this._collection, {
    required Query<BookModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<BookModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(BookModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<BookModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(BookModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  BookModelQuery limit(int limit) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery limitToLast(int limit) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereGenre({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['genre']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.genre(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.genre(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.genre(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.genre(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.genre(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.genre(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.genre(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.genre(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereIsbn({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['isbn']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.isbn(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.isbn(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.isbn(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.isbn(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.isbn(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.isbn(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.isbn(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.isbn(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereLanguage({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['language']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.language(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.language(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.language(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.language(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.language(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .language(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.language(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.language(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereResume({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['resume']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.resume(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.resume(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.resume(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.resume(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.resume(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.resume(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.resume(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.resume(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereStatus({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['status']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.status(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.status(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.status(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.status(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.status(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .status(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.status(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.status(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.type(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.type(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.type(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.type(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.type(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.type(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.type(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereActualEditionId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['actualEditionId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.actualEditionId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.actualEditionId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.actualEditionId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .actualEditionId(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson
                .actualEditionId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .actualEditionId(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelPerFieldToJson.actualEditionId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelPerFieldToJson.actualEditionId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereAudioFormat({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['audioFormat']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.audioFormat(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.audioFormat(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.audioFormat(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .audioFormat(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.audioFormat(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .audioFormat(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.audioFormat(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.audioFormat(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereAuthors({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['authors']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.authors(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.authors(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.authors(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.authors(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.authors(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .authors(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.authors(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.authors(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereCategoryId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['categoryId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.categoryId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.categoryId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.categoryId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .categoryId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.categoryId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .categoryId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.categoryId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.categoryId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereCoverUrl({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['coverUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.coverUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.coverUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.coverUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.coverUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.coverUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .coverUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.coverUrl(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.coverUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.createdAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.createdAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.createdAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.createdAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereFileExtension({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['fileExtension']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.fileExtension(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.fileExtension(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.fileExtension(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .fileExtension(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.fileExtension(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .fileExtension(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelPerFieldToJson.fileExtension(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.fileExtension(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereFileMailUrl({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['fileMailUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.fileMailUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.fileMailUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.fileMailUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .fileMailUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.fileMailUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .fileMailUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.fileMailUrl(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.fileMailUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery wherePrice({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['price']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.price(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.price(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.price(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.price(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.price(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.price(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.price(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.price(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery wherePublished({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['published']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.published(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.published(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.published(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.published(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.published(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .published(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.published(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.published(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery wherePublishedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['publishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publishedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publishedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.publishedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publishedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.publishedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publishedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.publishedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.publishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery wherePublisherId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['publisherId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publisherId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publisherId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.publisherId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publisherId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.publisherId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publisherId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.publisherId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.publisherId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery wherePublisherName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['publisherName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publisherName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.publisherName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.publisherName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publisherName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.publisherName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .publisherName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelPerFieldToJson.publisherName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.publisherName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereTextFormat({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['textFormat']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.textFormat(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.textFormat(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.textFormat(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .textFormat(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.textFormat(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .textFormat(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.textFormat(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.textFormat(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery whereUpdatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByGenre({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BookModelFieldMap['genre']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByIsbn({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BookModelFieldMap['isbn']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByLanguage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['language']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByResume({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['resume']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['status']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BookModelFieldMap['title']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BookModelFieldMap['type']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByActualEditionId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelFieldMap['actualEditionId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByAudioFormat({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['audioFormat']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByAuthors({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['authors']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByCategoryId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['categoryId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByCoverUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['coverUrl']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByFileExtension({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['fileExtension']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByFileMailUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['fileMailUrl']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$BookModelFieldMap['price']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByPublished({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['published']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['publishedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByPublisherId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['publisherId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByPublisherName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['publisherName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByTextFormat({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['textFormat']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelDocumentSnapshot? startAtDocument,
    BookModelDocumentSnapshot? endAtDocument,
    BookModelDocumentSnapshot? endBeforeDocument,
    BookModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelFieldMap['updatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BookModelDocumentSnapshot extends FirestoreDocumentSnapshot<BookModel> {
  BookModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<BookModel> snapshot;

  @override
  BookModelDocumentReference get reference {
    return BookModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final BookModel? data;
}

class BookModelQuerySnapshot
    extends FirestoreQuerySnapshot<BookModel, BookModelQueryDocumentSnapshot> {
  BookModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory BookModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<BookModel> snapshot,
  ) {
    final docs = snapshot.docs.map(BookModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        BookModelDocumentSnapshot._,
      );
    }).toList();

    return BookModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<BookModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    BookModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<BookModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<BookModel> snapshot;

  @override
  final List<BookModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BookModelDocumentSnapshot>> docChanges;
}

class BookModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<BookModel>
    implements BookModelDocumentSnapshot {
  BookModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<BookModel> snapshot;

  @override
  final BookModel data;

  @override
  BookModelDocumentReference get reference {
    return BookModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BookModelEditionCollectionReference
    implements
        BookModelEditionQuery,
        FirestoreCollectionReference<BookModelEdition,
            BookModelEditionQuerySnapshot> {
  factory BookModelEditionCollectionReference(
    DocumentReference<BookModel> parent,
  ) = _$BookModelEditionCollectionReference;

  static BookModelEdition fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$BookModelEditionFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    BookModelEdition value,
    SetOptions? options,
  ) {
    return {..._$BookModelEditionToJson(value)}..remove('id');
  }

  @override
  CollectionReference<BookModelEdition> get reference;

  /// A reference to the containing [BookModelDocumentReference] if this is a subcollection.
  BookModelDocumentReference get parent;

  @override
  BookModelEditionDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BookModelEditionDocumentReference> add(BookModelEdition value);
}

class _$BookModelEditionCollectionReference extends _$BookModelEditionQuery
    implements BookModelEditionCollectionReference {
  factory _$BookModelEditionCollectionReference(
    DocumentReference<BookModel> parent,
  ) {
    return _$BookModelEditionCollectionReference._(
      BookModelDocumentReference(parent),
      parent.collection('editions').withConverter(
            fromFirestore: BookModelEditionCollectionReference.fromFirestore,
            toFirestore: BookModelEditionCollectionReference.toFirestore,
          ),
    );
  }

  _$BookModelEditionCollectionReference._(
    this.parent,
    CollectionReference<BookModelEdition> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final BookModelDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<BookModelEdition> get reference =>
      super.reference as CollectionReference<BookModelEdition>;

  @override
  BookModelEditionDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return BookModelEditionDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BookModelEditionDocumentReference> add(BookModelEdition value) {
    return reference
        .add(value)
        .then((ref) => BookModelEditionDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookModelEditionCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BookModelEditionDocumentReference
    extends FirestoreDocumentReference<BookModelEdition,
        BookModelEditionDocumentSnapshot> {
  factory BookModelEditionDocumentReference(
          DocumentReference<BookModelEdition> reference) =
      _$BookModelEditionDocumentReference;

  DocumentReference<BookModelEdition> get reference;

  /// A reference to the [BookModelEditionCollectionReference] containing this document.
  BookModelEditionCollectionReference get parent {
    return _$BookModelEditionCollectionReference(
      reference.parent.parent!.withConverter<BookModel>(
        fromFirestore: BookModelCollectionReference.fromFirestore,
        toFirestore: BookModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<BookModelEditionDocumentSnapshot> snapshots();

  @override
  Future<BookModelEditionDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String description,
    FieldValue descriptionFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
    String authors,
    FieldValue authorsFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    String fileExtension,
    FieldValue fileExtensionFieldValue,
    String fileMailUrl,
    FieldValue fileMailUrlFieldValue,
    double price,
    FieldValue priceFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String description,
    FieldValue descriptionFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
    String authors,
    FieldValue authorsFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    String fileExtension,
    FieldValue fileExtensionFieldValue,
    String fileMailUrl,
    FieldValue fileMailUrlFieldValue,
    double price,
    FieldValue priceFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
  });
}

class _$BookModelEditionDocumentReference extends FirestoreDocumentReference<
        BookModelEdition, BookModelEditionDocumentSnapshot>
    implements BookModelEditionDocumentReference {
  _$BookModelEditionDocumentReference(this.reference);

  @override
  final DocumentReference<BookModelEdition> reference;

  /// A reference to the [BookModelEditionCollectionReference] containing this document.
  BookModelEditionCollectionReference get parent {
    return _$BookModelEditionCollectionReference(
      reference.parent.parent!.withConverter<BookModel>(
        fromFirestore: BookModelCollectionReference.fromFirestore,
        toFirestore: BookModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<BookModelEditionDocumentSnapshot> snapshots() {
    return reference.snapshots().map(BookModelEditionDocumentSnapshot._);
  }

  @override
  Future<BookModelEditionDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(BookModelEditionDocumentSnapshot._);
  }

  @override
  Future<BookModelEditionDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(BookModelEditionDocumentSnapshot._);
  }

  Future<void> update({
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? fileExtension = _sentinel,
    FieldValue? fileExtensionFieldValue,
    Object? fileMailUrl = _sentinel,
    FieldValue? fileMailUrlFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
  }) async {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      isbn == _sentinel || isbnFieldValue == null,
      "Cannot specify both isbn and isbnFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      authors == _sentinel || authorsFieldValue == null,
      "Cannot specify both authors and authorsFieldValue",
    );
    assert(
      coverUrl == _sentinel || coverUrlFieldValue == null,
      "Cannot specify both coverUrl and coverUrlFieldValue",
    );
    assert(
      fileExtension == _sentinel || fileExtensionFieldValue == null,
      "Cannot specify both fileExtension and fileExtensionFieldValue",
    );
    assert(
      fileMailUrl == _sentinel || fileMailUrlFieldValue == null,
      "Cannot specify both fileMailUrl and fileMailUrlFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      published == _sentinel || publishedFieldValue == null,
      "Cannot specify both published and publishedFieldValue",
    );
    assert(
      publishedAt == _sentinel || publishedAtFieldValue == null,
      "Cannot specify both publishedAt and publishedAtFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$BookModelEditionFieldMap['description']!:
            _$BookModelEditionPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelEditionFieldMap['description']!: descriptionFieldValue,
      if (isbn != _sentinel)
        _$BookModelEditionFieldMap['isbn']!:
            _$BookModelEditionPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null)
        _$BookModelEditionFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelEditionFieldMap['language']!:
            _$BookModelEditionPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelEditionFieldMap['language']!: languageFieldValue,
      if (resume != _sentinel)
        _$BookModelEditionFieldMap['resume']!:
            _$BookModelEditionPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelEditionFieldMap['resume']!: resumeFieldValue,
      if (title != _sentinel)
        _$BookModelEditionFieldMap['title']!:
            _$BookModelEditionPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelEditionFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelEditionFieldMap['type']!:
            _$BookModelEditionPerFieldToJson.type(type as String),
      if (typeFieldValue != null)
        _$BookModelEditionFieldMap['type']!: typeFieldValue,
      if (authors != _sentinel)
        _$BookModelEditionFieldMap['authors']!:
            _$BookModelEditionPerFieldToJson.authors(authors as String),
      if (authorsFieldValue != null)
        _$BookModelEditionFieldMap['authors']!: authorsFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelEditionFieldMap['coverUrl']!:
            _$BookModelEditionPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelEditionFieldMap['coverUrl']!: coverUrlFieldValue,
      if (fileExtension != _sentinel)
        _$BookModelEditionFieldMap['fileExtension']!:
            _$BookModelEditionPerFieldToJson
                .fileExtension(fileExtension as String),
      if (fileExtensionFieldValue != null)
        _$BookModelEditionFieldMap['fileExtension']!: fileExtensionFieldValue,
      if (fileMailUrl != _sentinel)
        _$BookModelEditionFieldMap['fileMailUrl']!:
            _$BookModelEditionPerFieldToJson.fileMailUrl(fileMailUrl as String),
      if (fileMailUrlFieldValue != null)
        _$BookModelEditionFieldMap['fileMailUrl']!: fileMailUrlFieldValue,
      if (price != _sentinel)
        _$BookModelEditionFieldMap['price']!:
            _$BookModelEditionPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelEditionFieldMap['price']!: priceFieldValue,
      if (published != _sentinel)
        _$BookModelEditionFieldMap['published']!:
            _$BookModelEditionPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$BookModelEditionFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$BookModelEditionFieldMap['publishedAt']!:
            _$BookModelEditionPerFieldToJson
                .publishedAt(publishedAt as DateTime),
      if (publishedAtFieldValue != null)
        _$BookModelEditionFieldMap['publishedAt']!: publishedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? fileExtension = _sentinel,
    FieldValue? fileExtensionFieldValue,
    Object? fileMailUrl = _sentinel,
    FieldValue? fileMailUrlFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
  }) {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      isbn == _sentinel || isbnFieldValue == null,
      "Cannot specify both isbn and isbnFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      authors == _sentinel || authorsFieldValue == null,
      "Cannot specify both authors and authorsFieldValue",
    );
    assert(
      coverUrl == _sentinel || coverUrlFieldValue == null,
      "Cannot specify both coverUrl and coverUrlFieldValue",
    );
    assert(
      fileExtension == _sentinel || fileExtensionFieldValue == null,
      "Cannot specify both fileExtension and fileExtensionFieldValue",
    );
    assert(
      fileMailUrl == _sentinel || fileMailUrlFieldValue == null,
      "Cannot specify both fileMailUrl and fileMailUrlFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      published == _sentinel || publishedFieldValue == null,
      "Cannot specify both published and publishedFieldValue",
    );
    assert(
      publishedAt == _sentinel || publishedAtFieldValue == null,
      "Cannot specify both publishedAt and publishedAtFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$BookModelEditionFieldMap['description']!:
            _$BookModelEditionPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelEditionFieldMap['description']!: descriptionFieldValue,
      if (isbn != _sentinel)
        _$BookModelEditionFieldMap['isbn']!:
            _$BookModelEditionPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null)
        _$BookModelEditionFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelEditionFieldMap['language']!:
            _$BookModelEditionPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelEditionFieldMap['language']!: languageFieldValue,
      if (resume != _sentinel)
        _$BookModelEditionFieldMap['resume']!:
            _$BookModelEditionPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelEditionFieldMap['resume']!: resumeFieldValue,
      if (title != _sentinel)
        _$BookModelEditionFieldMap['title']!:
            _$BookModelEditionPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelEditionFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelEditionFieldMap['type']!:
            _$BookModelEditionPerFieldToJson.type(type as String),
      if (typeFieldValue != null)
        _$BookModelEditionFieldMap['type']!: typeFieldValue,
      if (authors != _sentinel)
        _$BookModelEditionFieldMap['authors']!:
            _$BookModelEditionPerFieldToJson.authors(authors as String),
      if (authorsFieldValue != null)
        _$BookModelEditionFieldMap['authors']!: authorsFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelEditionFieldMap['coverUrl']!:
            _$BookModelEditionPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelEditionFieldMap['coverUrl']!: coverUrlFieldValue,
      if (fileExtension != _sentinel)
        _$BookModelEditionFieldMap['fileExtension']!:
            _$BookModelEditionPerFieldToJson
                .fileExtension(fileExtension as String),
      if (fileExtensionFieldValue != null)
        _$BookModelEditionFieldMap['fileExtension']!: fileExtensionFieldValue,
      if (fileMailUrl != _sentinel)
        _$BookModelEditionFieldMap['fileMailUrl']!:
            _$BookModelEditionPerFieldToJson.fileMailUrl(fileMailUrl as String),
      if (fileMailUrlFieldValue != null)
        _$BookModelEditionFieldMap['fileMailUrl']!: fileMailUrlFieldValue,
      if (price != _sentinel)
        _$BookModelEditionFieldMap['price']!:
            _$BookModelEditionPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelEditionFieldMap['price']!: priceFieldValue,
      if (published != _sentinel)
        _$BookModelEditionFieldMap['published']!:
            _$BookModelEditionPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$BookModelEditionFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$BookModelEditionFieldMap['publishedAt']!:
            _$BookModelEditionPerFieldToJson
                .publishedAt(publishedAt as DateTime),
      if (publishedAtFieldValue != null)
        _$BookModelEditionFieldMap['publishedAt']!: publishedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is BookModelEditionDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class BookModelEditionQuery
    implements QueryReference<BookModelEdition, BookModelEditionQuerySnapshot> {
  @override
  BookModelEditionQuery limit(int limit);

  @override
  BookModelEditionQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  BookModelEditionQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereIsbn({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereLanguage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereResume({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereAuthors({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereCoverUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereFileExtension({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery whereFileMailUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery wherePrice({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery wherePublished({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  BookModelEditionQuery wherePublishedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  BookModelEditionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByIsbn({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByLanguage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByResume({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByAuthors({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByCoverUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByFileExtension({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByFileMailUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByPrice({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByPublished({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });

  BookModelEditionQuery orderByPublishedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  });
}

class _$BookModelEditionQuery
    extends QueryReference<BookModelEdition, BookModelEditionQuerySnapshot>
    implements BookModelEditionQuery {
  _$BookModelEditionQuery(
    this._collection, {
    required Query<BookModelEdition> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<BookModelEditionQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(BookModelEditionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<BookModelEditionQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(BookModelEditionQuerySnapshot._fromQuerySnapshot);
  }

  @override
  BookModelEditionQuery limit(int limit) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery limitToLast(int limit) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson
                .description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereIsbn({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['isbn']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.isbn(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.isbn(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.isbn(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .isbn(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.isbn(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .isbn(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelEditionPerFieldToJson.isbn(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.isbn(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereLanguage({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['language']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.language(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.language(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.language(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .language(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.language(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .language(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelEditionPerFieldToJson.language(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.language(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereResume({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['resume']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.resume(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.resume(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.resume(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .resume(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.resume(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .resume(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelEditionPerFieldToJson.resume(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.resume(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelEditionPerFieldToJson.title(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.title(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.type(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.type(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.type(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .type(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.type(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .type(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelEditionPerFieldToJson.type(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.type(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereAuthors({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['authors']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.authors(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.authors(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.authors(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .authors(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.authors(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .authors(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelEditionPerFieldToJson.authors(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.authors(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereCoverUrl({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['coverUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.coverUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.coverUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.coverUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .coverUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.coverUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .coverUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelEditionPerFieldToJson.coverUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.coverUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereFileExtension({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['fileExtension']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .fileExtension(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.fileExtension(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.fileExtension(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery whereFileMailUrl({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['fileMailUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.fileMailUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .fileMailUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.fileMailUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .fileMailUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson
                .fileMailUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .fileMailUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.fileMailUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.fileMailUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery wherePrice({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['price']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.price(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.price(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.price(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .price(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.price(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .price(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelEditionPerFieldToJson.price(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$BookModelEditionPerFieldToJson.price(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery wherePublished({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['published']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.published(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson.published(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson.published(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .published(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson.published(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .published(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn:
            whereIn?.map((e) => _$BookModelEditionPerFieldToJson.published(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.published(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery wherePublishedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelEditionFieldMap['publishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelEditionPerFieldToJson
                .publishedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.publishedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$BookModelEditionPerFieldToJson.publishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['description']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByIsbn({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelEditionFieldMap['isbn']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByLanguage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['language']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByResume({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelEditionFieldMap['resume']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelEditionFieldMap['title']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelEditionFieldMap['type']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByAuthors({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['authors']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByCoverUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['coverUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByFileExtension({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['fileExtension']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByFileMailUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['fileMailUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$BookModelEditionFieldMap['price']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByPublished({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['published']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  BookModelEditionQuery orderByPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BookModelEditionDocumentSnapshot? startAtDocument,
    BookModelEditionDocumentSnapshot? endAtDocument,
    BookModelEditionDocumentSnapshot? endBeforeDocument,
    BookModelEditionDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$BookModelEditionFieldMap['publishedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$BookModelEditionQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$BookModelEditionQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BookModelEditionDocumentSnapshot
    extends FirestoreDocumentSnapshot<BookModelEdition> {
  BookModelEditionDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<BookModelEdition> snapshot;

  @override
  BookModelEditionDocumentReference get reference {
    return BookModelEditionDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final BookModelEdition? data;
}

class BookModelEditionQuerySnapshot extends FirestoreQuerySnapshot<
    BookModelEdition, BookModelEditionQueryDocumentSnapshot> {
  BookModelEditionQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory BookModelEditionQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<BookModelEdition> snapshot,
  ) {
    final docs =
        snapshot.docs.map(BookModelEditionQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        BookModelEditionDocumentSnapshot._,
      );
    }).toList();

    return BookModelEditionQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<BookModelEditionDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    BookModelEditionDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<BookModelEditionDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<BookModelEdition> snapshot;

  @override
  final List<BookModelEditionQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BookModelEditionDocumentSnapshot>>
      docChanges;
}

class BookModelEditionQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<BookModelEdition>
    implements BookModelEditionDocumentSnapshot {
  BookModelEditionQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<BookModelEdition> snapshot;

  @override
  final BookModelEdition data;

  @override
  BookModelEditionDocumentReference get reference {
    return BookModelEditionDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      authors: listOrStringToString(json['authors']),
      categoryId: json['category_id'] as String,
      coverUrl: json['cover_url'] as String,
      description: json['description'] as String,
      fileExtension: json['file_extension'] as String,
      fileMailUrl: json['file_main_url'] as String,
      genre: json['genre'] as String,
      id: json['id'] as String,
      isbn: json['isbn'] as String,
      language: json['language'] as String,
      price: numberToInt(json['price']),
      publishedAt: const FirestoreDateTimeConverter()
          .fromJson(json['published_at'] as Timestamp),
      published: json['published'] as bool? ?? false,
      publisherId: intToString(json['publisher_id']),
      publisherName: json['publisher_name'] as String,
      resume: json['resume'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      actualEditionId: json['actual_edition_id'] as String?,
      audioFormat: json['audio_format'] as String?,
      createdAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['created_at'], const FirestoreDateTimeConverter().fromJson),
      status: json['status'] as String?,
      textFormat: json['text_format'] as String?,
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updated_at'], const FirestoreDateTimeConverter().fromJson),
    );

const _$BookModelFieldMap = <String, String>{
  'description': 'description',
  'genre': 'genre',
  'isbn': 'isbn',
  'language': 'language',
  'resume': 'resume',
  'status': 'status',
  'title': 'title',
  'type': 'type',
  'actualEditionId': 'actual_edition_id',
  'audioFormat': 'audio_format',
  'authors': 'authors',
  'categoryId': 'category_id',
  'coverUrl': 'cover_url',
  'createdAt': 'created_at',
  'fileExtension': 'file_extension',
  'fileMailUrl': 'file_main_url',
  'id': 'id',
  'price': 'price',
  'published': 'published',
  'publishedAt': 'published_at',
  'publisherId': 'publisher_id',
  'publisherName': 'publisher_name',
  'textFormat': 'text_format',
  'updatedAt': 'updated_at',
};

// ignore: unused_element
abstract class _$BookModelPerFieldToJson {
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? genre(String instance) => instance;
  // ignore: unused_element
  static Object? isbn(String instance) => instance;
  // ignore: unused_element
  static Object? language(String instance) => instance;
  // ignore: unused_element
  static Object? resume(String instance) => instance;
  // ignore: unused_element
  static Object? status(String? instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
  // ignore: unused_element
  static Object? actualEditionId(String? instance) => instance;
  // ignore: unused_element
  static Object? audioFormat(String? instance) => instance;
  // ignore: unused_element
  static Object? authors(String instance) => instance;
  // ignore: unused_element
  static Object? categoryId(String instance) => instance;
  // ignore: unused_element
  static Object? coverUrl(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? fileExtension(String instance) => instance;
  // ignore: unused_element
  static Object? fileMailUrl(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
  // ignore: unused_element
  static Object? published(bool instance) => instance;
  // ignore: unused_element
  static Object? publishedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? publisherId(String instance) => instance;
  // ignore: unused_element
  static Object? publisherName(String instance) => instance;
  // ignore: unused_element
  static Object? textFormat(String? instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
}

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'description': instance.description,
      'genre': instance.genre,
      'isbn': instance.isbn,
      'language': instance.language,
      'resume': instance.resume,
      'status': instance.status,
      'title': instance.title,
      'type': instance.type,
      'actual_edition_id': instance.actualEditionId,
      'audio_format': instance.audioFormat,
      'authors': instance.authors,
      'category_id': instance.categoryId,
      'cover_url': instance.coverUrl,
      'created_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.createdAt, const FirestoreDateTimeConverter().toJson),
      'file_extension': instance.fileExtension,
      'file_main_url': instance.fileMailUrl,
      'id': instance.id,
      'price': instance.price,
      'published': instance.published,
      'published_at':
          const FirestoreDateTimeConverter().toJson(instance.publishedAt),
      'publisher_id': instance.publisherId,
      'publisher_name': instance.publisherName,
      'text_format': instance.textFormat,
      'updated_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const FirestoreDateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

BookModelEdition _$BookModelEditionFromJson(Map<String, dynamic> json) =>
    BookModelEdition(
      authors: listOrStringToString(json['authors']),
      coverUrl: json['cover_url'] as String,
      description: json['description'] as String,
      fileExtension: json['file_extension'] as String,
      fileMailUrl: json['file_main_url'] as String,
      id: json['id'] as String,
      isbn: json['isbn'] as String,
      language: json['language'] as String,
      price: numberToInt(json['price']),
      published: json['published'] as bool? ?? false,
      publishedAt: const FirestoreDateTimeConverter()
          .fromJson(json['published_at'] as Timestamp),
      resume: json['resume'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
    );

const _$BookModelEditionFieldMap = <String, String>{
  'description': 'description',
  'isbn': 'isbn',
  'language': 'language',
  'resume': 'resume',
  'title': 'title',
  'type': 'type',
  'authors': 'authors',
  'coverUrl': 'cover_url',
  'fileExtension': 'file_extension',
  'fileMailUrl': 'file_main_url',
  'id': 'id',
  'price': 'price',
  'published': 'published',
  'publishedAt': 'published_at',
};

// ignore: unused_element
abstract class _$BookModelEditionPerFieldToJson {
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? isbn(String instance) => instance;
  // ignore: unused_element
  static Object? language(String instance) => instance;
  // ignore: unused_element
  static Object? resume(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
  // ignore: unused_element
  static Object? authors(String instance) => instance;
  // ignore: unused_element
  static Object? coverUrl(String instance) => instance;
  // ignore: unused_element
  static Object? fileExtension(String instance) => instance;
  // ignore: unused_element
  static Object? fileMailUrl(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
  // ignore: unused_element
  static Object? published(bool instance) => instance;
  // ignore: unused_element
  static Object? publishedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$BookModelEditionToJson(BookModelEdition instance) =>
    <String, dynamic>{
      'description': instance.description,
      'isbn': instance.isbn,
      'language': instance.language,
      'resume': instance.resume,
      'title': instance.title,
      'type': instance.type,
      'authors': instance.authors,
      'cover_url': instance.coverUrl,
      'file_extension': instance.fileExtension,
      'file_main_url': instance.fileMailUrl,
      'id': instance.id,
      'price': instance.price,
      'published': instance.published,
      'published_at':
          const FirestoreDateTimeConverter().toJson(instance.publishedAt),
    };
