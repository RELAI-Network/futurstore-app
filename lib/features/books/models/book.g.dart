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
    String? audioFormat,
    FieldValue audioFormatFieldValue,
    List<String> authors,
    FieldValue authorsFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String gender,
    FieldValue genderFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    double price,
    FieldValue priceFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String? textFormat,
    FieldValue textFormatFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? audioFormat,
    FieldValue audioFormatFieldValue,
    List<String> authors,
    FieldValue authorsFieldValue,
    String coverUrl,
    FieldValue coverUrlFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String gender,
    FieldValue genderFieldValue,
    String isbn,
    FieldValue isbnFieldValue,
    String language,
    FieldValue languageFieldValue,
    double price,
    FieldValue priceFieldValue,
    DateTime publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String resume,
    FieldValue resumeFieldValue,
    String? textFormat,
    FieldValue textFormatFieldValue,
    String title,
    FieldValue titleFieldValue,
    String type,
    FieldValue typeFieldValue,
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
    Object? audioFormat = _sentinel,
    FieldValue? audioFormatFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? gender = _sentinel,
    FieldValue? genderFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? textFormat = _sentinel,
    FieldValue? textFormatFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
  }) async {
    assert(
      audioFormat == _sentinel || audioFormatFieldValue == null,
      "Cannot specify both audioFormat and audioFormatFieldValue",
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
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      gender == _sentinel || genderFieldValue == null,
      "Cannot specify both gender and genderFieldValue",
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
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
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
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      textFormat == _sentinel || textFormatFieldValue == null,
      "Cannot specify both textFormat and textFormatFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    final json = {
      if (audioFormat != _sentinel)
        _$BookModelFieldMap['audioFormat']!:
            _$BookModelPerFieldToJson.audioFormat(audioFormat as String?),
      if (audioFormatFieldValue != null)
        _$BookModelFieldMap['audioFormat']!: audioFormatFieldValue,
      if (authors != _sentinel)
        _$BookModelFieldMap['authors']!:
            _$BookModelPerFieldToJson.authors(authors as List<String>),
      if (authorsFieldValue != null)
        _$BookModelFieldMap['authors']!: authorsFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelFieldMap['coverUrl']!:
            _$BookModelPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelFieldMap['coverUrl']!: coverUrlFieldValue,
      if (description != _sentinel)
        _$BookModelFieldMap['description']!:
            _$BookModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelFieldMap['description']!: descriptionFieldValue,
      if (gender != _sentinel)
        _$BookModelFieldMap['gender']!:
            _$BookModelPerFieldToJson.gender(gender as String),
      if (genderFieldValue != null)
        _$BookModelFieldMap['gender']!: genderFieldValue,
      if (isbn != _sentinel)
        _$BookModelFieldMap['isbn']!:
            _$BookModelPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null) _$BookModelFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelFieldMap['language']!:
            _$BookModelPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelFieldMap['language']!: languageFieldValue,
      if (price != _sentinel)
        _$BookModelFieldMap['price']!:
            _$BookModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelFieldMap['price']!: priceFieldValue,
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
      if (resume != _sentinel)
        _$BookModelFieldMap['resume']!:
            _$BookModelPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelFieldMap['resume']!: resumeFieldValue,
      if (textFormat != _sentinel)
        _$BookModelFieldMap['textFormat']!:
            _$BookModelPerFieldToJson.textFormat(textFormat as String?),
      if (textFormatFieldValue != null)
        _$BookModelFieldMap['textFormat']!: textFormatFieldValue,
      if (title != _sentinel)
        _$BookModelFieldMap['title']!:
            _$BookModelPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelFieldMap['type']!:
            _$BookModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BookModelFieldMap['type']!: typeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? audioFormat = _sentinel,
    FieldValue? audioFormatFieldValue,
    Object? authors = _sentinel,
    FieldValue? authorsFieldValue,
    Object? coverUrl = _sentinel,
    FieldValue? coverUrlFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? gender = _sentinel,
    FieldValue? genderFieldValue,
    Object? isbn = _sentinel,
    FieldValue? isbnFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? resume = _sentinel,
    FieldValue? resumeFieldValue,
    Object? textFormat = _sentinel,
    FieldValue? textFormatFieldValue,
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
  }) {
    assert(
      audioFormat == _sentinel || audioFormatFieldValue == null,
      "Cannot specify both audioFormat and audioFormatFieldValue",
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
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      gender == _sentinel || genderFieldValue == null,
      "Cannot specify both gender and genderFieldValue",
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
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
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
      resume == _sentinel || resumeFieldValue == null,
      "Cannot specify both resume and resumeFieldValue",
    );
    assert(
      textFormat == _sentinel || textFormatFieldValue == null,
      "Cannot specify both textFormat and textFormatFieldValue",
    );
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    final json = {
      if (audioFormat != _sentinel)
        _$BookModelFieldMap['audioFormat']!:
            _$BookModelPerFieldToJson.audioFormat(audioFormat as String?),
      if (audioFormatFieldValue != null)
        _$BookModelFieldMap['audioFormat']!: audioFormatFieldValue,
      if (authors != _sentinel)
        _$BookModelFieldMap['authors']!:
            _$BookModelPerFieldToJson.authors(authors as List<String>),
      if (authorsFieldValue != null)
        _$BookModelFieldMap['authors']!: authorsFieldValue,
      if (coverUrl != _sentinel)
        _$BookModelFieldMap['coverUrl']!:
            _$BookModelPerFieldToJson.coverUrl(coverUrl as String),
      if (coverUrlFieldValue != null)
        _$BookModelFieldMap['coverUrl']!: coverUrlFieldValue,
      if (description != _sentinel)
        _$BookModelFieldMap['description']!:
            _$BookModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$BookModelFieldMap['description']!: descriptionFieldValue,
      if (gender != _sentinel)
        _$BookModelFieldMap['gender']!:
            _$BookModelPerFieldToJson.gender(gender as String),
      if (genderFieldValue != null)
        _$BookModelFieldMap['gender']!: genderFieldValue,
      if (isbn != _sentinel)
        _$BookModelFieldMap['isbn']!:
            _$BookModelPerFieldToJson.isbn(isbn as String),
      if (isbnFieldValue != null) _$BookModelFieldMap['isbn']!: isbnFieldValue,
      if (language != _sentinel)
        _$BookModelFieldMap['language']!:
            _$BookModelPerFieldToJson.language(language as String),
      if (languageFieldValue != null)
        _$BookModelFieldMap['language']!: languageFieldValue,
      if (price != _sentinel)
        _$BookModelFieldMap['price']!:
            _$BookModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$BookModelFieldMap['price']!: priceFieldValue,
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
      if (resume != _sentinel)
        _$BookModelFieldMap['resume']!:
            _$BookModelPerFieldToJson.resume(resume as String),
      if (resumeFieldValue != null)
        _$BookModelFieldMap['resume']!: resumeFieldValue,
      if (textFormat != _sentinel)
        _$BookModelFieldMap['textFormat']!:
            _$BookModelPerFieldToJson.textFormat(textFormat as String?),
      if (textFormatFieldValue != null)
        _$BookModelFieldMap['textFormat']!: textFormatFieldValue,
      if (title != _sentinel)
        _$BookModelFieldMap['title']!:
            _$BookModelPerFieldToJson.title(title as String),
      if (titleFieldValue != null)
        _$BookModelFieldMap['title']!: titleFieldValue,
      if (type != _sentinel)
        _$BookModelFieldMap['type']!:
            _$BookModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$BookModelFieldMap['type']!: typeFieldValue,
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
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
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

  BookModelQuery whereGender({
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
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
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

  BookModelQuery orderByGender({
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
    Object? arrayContains = _sentinel,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$BookModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$BookModelFieldMap['authors']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.authors(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.authors(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.authors(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .authors(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.authors(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson
                .authors(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$BookModelPerFieldToJson.authors([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$BookModelPerFieldToJson.authors(arrayContainsAny)
                as Iterable<Object>?
            : null,
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
  BookModelQuery whereGender({
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
        _$BookModelFieldMap['gender']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.gender(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$BookModelPerFieldToJson.gender(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$BookModelPerFieldToJson.gender(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.gender(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$BookModelPerFieldToJson.gender(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$BookModelPerFieldToJson.gender(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$BookModelPerFieldToJson.gender(e)),
        whereNotIn: whereNotIn?.map((e) => _$BookModelPerFieldToJson.gender(e)),
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
  BookModelQuery orderByGender({
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
        .orderBy(_$BookModelFieldMap['gender']!, descending: descending);
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      coverUrl: json['coverUrl'] as String,
      description: json['description'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      isbn: json['isbn'] as String,
      language: json['language'] as String,
      price: (json['price'] as num).toDouble(),
      publishedAt: const FirestoreDateTimeConverter()
          .fromJson(json['publishedAt'] as Timestamp),
      publisherId: json['publisherId'] as String,
      publisherName: json['publisherName'] as String,
      resume: json['resume'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      audioFormat: json['audioFormat'] as String?,
      textFormat: json['textFormat'] as String?,
    );

const _$BookModelFieldMap = <String, String>{
  'audioFormat': 'audioFormat',
  'authors': 'authors',
  'coverUrl': 'coverUrl',
  'description': 'description',
  'gender': 'gender',
  'id': 'id',
  'isbn': 'isbn',
  'language': 'language',
  'price': 'price',
  'publishedAt': 'publishedAt',
  'publisherId': 'publisherId',
  'publisherName': 'publisherName',
  'resume': 'resume',
  'textFormat': 'textFormat',
  'title': 'title',
  'type': 'type',
};

// ignore: unused_element
abstract class _$BookModelPerFieldToJson {
  // ignore: unused_element
  static Object? audioFormat(String? instance) => instance;
  // ignore: unused_element
  static Object? authors(List<String> instance) => instance;
  // ignore: unused_element
  static Object? coverUrl(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? gender(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? isbn(String instance) => instance;
  // ignore: unused_element
  static Object? language(String instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
  // ignore: unused_element
  static Object? publishedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? publisherId(String instance) => instance;
  // ignore: unused_element
  static Object? publisherName(String instance) => instance;
  // ignore: unused_element
  static Object? resume(String instance) => instance;
  // ignore: unused_element
  static Object? textFormat(String? instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
}

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'audioFormat': instance.audioFormat,
      'authors': instance.authors,
      'coverUrl': instance.coverUrl,
      'description': instance.description,
      'gender': instance.gender,
      'id': instance.id,
      'isbn': instance.isbn,
      'language': instance.language,
      'price': instance.price,
      'publishedAt':
          const FirestoreDateTimeConverter().toJson(instance.publishedAt),
      'publisherId': instance.publisherId,
      'publisherName': instance.publisherName,
      'resume': instance.resume,
      'textFormat': instance.textFormat,
      'title': instance.title,
      'type': instance.type,
    };
