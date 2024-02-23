// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_category.dart';

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
abstract class ItemCategoryCollectionReference
    implements
        ItemCategoryQuery,
        FirestoreCollectionReference<ItemCategory, ItemCategoryQuerySnapshot> {
  factory ItemCategoryCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ItemCategoryCollectionReference;

  static ItemCategory fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ItemCategoryFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ItemCategory value,
    SetOptions? options,
  ) {
    return {..._$ItemCategoryToJson(value)}..remove('id');
  }

  @override
  CollectionReference<ItemCategory> get reference;

  @override
  ItemCategoryDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ItemCategoryDocumentReference> add(ItemCategory value);
}

class _$ItemCategoryCollectionReference extends _$ItemCategoryQuery
    implements ItemCategoryCollectionReference {
  factory _$ItemCategoryCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ItemCategoryCollectionReference._(
      firestore.collection('items_categories').withConverter(
            fromFirestore: ItemCategoryCollectionReference.fromFirestore,
            toFirestore: ItemCategoryCollectionReference.toFirestore,
          ),
    );
  }

  _$ItemCategoryCollectionReference._(
    CollectionReference<ItemCategory> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ItemCategory> get reference =>
      super.reference as CollectionReference<ItemCategory>;

  @override
  ItemCategoryDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ItemCategoryDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ItemCategoryDocumentReference> add(ItemCategory value) {
    return reference
        .add(value)
        .then((ref) => ItemCategoryDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ItemCategoryCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ItemCategoryDocumentReference extends FirestoreDocumentReference<
    ItemCategory, ItemCategoryDocumentSnapshot> {
  factory ItemCategoryDocumentReference(
          DocumentReference<ItemCategory> reference) =
      _$ItemCategoryDocumentReference;

  DocumentReference<ItemCategory> get reference;

  /// A reference to the [ItemCategoryCollectionReference] containing this document.
  ItemCategoryCollectionReference get parent {
    return _$ItemCategoryCollectionReference(reference.firestore);
  }

  @override
  Stream<ItemCategoryDocumentSnapshot> snapshots();

  @override
  Future<ItemCategoryDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String description,
    FieldValue descriptionFieldValue,
    String name,
    FieldValue nameFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    List<String> itemTypes,
    FieldValue itemTypesFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String description,
    FieldValue descriptionFieldValue,
    String name,
    FieldValue nameFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    List<String> itemTypes,
    FieldValue itemTypesFieldValue,
  });
}

class _$ItemCategoryDocumentReference extends FirestoreDocumentReference<
    ItemCategory,
    ItemCategoryDocumentSnapshot> implements ItemCategoryDocumentReference {
  _$ItemCategoryDocumentReference(this.reference);

  @override
  final DocumentReference<ItemCategory> reference;

  /// A reference to the [ItemCategoryCollectionReference] containing this document.
  ItemCategoryCollectionReference get parent {
    return _$ItemCategoryCollectionReference(reference.firestore);
  }

  @override
  Stream<ItemCategoryDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ItemCategoryDocumentSnapshot._);
  }

  @override
  Future<ItemCategoryDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ItemCategoryDocumentSnapshot._);
  }

  @override
  Future<ItemCategoryDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ItemCategoryDocumentSnapshot._);
  }

  Future<void> update({
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? itemTypes = _sentinel,
    FieldValue? itemTypesFieldValue,
  }) async {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      itemTypes == _sentinel || itemTypesFieldValue == null,
      "Cannot specify both itemTypes and itemTypesFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$ItemCategoryFieldMap['description']!:
            _$ItemCategoryPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ItemCategoryFieldMap['description']!: descriptionFieldValue,
      if (name != _sentinel)
        _$ItemCategoryFieldMap['name']!:
            _$ItemCategoryPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ItemCategoryFieldMap['name']!: nameFieldValue,
      if (iconUrl != _sentinel)
        _$ItemCategoryFieldMap['iconUrl']!:
            _$ItemCategoryPerFieldToJson.iconUrl(iconUrl as String?),
      if (iconUrlFieldValue != null)
        _$ItemCategoryFieldMap['iconUrl']!: iconUrlFieldValue,
      if (itemTypes != _sentinel)
        _$ItemCategoryFieldMap['itemTypes']!:
            _$ItemCategoryPerFieldToJson.itemTypes(itemTypes as List<String>),
      if (itemTypesFieldValue != null)
        _$ItemCategoryFieldMap['itemTypes']!: itemTypesFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? itemTypes = _sentinel,
    FieldValue? itemTypesFieldValue,
  }) {
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      itemTypes == _sentinel || itemTypesFieldValue == null,
      "Cannot specify both itemTypes and itemTypesFieldValue",
    );
    final json = {
      if (description != _sentinel)
        _$ItemCategoryFieldMap['description']!:
            _$ItemCategoryPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ItemCategoryFieldMap['description']!: descriptionFieldValue,
      if (name != _sentinel)
        _$ItemCategoryFieldMap['name']!:
            _$ItemCategoryPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ItemCategoryFieldMap['name']!: nameFieldValue,
      if (iconUrl != _sentinel)
        _$ItemCategoryFieldMap['iconUrl']!:
            _$ItemCategoryPerFieldToJson.iconUrl(iconUrl as String?),
      if (iconUrlFieldValue != null)
        _$ItemCategoryFieldMap['iconUrl']!: iconUrlFieldValue,
      if (itemTypes != _sentinel)
        _$ItemCategoryFieldMap['itemTypes']!:
            _$ItemCategoryPerFieldToJson.itemTypes(itemTypes as List<String>),
      if (itemTypesFieldValue != null)
        _$ItemCategoryFieldMap['itemTypes']!: itemTypesFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemCategoryDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ItemCategoryQuery
    implements QueryReference<ItemCategory, ItemCategoryQuerySnapshot> {
  @override
  ItemCategoryQuery limit(int limit);

  @override
  ItemCategoryQuery limitToLast(int limit);

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
  ItemCategoryQuery whereFieldPath(
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

  ItemCategoryQuery whereDocumentId({
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

  ItemCategoryQuery whereDescription({
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

  ItemCategoryQuery whereName({
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

  ItemCategoryQuery whereIconUrl({
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

  ItemCategoryQuery whereItemTypes({
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
  ItemCategoryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });

  ItemCategoryQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });

  ItemCategoryQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });

  ItemCategoryQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });

  ItemCategoryQuery orderByIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });

  ItemCategoryQuery orderByItemTypes({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  });
}

class _$ItemCategoryQuery
    extends QueryReference<ItemCategory, ItemCategoryQuerySnapshot>
    implements ItemCategoryQuery {
  _$ItemCategoryQuery(
    this._collection, {
    required Query<ItemCategory> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ItemCategoryQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ItemCategoryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ItemCategoryQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ItemCategoryQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ItemCategoryQuery limit(int limit) {
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemCategoryQuery limitToLast(int limit) {
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemCategoryQuery whereFieldPath(
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
    return _$ItemCategoryQuery(
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
  ItemCategoryQuery whereDocumentId({
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
    return _$ItemCategoryQuery(
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
  ItemCategoryQuery whereDescription({
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
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ItemCategoryFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ItemCategoryPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ItemCategoryPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ItemCategoryPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ItemCategoryPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemCategoryQuery whereName({
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
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ItemCategoryFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ItemCategoryPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ItemCategoryPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ItemCategoryPerFieldToJson.name(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ItemCategoryPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemCategoryQuery whereIconUrl({
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
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ItemCategoryFieldMap['iconUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.iconUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.iconUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ItemCategoryPerFieldToJson.iconUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .iconUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ItemCategoryPerFieldToJson.iconUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .iconUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$ItemCategoryPerFieldToJson.iconUrl(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ItemCategoryPerFieldToJson.iconUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ItemCategoryQuery whereItemTypes({
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
    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ItemCategoryFieldMap['itemTypes']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson.itemTypes(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ItemCategoryPerFieldToJson
                .itemTypes(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ItemCategoryPerFieldToJson.itemTypes(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .itemTypes(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ItemCategoryPerFieldToJson
                .itemTypes(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ItemCategoryPerFieldToJson
                .itemTypes(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ItemCategoryPerFieldToJson.itemTypes([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ItemCategoryPerFieldToJson.itemTypes(arrayContainsAny)
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
  ItemCategoryQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemCategoryQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemCategoryQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ItemCategoryFieldMap['description']!,
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemCategoryQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ItemCategoryFieldMap['name']!, descending: descending);
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemCategoryQuery orderByIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ItemCategoryFieldMap['iconUrl']!, descending: descending);
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ItemCategoryQuery orderByItemTypes({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ItemCategoryDocumentSnapshot? startAtDocument,
    ItemCategoryDocumentSnapshot? endAtDocument,
    ItemCategoryDocumentSnapshot? endBeforeDocument,
    ItemCategoryDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ItemCategoryFieldMap['itemTypes']!, descending: descending);
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

    return _$ItemCategoryQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ItemCategoryQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ItemCategoryDocumentSnapshot
    extends FirestoreDocumentSnapshot<ItemCategory> {
  ItemCategoryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ItemCategory> snapshot;

  @override
  ItemCategoryDocumentReference get reference {
    return ItemCategoryDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ItemCategory? data;
}

class ItemCategoryQuerySnapshot extends FirestoreQuerySnapshot<ItemCategory,
    ItemCategoryQueryDocumentSnapshot> {
  ItemCategoryQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ItemCategoryQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ItemCategory> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ItemCategoryQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ItemCategoryDocumentSnapshot._,
      );
    }).toList();

    return ItemCategoryQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ItemCategoryDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ItemCategoryDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ItemCategoryDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ItemCategory> snapshot;

  @override
  final List<ItemCategoryQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ItemCategoryDocumentSnapshot>> docChanges;
}

class ItemCategoryQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ItemCategory>
    implements ItemCategoryDocumentSnapshot {
  ItemCategoryQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ItemCategory> snapshot;

  @override
  final ItemCategory data;

  @override
  ItemCategoryDocumentReference get reference {
    return ItemCategoryDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCategory _$ItemCategoryFromJson(Map<String, dynamic> json) => ItemCategory(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      itemTypes: (json['item_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      iconUrl: json['icon_url'] as String?,
    );

const _$ItemCategoryFieldMap = <String, String>{
  'description': 'description',
  'name': 'name',
  'iconUrl': 'icon_url',
  'id': 'id',
  'itemTypes': 'item_types',
};

// ignore: unused_element
abstract class _$ItemCategoryPerFieldToJson {
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? iconUrl(String? instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? itemTypes(List<String> instance) => instance;
}

Map<String, dynamic> _$ItemCategoryToJson(ItemCategory instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'item_types': instance.itemTypes,
    };
