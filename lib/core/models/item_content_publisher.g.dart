// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_content_publisher.dart';

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
abstract class ItemContentPublisherCollectionReference
    implements
        ItemContentPublisherQuery,
        FirestoreCollectionReference<ItemContentPublisher,
            ItemContentPublisherQuerySnapshot> {
  factory ItemContentPublisherCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ItemContentPublisherCollectionReference;

  static ItemContentPublisher fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ItemContentPublisherFromJson(
        {'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ItemContentPublisher value,
    SetOptions? options,
  ) {
    return {..._$ItemContentPublisherToJson(value)}..remove('id');
  }

  @override
  CollectionReference<ItemContentPublisher> get reference;

  @override
  ItemContentPublisherDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ItemContentPublisherDocumentReference> add(ItemContentPublisher value);
}

class _$ItemContentPublisherCollectionReference
    extends _$ItemContentPublisherQuery
    implements ItemContentPublisherCollectionReference {
  factory _$ItemContentPublisherCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ItemContentPublisherCollectionReference._(
      firestore.collection('items_contents_publishers').withConverter(
            fromFirestore:
                ItemContentPublisherCollectionReference.fromFirestore,
            toFirestore: ItemContentPublisherCollectionReference.toFirestore,
          ),
    );
  }

  _$ItemContentPublisherCollectionReference._(
    CollectionReference<ItemContentPublisher> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ItemContentPublisher> get reference =>
      super.reference as CollectionReference<ItemContentPublisher>;

  @override
  ItemContentPublisherDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ItemContentPublisherDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ItemContentPublisherDocumentReference> add(
      ItemContentPublisher value) {
    return reference
        .add(value)
        .then((ref) => ItemContentPublisherDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ItemContentPublisherCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ItemContentPublisherDocumentReference
    extends FirestoreDocumentReference<ItemContentPublisher,
        ItemContentPublisherDocumentSnapshot> {
  factory ItemContentPublisherDocumentReference(
          DocumentReference<ItemContentPublisher> reference) =
      _$ItemContentPublisherDocumentReference;

  DocumentReference<ItemContentPublisher> get reference;

  /// A reference to the [ItemContentPublisherCollectionReference] containing this document.
  ItemContentPublisherCollectionReference get parent {
    return _$ItemContentPublisherCollectionReference(reference.firestore);
  }

  @override
  Stream<ItemContentPublisherDocumentSnapshot> snapshots();

  @override
  Future<ItemContentPublisherDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
  });
}

class _$ItemContentPublisherDocumentReference
    extends FirestoreDocumentReference<ItemContentPublisher,
        ItemContentPublisherDocumentSnapshot>
    implements ItemContentPublisherDocumentReference {
  _$ItemContentPublisherDocumentReference(this.reference);

  @override
  final DocumentReference<ItemContentPublisher> reference;

  /// A reference to the [ItemContentPublisherCollectionReference] containing this document.
  ItemContentPublisherCollectionReference get parent {
    return _$ItemContentPublisherCollectionReference(reference.firestore);
  }

  @override
  Stream<ItemContentPublisherDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ItemContentPublisherDocumentSnapshot._);
  }

  @override
  Future<ItemContentPublisherDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ItemContentPublisherDocumentSnapshot._);
  }

  @override
  Future<ItemContentPublisherDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(ItemContentPublisherDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$ItemContentPublisherFieldMap['name']!:
            _$ItemContentPublisherPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ItemContentPublisherFieldMap['name']!: nameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$ItemContentPublisherFieldMap['name']!:
            _$ItemContentPublisherPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ItemContentPublisherFieldMap['name']!: nameFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemContentPublisherDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ItemContentPublisherQuery
    implements
        QueryReference<ItemContentPublisher,
            ItemContentPublisherQuerySnapshot> {
  @override
  ItemContentPublisherQuery limit(int limit);

  @override
  ItemContentPublisherQuery limitToLast(int limit);

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
  ItemContentPublisherQuery whereFieldPath(
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

  ItemContentPublisherQuery whereDocumentId({
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

  ItemContentPublisherQuery whereName({
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
  ItemContentPublisherQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
  });

  ItemContentPublisherQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
  });

  ItemContentPublisherQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
  });
}

class _$ItemContentPublisherQuery extends QueryReference<ItemContentPublisher,
    ItemContentPublisherQuerySnapshot> implements ItemContentPublisherQuery {
  _$ItemContentPublisherQuery(
    this._collection, {
    required Query<ItemContentPublisher> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ItemContentPublisherQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ItemContentPublisherQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ItemContentPublisherQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ItemContentPublisherQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ItemContentPublisherQuery limit(int limit) {
    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemContentPublisherQuery limitToLast(int limit) {
    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemContentPublisherQuery whereFieldPath(
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
    return _$ItemContentPublisherQuery(
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
  ItemContentPublisherQuery whereDocumentId({
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
    return _$ItemContentPublisherQuery(
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
  ItemContentPublisherQuery whereName({
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
    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ItemContentPublisherFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ItemContentPublisherPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ItemContentPublisherPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ItemContentPublisherPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ItemContentPublisherPerFieldToJson
                .name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ItemContentPublisherPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ItemContentPublisherPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ItemContentPublisherPerFieldToJson.name(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ItemContentPublisherPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemContentPublisherQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
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

    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemContentPublisherQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
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

    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemContentPublisherQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemContentPublisherDocumentSnapshot? startAtDocument,
    ItemContentPublisherDocumentSnapshot? endAtDocument,
    ItemContentPublisherDocumentSnapshot? endBeforeDocument,
    ItemContentPublisherDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ItemContentPublisherFieldMap['name']!,
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

    return _$ItemContentPublisherQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ItemContentPublisherQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ItemContentPublisherDocumentSnapshot
    extends FirestoreDocumentSnapshot<ItemContentPublisher> {
  ItemContentPublisherDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final DocumentSnapshot<ItemContentPublisher> snapshot;

  @override
  ItemContentPublisherDocumentReference get reference {
    return ItemContentPublisherDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ItemContentPublisher? data;
}

class ItemContentPublisherQuerySnapshot extends FirestoreQuerySnapshot<
    ItemContentPublisher, ItemContentPublisherQueryDocumentSnapshot> {
  ItemContentPublisherQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ItemContentPublisherQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ItemContentPublisher> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ItemContentPublisherQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ItemContentPublisherDocumentSnapshot._,
      );
    }).toList();

    return ItemContentPublisherQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ItemContentPublisherDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ItemContentPublisherDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ItemContentPublisherDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ItemContentPublisher> snapshot;

  @override
  final List<ItemContentPublisherQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ItemContentPublisherDocumentSnapshot>>
      docChanges;
}

class ItemContentPublisherQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ItemContentPublisher>
    implements ItemContentPublisherDocumentSnapshot {
  ItemContentPublisherQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ItemContentPublisher> snapshot;

  @override
  final ItemContentPublisher data;

  @override
  ItemContentPublisherDocumentReference get reference {
    return ItemContentPublisherDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemContentPublisher _$ItemContentPublisherFromJson(
        Map<String, dynamic> json) =>
    ItemContentPublisher(
      id: json['id'] as String,
      name: json['name'] as String,
    );

const _$ItemContentPublisherFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
};

// ignore: unused_element
abstract class _$ItemContentPublisherPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
}

Map<String, dynamic> _$ItemContentPublisherToJson(
        ItemContentPublisher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
