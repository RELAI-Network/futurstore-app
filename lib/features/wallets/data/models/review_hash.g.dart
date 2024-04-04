// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_hash.dart';

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
abstract class ReviewHashCollectionReference
    implements
        ReviewHashQuery,
        FirestoreCollectionReference<ReviewHash, ReviewHashQuerySnapshot> {
  factory ReviewHashCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ReviewHashCollectionReference;

  static ReviewHash fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ReviewHashFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    ReviewHash value,
    SetOptions? options,
  ) {
    return _$ReviewHashToJson(value);
  }

  @override
  CollectionReference<ReviewHash> get reference;

  @override
  ReviewHashDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ReviewHashDocumentReference> add(ReviewHash value);
}

class _$ReviewHashCollectionReference extends _$ReviewHashQuery
    implements ReviewHashCollectionReference {
  factory _$ReviewHashCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ReviewHashCollectionReference._(
      firestore.collection('reviews').withConverter(
            fromFirestore: ReviewHashCollectionReference.fromFirestore,
            toFirestore: ReviewHashCollectionReference.toFirestore,
          ),
    );
  }

  _$ReviewHashCollectionReference._(
    CollectionReference<ReviewHash> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ReviewHash> get reference =>
      super.reference as CollectionReference<ReviewHash>;

  @override
  ReviewHashDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ReviewHashDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ReviewHashDocumentReference> add(ReviewHash value) {
    return reference.add(value).then((ref) => ReviewHashDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ReviewHashCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ReviewHashDocumentReference
    extends FirestoreDocumentReference<ReviewHash, ReviewHashDocumentSnapshot> {
  factory ReviewHashDocumentReference(DocumentReference<ReviewHash> reference) =
      _$ReviewHashDocumentReference;

  DocumentReference<ReviewHash> get reference;

  /// A reference to the [ReviewHashCollectionReference] containing this document.
  ReviewHashCollectionReference get parent {
    return _$ReviewHashCollectionReference(reference.firestore);
  }

  @override
  Stream<ReviewHashDocumentSnapshot> snapshots();

  @override
  Future<ReviewHashDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    List<String> list,
    FieldValue listFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    List<String> list,
    FieldValue listFieldValue,
  });
}

class _$ReviewHashDocumentReference
    extends FirestoreDocumentReference<ReviewHash, ReviewHashDocumentSnapshot>
    implements ReviewHashDocumentReference {
  _$ReviewHashDocumentReference(this.reference);

  @override
  final DocumentReference<ReviewHash> reference;

  /// A reference to the [ReviewHashCollectionReference] containing this document.
  ReviewHashCollectionReference get parent {
    return _$ReviewHashCollectionReference(reference.firestore);
  }

  @override
  Stream<ReviewHashDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ReviewHashDocumentSnapshot._);
  }

  @override
  Future<ReviewHashDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ReviewHashDocumentSnapshot._);
  }

  @override
  Future<ReviewHashDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ReviewHashDocumentSnapshot._);
  }

  Future<void> update({
    Object? list = _sentinel,
    FieldValue? listFieldValue,
  }) async {
    assert(
      list == _sentinel || listFieldValue == null,
      "Cannot specify both list and listFieldValue",
    );
    final json = {
      if (list != _sentinel)
        _$ReviewHashFieldMap['list']!:
            _$ReviewHashPerFieldToJson.list(list as List<String>),
      if (listFieldValue != null) _$ReviewHashFieldMap['list']!: listFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? list = _sentinel,
    FieldValue? listFieldValue,
  }) {
    assert(
      list == _sentinel || listFieldValue == null,
      "Cannot specify both list and listFieldValue",
    );
    final json = {
      if (list != _sentinel)
        _$ReviewHashFieldMap['list']!:
            _$ReviewHashPerFieldToJson.list(list as List<String>),
      if (listFieldValue != null) _$ReviewHashFieldMap['list']!: listFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewHashDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ReviewHashQuery
    implements QueryReference<ReviewHash, ReviewHashQuerySnapshot> {
  @override
  ReviewHashQuery limit(int limit);

  @override
  ReviewHashQuery limitToLast(int limit);

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
  ReviewHashQuery whereFieldPath(
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

  ReviewHashQuery whereDocumentId({
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

  ReviewHashQuery whereList({
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
  ReviewHashQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
  });

  ReviewHashQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
  });

  ReviewHashQuery orderByList({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
  });
}

class _$ReviewHashQuery
    extends QueryReference<ReviewHash, ReviewHashQuerySnapshot>
    implements ReviewHashQuery {
  _$ReviewHashQuery(
    this._collection, {
    required Query<ReviewHash> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ReviewHashQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ReviewHashQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ReviewHashQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ReviewHashQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ReviewHashQuery limit(int limit) {
    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReviewHashQuery limitToLast(int limit) {
    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ReviewHashQuery whereFieldPath(
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
    return _$ReviewHashQuery(
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
  ReviewHashQuery whereDocumentId({
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
    return _$ReviewHashQuery(
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
  ReviewHashQuery whereList({
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
    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ReviewHashFieldMap['list']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ReviewHashPerFieldToJson.list(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ReviewHashPerFieldToJson.list(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ReviewHashPerFieldToJson.list(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ReviewHashPerFieldToJson
                .list(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ReviewHashPerFieldToJson.list(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ReviewHashPerFieldToJson
                .list(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ReviewHashPerFieldToJson.list([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ReviewHashPerFieldToJson.list(arrayContainsAny)
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
  ReviewHashQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
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

    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReviewHashQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
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

    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ReviewHashQuery orderByList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ReviewHashDocumentSnapshot? startAtDocument,
    ReviewHashDocumentSnapshot? endAtDocument,
    ReviewHashDocumentSnapshot? endBeforeDocument,
    ReviewHashDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ReviewHashFieldMap['list']!,
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

    return _$ReviewHashQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ReviewHashQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ReviewHashDocumentSnapshot extends FirestoreDocumentSnapshot<ReviewHash> {
  ReviewHashDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ReviewHash> snapshot;

  @override
  ReviewHashDocumentReference get reference {
    return ReviewHashDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ReviewHash? data;
}

class ReviewHashQuerySnapshot extends FirestoreQuerySnapshot<ReviewHash,
    ReviewHashQueryDocumentSnapshot> {
  ReviewHashQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ReviewHashQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ReviewHash> snapshot,
  ) {
    final docs = snapshot.docs.map(ReviewHashQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ReviewHashDocumentSnapshot._,
      );
    }).toList();

    return ReviewHashQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ReviewHashDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ReviewHashDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ReviewHashDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ReviewHash> snapshot;

  @override
  final List<ReviewHashQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ReviewHashDocumentSnapshot>> docChanges;
}

class ReviewHashQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ReviewHash>
    implements ReviewHashDocumentSnapshot {
  ReviewHashQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ReviewHash> snapshot;

  @override
  final ReviewHash data;

  @override
  ReviewHashDocumentReference get reference {
    return ReviewHashDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewHash _$ReviewHashFromJson(Map<String, dynamic> json) => ReviewHash(
      list: (json['list'] as List<dynamic>).map((e) => e as String).toList(),
    );

const _$ReviewHashFieldMap = <String, String>{
  'list': 'list',
};

// ignore: unused_element
abstract class _$ReviewHashPerFieldToJson {
  // ignore: unused_element
  static Object? list(List<String> instance) => instance;
}

Map<String, dynamic> _$ReviewHashToJson(ReviewHash instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
