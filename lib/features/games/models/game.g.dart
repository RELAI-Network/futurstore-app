// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

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
abstract class GameModelCollectionReference
    implements
        GameModelQuery,
        FirestoreCollectionReference<GameModel, GameModelQuerySnapshot> {
  factory GameModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$GameModelCollectionReference;

  static GameModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$GameModelFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    GameModel value,
    SetOptions? options,
  ) {
    return {..._$GameModelToJson(value)}..remove('id');
  }

  @override
  CollectionReference<GameModel> get reference;

  @override
  GameModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<GameModelDocumentReference> add(GameModel value);
}

class _$GameModelCollectionReference extends _$GameModelQuery
    implements GameModelCollectionReference {
  factory _$GameModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$GameModelCollectionReference._(
      firestore.collection('games').withConverter(
            fromFirestore: GameModelCollectionReference.fromFirestore,
            toFirestore: GameModelCollectionReference.toFirestore,
          ),
    );
  }

  _$GameModelCollectionReference._(
    CollectionReference<GameModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<GameModel> get reference =>
      super.reference as CollectionReference<GameModel>;

  @override
  GameModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return GameModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<GameModelDocumentReference> add(GameModel value) {
    return reference.add(value).then((ref) => GameModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$GameModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class GameModelDocumentReference
    extends FirestoreDocumentReference<GameModel, GameModelDocumentSnapshot> {
  factory GameModelDocumentReference(DocumentReference<GameModel> reference) =
      _$GameModelDocumentReference;

  DocumentReference<GameModel> get reference;

  /// A reference to the [GameModelCollectionReference] containing this document.
  GameModelCollectionReference get parent {
    return _$GameModelCollectionReference(reference.firestore);
  }

  @override
  Stream<GameModelDocumentSnapshot> snapshots();

  @override
  Future<GameModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? address,
    FieldValue addressFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String email,
    FieldValue emailFieldValue,
    String name,
    FieldValue nameFieldValue,
    String? phone,
    FieldValue phoneFieldValue,
    double? price,
    FieldValue priceFieldValue,
    List<String> screenshots,
    FieldValue screenshotsFieldValue,
    List<String> tags,
    FieldValue tagsFieldValue,
    String type,
    FieldValue typeFieldValue,
    String version,
    FieldValue versionFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String categoryName,
    FieldValue categoryNameFieldValue,
    bool containsAds,
    FieldValue containsAdsFieldValue,
    String? coverImageRectUrl,
    FieldValue coverImageRectUrlFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    int downloadSize,
    FieldValue downloadSizeFieldValue,
    int downloadsCount,
    FieldValue downloadsCountFieldValue,
    bool hasInAppPurchases,
    FieldValue hasInAppPurchasesFieldValue,
    String logoImageSquareUrl,
    FieldValue logoImageSquareUrlFieldValue,
    int minAgeRequirement,
    FieldValue minAgeRequirementFieldValue,
    int? notesAverage,
    FieldValue notesAverageFieldValue,
    int? notesCount,
    FieldValue notesCountFieldValue,
    String packageName,
    FieldValue packageNameFieldValue,
    String privacyPolicyLinkUrl,
    FieldValue privacyPolicyLinkUrlFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String releaseFileMainUrl,
    FieldValue releaseFileMainUrlFieldValue,
    String? trailerVideoUrl,
    FieldValue trailerVideoUrlFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    String? websiteUrl,
    FieldValue websiteUrlFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? address,
    FieldValue addressFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String email,
    FieldValue emailFieldValue,
    String name,
    FieldValue nameFieldValue,
    String? phone,
    FieldValue phoneFieldValue,
    double? price,
    FieldValue priceFieldValue,
    List<String> screenshots,
    FieldValue screenshotsFieldValue,
    List<String> tags,
    FieldValue tagsFieldValue,
    String type,
    FieldValue typeFieldValue,
    String version,
    FieldValue versionFieldValue,
    String categoryId,
    FieldValue categoryIdFieldValue,
    String categoryName,
    FieldValue categoryNameFieldValue,
    bool containsAds,
    FieldValue containsAdsFieldValue,
    String? coverImageRectUrl,
    FieldValue coverImageRectUrlFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    int downloadSize,
    FieldValue downloadSizeFieldValue,
    int downloadsCount,
    FieldValue downloadsCountFieldValue,
    bool hasInAppPurchases,
    FieldValue hasInAppPurchasesFieldValue,
    String logoImageSquareUrl,
    FieldValue logoImageSquareUrlFieldValue,
    int minAgeRequirement,
    FieldValue minAgeRequirementFieldValue,
    int? notesAverage,
    FieldValue notesAverageFieldValue,
    int? notesCount,
    FieldValue notesCountFieldValue,
    String packageName,
    FieldValue packageNameFieldValue,
    String privacyPolicyLinkUrl,
    FieldValue privacyPolicyLinkUrlFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String releaseFileMainUrl,
    FieldValue releaseFileMainUrlFieldValue,
    String? trailerVideoUrl,
    FieldValue trailerVideoUrlFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    String? websiteUrl,
    FieldValue websiteUrlFieldValue,
  });
}

class _$GameModelDocumentReference
    extends FirestoreDocumentReference<GameModel, GameModelDocumentSnapshot>
    implements GameModelDocumentReference {
  _$GameModelDocumentReference(this.reference);

  @override
  final DocumentReference<GameModel> reference;

  /// A reference to the [GameModelCollectionReference] containing this document.
  GameModelCollectionReference get parent {
    return _$GameModelCollectionReference(reference.firestore);
  }

  @override
  Stream<GameModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(GameModelDocumentSnapshot._);
  }

  @override
  Future<GameModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(GameModelDocumentSnapshot._);
  }

  @override
  Future<GameModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(GameModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? screenshots = _sentinel,
    FieldValue? screenshotsFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? categoryName = _sentinel,
    FieldValue? categoryNameFieldValue,
    Object? containsAds = _sentinel,
    FieldValue? containsAdsFieldValue,
    Object? coverImageRectUrl = _sentinel,
    FieldValue? coverImageRectUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? downloadSize = _sentinel,
    FieldValue? downloadSizeFieldValue,
    Object? downloadsCount = _sentinel,
    FieldValue? downloadsCountFieldValue,
    Object? hasInAppPurchases = _sentinel,
    FieldValue? hasInAppPurchasesFieldValue,
    Object? logoImageSquareUrl = _sentinel,
    FieldValue? logoImageSquareUrlFieldValue,
    Object? minAgeRequirement = _sentinel,
    FieldValue? minAgeRequirementFieldValue,
    Object? notesAverage = _sentinel,
    FieldValue? notesAverageFieldValue,
    Object? notesCount = _sentinel,
    FieldValue? notesCountFieldValue,
    Object? packageName = _sentinel,
    FieldValue? packageNameFieldValue,
    Object? privacyPolicyLinkUrl = _sentinel,
    FieldValue? privacyPolicyLinkUrlFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? releaseFileMainUrl = _sentinel,
    FieldValue? releaseFileMainUrlFieldValue,
    Object? trailerVideoUrl = _sentinel,
    FieldValue? trailerVideoUrlFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? websiteUrl = _sentinel,
    FieldValue? websiteUrlFieldValue,
  }) async {
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      screenshots == _sentinel || screenshotsFieldValue == null,
      "Cannot specify both screenshots and screenshotsFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      categoryName == _sentinel || categoryNameFieldValue == null,
      "Cannot specify both categoryName and categoryNameFieldValue",
    );
    assert(
      containsAds == _sentinel || containsAdsFieldValue == null,
      "Cannot specify both containsAds and containsAdsFieldValue",
    );
    assert(
      coverImageRectUrl == _sentinel || coverImageRectUrlFieldValue == null,
      "Cannot specify both coverImageRectUrl and coverImageRectUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      downloadSize == _sentinel || downloadSizeFieldValue == null,
      "Cannot specify both downloadSize and downloadSizeFieldValue",
    );
    assert(
      downloadsCount == _sentinel || downloadsCountFieldValue == null,
      "Cannot specify both downloadsCount and downloadsCountFieldValue",
    );
    assert(
      hasInAppPurchases == _sentinel || hasInAppPurchasesFieldValue == null,
      "Cannot specify both hasInAppPurchases and hasInAppPurchasesFieldValue",
    );
    assert(
      logoImageSquareUrl == _sentinel || logoImageSquareUrlFieldValue == null,
      "Cannot specify both logoImageSquareUrl and logoImageSquareUrlFieldValue",
    );
    assert(
      minAgeRequirement == _sentinel || minAgeRequirementFieldValue == null,
      "Cannot specify both minAgeRequirement and minAgeRequirementFieldValue",
    );
    assert(
      notesAverage == _sentinel || notesAverageFieldValue == null,
      "Cannot specify both notesAverage and notesAverageFieldValue",
    );
    assert(
      notesCount == _sentinel || notesCountFieldValue == null,
      "Cannot specify both notesCount and notesCountFieldValue",
    );
    assert(
      packageName == _sentinel || packageNameFieldValue == null,
      "Cannot specify both packageName and packageNameFieldValue",
    );
    assert(
      privacyPolicyLinkUrl == _sentinel ||
          privacyPolicyLinkUrlFieldValue == null,
      "Cannot specify both privacyPolicyLinkUrl and privacyPolicyLinkUrlFieldValue",
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
      releaseFileMainUrl == _sentinel || releaseFileMainUrlFieldValue == null,
      "Cannot specify both releaseFileMainUrl and releaseFileMainUrlFieldValue",
    );
    assert(
      trailerVideoUrl == _sentinel || trailerVideoUrlFieldValue == null,
      "Cannot specify both trailerVideoUrl and trailerVideoUrlFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      websiteUrl == _sentinel || websiteUrlFieldValue == null,
      "Cannot specify both websiteUrl and websiteUrlFieldValue",
    );
    final json = {
      if (address != _sentinel)
        _$GameModelFieldMap['address']!:
            _$GameModelPerFieldToJson.address(address as String?),
      if (addressFieldValue != null)
        _$GameModelFieldMap['address']!: addressFieldValue,
      if (description != _sentinel)
        _$GameModelFieldMap['description']!:
            _$GameModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$GameModelFieldMap['description']!: descriptionFieldValue,
      if (email != _sentinel)
        _$GameModelFieldMap['email']!:
            _$GameModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$GameModelFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$GameModelFieldMap['name']!:
            _$GameModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$GameModelFieldMap['name']!: nameFieldValue,
      if (phone != _sentinel)
        _$GameModelFieldMap['phone']!:
            _$GameModelPerFieldToJson.phone(phone as String?),
      if (phoneFieldValue != null)
        _$GameModelFieldMap['phone']!: phoneFieldValue,
      if (price != _sentinel)
        _$GameModelFieldMap['price']!:
            _$GameModelPerFieldToJson.price(price as double?),
      if (priceFieldValue != null)
        _$GameModelFieldMap['price']!: priceFieldValue,
      if (screenshots != _sentinel)
        _$GameModelFieldMap['screenshots']!:
            _$GameModelPerFieldToJson.screenshots(screenshots as List<String>),
      if (screenshotsFieldValue != null)
        _$GameModelFieldMap['screenshots']!: screenshotsFieldValue,
      if (tags != _sentinel)
        _$GameModelFieldMap['tags']!:
            _$GameModelPerFieldToJson.tags(tags as List<String>),
      if (tagsFieldValue != null) _$GameModelFieldMap['tags']!: tagsFieldValue,
      if (type != _sentinel)
        _$GameModelFieldMap['type']!:
            _$GameModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$GameModelFieldMap['type']!: typeFieldValue,
      if (version != _sentinel)
        _$GameModelFieldMap['version']!:
            _$GameModelPerFieldToJson.version(version as String),
      if (versionFieldValue != null)
        _$GameModelFieldMap['version']!: versionFieldValue,
      if (categoryId != _sentinel)
        _$GameModelFieldMap['categoryId']!:
            _$GameModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$GameModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (categoryName != _sentinel)
        _$GameModelFieldMap['categoryName']!:
            _$GameModelPerFieldToJson.categoryName(categoryName as String),
      if (categoryNameFieldValue != null)
        _$GameModelFieldMap['categoryName']!: categoryNameFieldValue,
      if (containsAds != _sentinel)
        _$GameModelFieldMap['containsAds']!:
            _$GameModelPerFieldToJson.containsAds(containsAds as bool),
      if (containsAdsFieldValue != null)
        _$GameModelFieldMap['containsAds']!: containsAdsFieldValue,
      if (coverImageRectUrl != _sentinel)
        _$GameModelFieldMap['coverImageRectUrl']!: _$GameModelPerFieldToJson
            .coverImageRectUrl(coverImageRectUrl as String?),
      if (coverImageRectUrlFieldValue != null)
        _$GameModelFieldMap['coverImageRectUrl']!: coverImageRectUrlFieldValue,
      if (createdAt != _sentinel)
        _$GameModelFieldMap['createdAt']!:
            _$GameModelPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$GameModelFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadSize != _sentinel)
        _$GameModelFieldMap['downloadSize']!:
            _$GameModelPerFieldToJson.downloadSize(downloadSize as int),
      if (downloadSizeFieldValue != null)
        _$GameModelFieldMap['downloadSize']!: downloadSizeFieldValue,
      if (downloadsCount != _sentinel)
        _$GameModelFieldMap['downloadsCount']!:
            _$GameModelPerFieldToJson.downloadsCount(downloadsCount as int),
      if (downloadsCountFieldValue != null)
        _$GameModelFieldMap['downloadsCount']!: downloadsCountFieldValue,
      if (hasInAppPurchases != _sentinel)
        _$GameModelFieldMap['hasInAppPurchases']!: _$GameModelPerFieldToJson
            .hasInAppPurchases(hasInAppPurchases as bool),
      if (hasInAppPurchasesFieldValue != null)
        _$GameModelFieldMap['hasInAppPurchases']!: hasInAppPurchasesFieldValue,
      if (logoImageSquareUrl != _sentinel)
        _$GameModelFieldMap['logoImageSquareUrl']!: _$GameModelPerFieldToJson
            .logoImageSquareUrl(logoImageSquareUrl as String),
      if (logoImageSquareUrlFieldValue != null)
        _$GameModelFieldMap['logoImageSquareUrl']!:
            logoImageSquareUrlFieldValue,
      if (minAgeRequirement != _sentinel)
        _$GameModelFieldMap['minAgeRequirement']!: _$GameModelPerFieldToJson
            .minAgeRequirement(minAgeRequirement as int),
      if (minAgeRequirementFieldValue != null)
        _$GameModelFieldMap['minAgeRequirement']!: minAgeRequirementFieldValue,
      if (notesAverage != _sentinel)
        _$GameModelFieldMap['notesAverage']!:
            _$GameModelPerFieldToJson.notesAverage(notesAverage as int?),
      if (notesAverageFieldValue != null)
        _$GameModelFieldMap['notesAverage']!: notesAverageFieldValue,
      if (notesCount != _sentinel)
        _$GameModelFieldMap['notesCount']!:
            _$GameModelPerFieldToJson.notesCount(notesCount as int?),
      if (notesCountFieldValue != null)
        _$GameModelFieldMap['notesCount']!: notesCountFieldValue,
      if (packageName != _sentinel)
        _$GameModelFieldMap['packageName']!:
            _$GameModelPerFieldToJson.packageName(packageName as String),
      if (packageNameFieldValue != null)
        _$GameModelFieldMap['packageName']!: packageNameFieldValue,
      if (privacyPolicyLinkUrl != _sentinel)
        _$GameModelFieldMap['privacyPolicyLinkUrl']!: _$GameModelPerFieldToJson
            .privacyPolicyLinkUrl(privacyPolicyLinkUrl as String),
      if (privacyPolicyLinkUrlFieldValue != null)
        _$GameModelFieldMap['privacyPolicyLinkUrl']!:
            privacyPolicyLinkUrlFieldValue,
      if (publisherId != _sentinel)
        _$GameModelFieldMap['publisherId']!:
            _$GameModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$GameModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$GameModelFieldMap['publisherName']!:
            _$GameModelPerFieldToJson.publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$GameModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (releaseFileMainUrl != _sentinel)
        _$GameModelFieldMap['releaseFileMainUrl']!: _$GameModelPerFieldToJson
            .releaseFileMainUrl(releaseFileMainUrl as String),
      if (releaseFileMainUrlFieldValue != null)
        _$GameModelFieldMap['releaseFileMainUrl']!:
            releaseFileMainUrlFieldValue,
      if (trailerVideoUrl != _sentinel)
        _$GameModelFieldMap['trailerVideoUrl']!: _$GameModelPerFieldToJson
            .trailerVideoUrl(trailerVideoUrl as String?),
      if (trailerVideoUrlFieldValue != null)
        _$GameModelFieldMap['trailerVideoUrl']!: trailerVideoUrlFieldValue,
      if (updatedAt != _sentinel)
        _$GameModelFieldMap['updatedAt']!:
            _$GameModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$GameModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (websiteUrl != _sentinel)
        _$GameModelFieldMap['websiteUrl']!:
            _$GameModelPerFieldToJson.websiteUrl(websiteUrl as String?),
      if (websiteUrlFieldValue != null)
        _$GameModelFieldMap['websiteUrl']!: websiteUrlFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? screenshots = _sentinel,
    FieldValue? screenshotsFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? categoryId = _sentinel,
    FieldValue? categoryIdFieldValue,
    Object? categoryName = _sentinel,
    FieldValue? categoryNameFieldValue,
    Object? containsAds = _sentinel,
    FieldValue? containsAdsFieldValue,
    Object? coverImageRectUrl = _sentinel,
    FieldValue? coverImageRectUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? downloadSize = _sentinel,
    FieldValue? downloadSizeFieldValue,
    Object? downloadsCount = _sentinel,
    FieldValue? downloadsCountFieldValue,
    Object? hasInAppPurchases = _sentinel,
    FieldValue? hasInAppPurchasesFieldValue,
    Object? logoImageSquareUrl = _sentinel,
    FieldValue? logoImageSquareUrlFieldValue,
    Object? minAgeRequirement = _sentinel,
    FieldValue? minAgeRequirementFieldValue,
    Object? notesAverage = _sentinel,
    FieldValue? notesAverageFieldValue,
    Object? notesCount = _sentinel,
    FieldValue? notesCountFieldValue,
    Object? packageName = _sentinel,
    FieldValue? packageNameFieldValue,
    Object? privacyPolicyLinkUrl = _sentinel,
    FieldValue? privacyPolicyLinkUrlFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? releaseFileMainUrl = _sentinel,
    FieldValue? releaseFileMainUrlFieldValue,
    Object? trailerVideoUrl = _sentinel,
    FieldValue? trailerVideoUrlFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? websiteUrl = _sentinel,
    FieldValue? websiteUrlFieldValue,
  }) {
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      screenshots == _sentinel || screenshotsFieldValue == null,
      "Cannot specify both screenshots and screenshotsFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      categoryId == _sentinel || categoryIdFieldValue == null,
      "Cannot specify both categoryId and categoryIdFieldValue",
    );
    assert(
      categoryName == _sentinel || categoryNameFieldValue == null,
      "Cannot specify both categoryName and categoryNameFieldValue",
    );
    assert(
      containsAds == _sentinel || containsAdsFieldValue == null,
      "Cannot specify both containsAds and containsAdsFieldValue",
    );
    assert(
      coverImageRectUrl == _sentinel || coverImageRectUrlFieldValue == null,
      "Cannot specify both coverImageRectUrl and coverImageRectUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      downloadSize == _sentinel || downloadSizeFieldValue == null,
      "Cannot specify both downloadSize and downloadSizeFieldValue",
    );
    assert(
      downloadsCount == _sentinel || downloadsCountFieldValue == null,
      "Cannot specify both downloadsCount and downloadsCountFieldValue",
    );
    assert(
      hasInAppPurchases == _sentinel || hasInAppPurchasesFieldValue == null,
      "Cannot specify both hasInAppPurchases and hasInAppPurchasesFieldValue",
    );
    assert(
      logoImageSquareUrl == _sentinel || logoImageSquareUrlFieldValue == null,
      "Cannot specify both logoImageSquareUrl and logoImageSquareUrlFieldValue",
    );
    assert(
      minAgeRequirement == _sentinel || minAgeRequirementFieldValue == null,
      "Cannot specify both minAgeRequirement and minAgeRequirementFieldValue",
    );
    assert(
      notesAverage == _sentinel || notesAverageFieldValue == null,
      "Cannot specify both notesAverage and notesAverageFieldValue",
    );
    assert(
      notesCount == _sentinel || notesCountFieldValue == null,
      "Cannot specify both notesCount and notesCountFieldValue",
    );
    assert(
      packageName == _sentinel || packageNameFieldValue == null,
      "Cannot specify both packageName and packageNameFieldValue",
    );
    assert(
      privacyPolicyLinkUrl == _sentinel ||
          privacyPolicyLinkUrlFieldValue == null,
      "Cannot specify both privacyPolicyLinkUrl and privacyPolicyLinkUrlFieldValue",
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
      releaseFileMainUrl == _sentinel || releaseFileMainUrlFieldValue == null,
      "Cannot specify both releaseFileMainUrl and releaseFileMainUrlFieldValue",
    );
    assert(
      trailerVideoUrl == _sentinel || trailerVideoUrlFieldValue == null,
      "Cannot specify both trailerVideoUrl and trailerVideoUrlFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      websiteUrl == _sentinel || websiteUrlFieldValue == null,
      "Cannot specify both websiteUrl and websiteUrlFieldValue",
    );
    final json = {
      if (address != _sentinel)
        _$GameModelFieldMap['address']!:
            _$GameModelPerFieldToJson.address(address as String?),
      if (addressFieldValue != null)
        _$GameModelFieldMap['address']!: addressFieldValue,
      if (description != _sentinel)
        _$GameModelFieldMap['description']!:
            _$GameModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$GameModelFieldMap['description']!: descriptionFieldValue,
      if (email != _sentinel)
        _$GameModelFieldMap['email']!:
            _$GameModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$GameModelFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$GameModelFieldMap['name']!:
            _$GameModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$GameModelFieldMap['name']!: nameFieldValue,
      if (phone != _sentinel)
        _$GameModelFieldMap['phone']!:
            _$GameModelPerFieldToJson.phone(phone as String?),
      if (phoneFieldValue != null)
        _$GameModelFieldMap['phone']!: phoneFieldValue,
      if (price != _sentinel)
        _$GameModelFieldMap['price']!:
            _$GameModelPerFieldToJson.price(price as double?),
      if (priceFieldValue != null)
        _$GameModelFieldMap['price']!: priceFieldValue,
      if (screenshots != _sentinel)
        _$GameModelFieldMap['screenshots']!:
            _$GameModelPerFieldToJson.screenshots(screenshots as List<String>),
      if (screenshotsFieldValue != null)
        _$GameModelFieldMap['screenshots']!: screenshotsFieldValue,
      if (tags != _sentinel)
        _$GameModelFieldMap['tags']!:
            _$GameModelPerFieldToJson.tags(tags as List<String>),
      if (tagsFieldValue != null) _$GameModelFieldMap['tags']!: tagsFieldValue,
      if (type != _sentinel)
        _$GameModelFieldMap['type']!:
            _$GameModelPerFieldToJson.type(type as String),
      if (typeFieldValue != null) _$GameModelFieldMap['type']!: typeFieldValue,
      if (version != _sentinel)
        _$GameModelFieldMap['version']!:
            _$GameModelPerFieldToJson.version(version as String),
      if (versionFieldValue != null)
        _$GameModelFieldMap['version']!: versionFieldValue,
      if (categoryId != _sentinel)
        _$GameModelFieldMap['categoryId']!:
            _$GameModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$GameModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (categoryName != _sentinel)
        _$GameModelFieldMap['categoryName']!:
            _$GameModelPerFieldToJson.categoryName(categoryName as String),
      if (categoryNameFieldValue != null)
        _$GameModelFieldMap['categoryName']!: categoryNameFieldValue,
      if (containsAds != _sentinel)
        _$GameModelFieldMap['containsAds']!:
            _$GameModelPerFieldToJson.containsAds(containsAds as bool),
      if (containsAdsFieldValue != null)
        _$GameModelFieldMap['containsAds']!: containsAdsFieldValue,
      if (coverImageRectUrl != _sentinel)
        _$GameModelFieldMap['coverImageRectUrl']!: _$GameModelPerFieldToJson
            .coverImageRectUrl(coverImageRectUrl as String?),
      if (coverImageRectUrlFieldValue != null)
        _$GameModelFieldMap['coverImageRectUrl']!: coverImageRectUrlFieldValue,
      if (createdAt != _sentinel)
        _$GameModelFieldMap['createdAt']!:
            _$GameModelPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$GameModelFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadSize != _sentinel)
        _$GameModelFieldMap['downloadSize']!:
            _$GameModelPerFieldToJson.downloadSize(downloadSize as int),
      if (downloadSizeFieldValue != null)
        _$GameModelFieldMap['downloadSize']!: downloadSizeFieldValue,
      if (downloadsCount != _sentinel)
        _$GameModelFieldMap['downloadsCount']!:
            _$GameModelPerFieldToJson.downloadsCount(downloadsCount as int),
      if (downloadsCountFieldValue != null)
        _$GameModelFieldMap['downloadsCount']!: downloadsCountFieldValue,
      if (hasInAppPurchases != _sentinel)
        _$GameModelFieldMap['hasInAppPurchases']!: _$GameModelPerFieldToJson
            .hasInAppPurchases(hasInAppPurchases as bool),
      if (hasInAppPurchasesFieldValue != null)
        _$GameModelFieldMap['hasInAppPurchases']!: hasInAppPurchasesFieldValue,
      if (logoImageSquareUrl != _sentinel)
        _$GameModelFieldMap['logoImageSquareUrl']!: _$GameModelPerFieldToJson
            .logoImageSquareUrl(logoImageSquareUrl as String),
      if (logoImageSquareUrlFieldValue != null)
        _$GameModelFieldMap['logoImageSquareUrl']!:
            logoImageSquareUrlFieldValue,
      if (minAgeRequirement != _sentinel)
        _$GameModelFieldMap['minAgeRequirement']!: _$GameModelPerFieldToJson
            .minAgeRequirement(minAgeRequirement as int),
      if (minAgeRequirementFieldValue != null)
        _$GameModelFieldMap['minAgeRequirement']!: minAgeRequirementFieldValue,
      if (notesAverage != _sentinel)
        _$GameModelFieldMap['notesAverage']!:
            _$GameModelPerFieldToJson.notesAverage(notesAverage as int?),
      if (notesAverageFieldValue != null)
        _$GameModelFieldMap['notesAverage']!: notesAverageFieldValue,
      if (notesCount != _sentinel)
        _$GameModelFieldMap['notesCount']!:
            _$GameModelPerFieldToJson.notesCount(notesCount as int?),
      if (notesCountFieldValue != null)
        _$GameModelFieldMap['notesCount']!: notesCountFieldValue,
      if (packageName != _sentinel)
        _$GameModelFieldMap['packageName']!:
            _$GameModelPerFieldToJson.packageName(packageName as String),
      if (packageNameFieldValue != null)
        _$GameModelFieldMap['packageName']!: packageNameFieldValue,
      if (privacyPolicyLinkUrl != _sentinel)
        _$GameModelFieldMap['privacyPolicyLinkUrl']!: _$GameModelPerFieldToJson
            .privacyPolicyLinkUrl(privacyPolicyLinkUrl as String),
      if (privacyPolicyLinkUrlFieldValue != null)
        _$GameModelFieldMap['privacyPolicyLinkUrl']!:
            privacyPolicyLinkUrlFieldValue,
      if (publisherId != _sentinel)
        _$GameModelFieldMap['publisherId']!:
            _$GameModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$GameModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$GameModelFieldMap['publisherName']!:
            _$GameModelPerFieldToJson.publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$GameModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (releaseFileMainUrl != _sentinel)
        _$GameModelFieldMap['releaseFileMainUrl']!: _$GameModelPerFieldToJson
            .releaseFileMainUrl(releaseFileMainUrl as String),
      if (releaseFileMainUrlFieldValue != null)
        _$GameModelFieldMap['releaseFileMainUrl']!:
            releaseFileMainUrlFieldValue,
      if (trailerVideoUrl != _sentinel)
        _$GameModelFieldMap['trailerVideoUrl']!: _$GameModelPerFieldToJson
            .trailerVideoUrl(trailerVideoUrl as String?),
      if (trailerVideoUrlFieldValue != null)
        _$GameModelFieldMap['trailerVideoUrl']!: trailerVideoUrlFieldValue,
      if (updatedAt != _sentinel)
        _$GameModelFieldMap['updatedAt']!:
            _$GameModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$GameModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (websiteUrl != _sentinel)
        _$GameModelFieldMap['websiteUrl']!:
            _$GameModelPerFieldToJson.websiteUrl(websiteUrl as String?),
      if (websiteUrlFieldValue != null)
        _$GameModelFieldMap['websiteUrl']!: websiteUrlFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is GameModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class GameModelQuery
    implements QueryReference<GameModel, GameModelQuerySnapshot> {
  @override
  GameModelQuery limit(int limit);

  @override
  GameModelQuery limitToLast(int limit);

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
  GameModelQuery whereFieldPath(
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

  GameModelQuery whereDocumentId({
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

  GameModelQuery whereAddress({
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

  GameModelQuery whereDescription({
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

  GameModelQuery whereEmail({
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

  GameModelQuery whereName({
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

  GameModelQuery wherePhone({
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

  GameModelQuery wherePrice({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery whereScreenshots({
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

  GameModelQuery whereTags({
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

  GameModelQuery whereType({
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

  GameModelQuery whereVersion({
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

  GameModelQuery whereCategoryId({
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

  GameModelQuery whereCategoryName({
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

  GameModelQuery whereContainsAds({
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

  GameModelQuery whereCoverImageRectUrl({
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

  GameModelQuery whereCreatedAt({
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

  GameModelQuery whereDownloadSize({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery whereDownloadsCount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery whereHasInAppPurchases({
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

  GameModelQuery whereLogoImageSquareUrl({
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

  GameModelQuery whereMinAgeRequirement({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery whereNotesAverage({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery whereNotesCount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

  GameModelQuery wherePackageName({
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

  GameModelQuery wherePrivacyPolicyLinkUrl({
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

  GameModelQuery wherePublisherId({
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

  GameModelQuery wherePublisherName({
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

  GameModelQuery whereReleaseFileMainUrl({
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

  GameModelQuery whereTrailerVideoUrl({
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

  GameModelQuery whereUpdatedAt({
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

  GameModelQuery whereWebsiteUrl({
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
  GameModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPhone({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPrice({
    bool descending = false,
    double? startAt,
    double? startAfter,
    double? endAt,
    double? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByScreenshots({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByTags({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByVersion({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByCategoryId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByCategoryName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByContainsAds({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByCoverImageRectUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByDownloadSize({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByDownloadsCount({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByHasInAppPurchases({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByLogoImageSquareUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByMinAgeRequirement({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByNotesAverage({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByNotesCount({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPackageName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPrivacyPolicyLinkUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPublisherId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByPublisherName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByReleaseFileMainUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByTrailerVideoUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });

  GameModelQuery orderByWebsiteUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  });
}

class _$GameModelQuery extends QueryReference<GameModel, GameModelQuerySnapshot>
    implements GameModelQuery {
  _$GameModelQuery(
    this._collection, {
    required Query<GameModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<GameModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(GameModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<GameModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(GameModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  GameModelQuery limit(int limit) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery limitToLast(int limit) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereFieldPath(
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
    return _$GameModelQuery(
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
  GameModelQuery whereDocumentId({
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
    return _$GameModelQuery(
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
  GameModelQuery whereAddress({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['address']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.address(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.address(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.address(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.address(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.address(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .address(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.address(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.address(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereDescription({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereEmail({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$GameModelPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereName({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$GameModelPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePhone({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['phone']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.phone(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.phone(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.phone(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.phone(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.phone(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.phone(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.phone(e)),
        whereNotIn: whereNotIn?.map((e) => _$GameModelPerFieldToJson.phone(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePrice({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double?>? whereIn,
    List<double?>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['price']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.price(isEqualTo as double?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.price(isNotEqualTo as double?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.price(isLessThan as double?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.price(isLessThanOrEqualTo as double?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.price(isGreaterThan as double?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.price(isGreaterThanOrEqualTo as double?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.price(e)),
        whereNotIn: whereNotIn?.map((e) => _$GameModelPerFieldToJson.price(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereScreenshots({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['screenshots']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.screenshots(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .screenshots(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.screenshots(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .screenshots(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .screenshots(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .screenshots(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$GameModelPerFieldToJson.screenshots([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$GameModelPerFieldToJson.screenshots(arrayContainsAny)
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
  GameModelQuery whereTags({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['tags']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.tags(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.tags(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.tags(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .tags(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.tags(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .tags(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$GameModelPerFieldToJson.tags([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$GameModelPerFieldToJson.tags(arrayContainsAny)
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
  GameModelQuery whereType({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.type(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.type(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.type(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.type(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.type(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.type(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map((e) => _$GameModelPerFieldToJson.type(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereVersion({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['version']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.version(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.version(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.version(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.version(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.version(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .version(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.version(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.version(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereCategoryId({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['categoryId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.categoryId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.categoryId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.categoryId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .categoryId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.categoryId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .categoryId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.categoryId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.categoryId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereCategoryName({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['categoryName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.categoryName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.categoryName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.categoryName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .categoryName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.categoryName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .categoryName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.categoryName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.categoryName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereContainsAds({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['containsAds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.containsAds(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.containsAds(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.containsAds(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.containsAds(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.containsAds(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .containsAds(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.containsAds(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.containsAds(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereCoverImageRectUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['coverImageRectUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.coverImageRectUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .coverImageRectUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.coverImageRectUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .coverImageRectUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .coverImageRectUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .coverImageRectUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.coverImageRectUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.coverImageRectUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereCreatedAt({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereDownloadSize({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['downloadSize']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.downloadSize(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.downloadSize(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.downloadSize(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.downloadSize(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.downloadSize(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .downloadSize(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.downloadSize(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.downloadSize(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereDownloadsCount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['downloadsCount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.downloadsCount(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.downloadsCount(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.downloadsCount(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .downloadsCount(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.downloadsCount(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .downloadsCount(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.downloadsCount(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.downloadsCount(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereHasInAppPurchases({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['hasInAppPurchases']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.hasInAppPurchases(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.hasInAppPurchases(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.hasInAppPurchases(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .hasInAppPurchases(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.hasInAppPurchases(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .hasInAppPurchases(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.hasInAppPurchases(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.hasInAppPurchases(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereLogoImageSquareUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['logoImageSquareUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.logoImageSquareUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .logoImageSquareUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.logoImageSquareUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .logoImageSquareUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .logoImageSquareUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .logoImageSquareUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$GameModelPerFieldToJson.logoImageSquareUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.logoImageSquareUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereMinAgeRequirement({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['minAgeRequirement']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.minAgeRequirement(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.minAgeRequirement(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.minAgeRequirement(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .minAgeRequirement(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.minAgeRequirement(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .minAgeRequirement(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.minAgeRequirement(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.minAgeRequirement(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereNotesAverage({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['notesAverage']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.notesAverage(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.notesAverage(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.notesAverage(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .notesAverage(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.notesAverage(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .notesAverage(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.notesAverage(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.notesAverage(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereNotesCount({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['notesCount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.notesCount(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.notesCount(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.notesCount(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson.notesCount(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.notesCount(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .notesCount(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.notesCount(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.notesCount(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePackageName({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['packageName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.packageName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.packageName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.packageName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .packageName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.packageName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .packageName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.packageName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.packageName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePrivacyPolicyLinkUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['privacyPolicyLinkUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .privacyPolicyLinkUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$GameModelPerFieldToJson.privacyPolicyLinkUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.privacyPolicyLinkUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePublisherId({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['publisherId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.publisherId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.publisherId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.publisherId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .publisherId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.publisherId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .publisherId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.publisherId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.publisherId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery wherePublisherName({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['publisherName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.publisherName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.publisherName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.publisherName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .publisherName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.publisherName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .publisherName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.publisherName(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.publisherName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereReleaseFileMainUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['releaseFileMainUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.releaseFileMainUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson
                .releaseFileMainUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.releaseFileMainUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .releaseFileMainUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .releaseFileMainUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .releaseFileMainUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$GameModelPerFieldToJson.releaseFileMainUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.releaseFileMainUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereTrailerVideoUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['trailerVideoUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.trailerVideoUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.trailerVideoUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.trailerVideoUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .trailerVideoUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson
                .trailerVideoUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .trailerVideoUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$GameModelPerFieldToJson.trailerVideoUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$GameModelPerFieldToJson.trailerVideoUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereUpdatedAt({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery whereWebsiteUrl({
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
    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$GameModelFieldMap['websiteUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.websiteUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$GameModelPerFieldToJson.websiteUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$GameModelPerFieldToJson.websiteUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .websiteUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$GameModelPerFieldToJson.websiteUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$GameModelPerFieldToJson
                .websiteUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$GameModelPerFieldToJson.websiteUrl(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$GameModelPerFieldToJson.websiteUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  GameModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['address']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['description']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['email']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['name']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['phone']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['price']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByScreenshots({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['screenshots']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByTags({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['tags']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$GameModelFieldMap['type']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByVersion({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['version']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByCategoryId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['categoryId']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByCategoryName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['categoryName']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByContainsAds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['containsAds']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByCoverImageRectUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['coverImageRectUrl']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['createdAt']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByDownloadSize({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['downloadSize']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByDownloadsCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['downloadsCount']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByHasInAppPurchases({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['hasInAppPurchases']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByLogoImageSquareUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['logoImageSquareUrl']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByMinAgeRequirement({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['minAgeRequirement']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByNotesAverage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['notesAverage']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByNotesCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['notesCount']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPackageName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['packageName']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPrivacyPolicyLinkUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['privacyPolicyLinkUrl']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPublisherId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['publisherId']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByPublisherName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['publisherName']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByReleaseFileMainUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['releaseFileMainUrl']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByTrailerVideoUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$GameModelFieldMap['trailerVideoUrl']!,
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['updatedAt']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  GameModelQuery orderByWebsiteUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    GameModelDocumentSnapshot? startAtDocument,
    GameModelDocumentSnapshot? endAtDocument,
    GameModelDocumentSnapshot? endBeforeDocument,
    GameModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$GameModelFieldMap['websiteUrl']!, descending: descending);
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

    return _$GameModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$GameModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class GameModelDocumentSnapshot extends FirestoreDocumentSnapshot<GameModel> {
  GameModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<GameModel> snapshot;

  @override
  GameModelDocumentReference get reference {
    return GameModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final GameModel? data;
}

class GameModelQuerySnapshot
    extends FirestoreQuerySnapshot<GameModel, GameModelQueryDocumentSnapshot> {
  GameModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory GameModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<GameModel> snapshot,
  ) {
    final docs = snapshot.docs.map(GameModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        GameModelDocumentSnapshot._,
      );
    }).toList();

    return GameModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<GameModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    GameModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<GameModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<GameModel> snapshot;

  @override
  final List<GameModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<GameModelDocumentSnapshot>> docChanges;
}

class GameModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<GameModel>
    implements GameModelDocumentSnapshot {
  GameModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<GameModel> snapshot;

  @override
  final GameModel data;

  @override
  GameModelDocumentReference get reference {
    return GameModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameModel _$GameModelFromJson(Map<String, dynamic> json) => GameModel(
      downloadSize: json['download_size'] as int,
      categoryId: json['category_id'] as String,
      categoryName: json['category_name'] as String,
      containsAds: json['contains_ads'] as bool,
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['created_at'] as Timestamp),
      description: json['description'] as String,
      downloadsCount: json['downloads_count'] as int,
      email: json['email'] as String,
      hasInAppPurchases: json['has_in_app_purchases'] as bool,
      id: json['id'] as String,
      logoImageSquareUrl: json['logo_image_square_url'] as String,
      minAgeRequirement: json['min_age_requirement'] as int,
      name: json['name'] as String,
      publisherId: json['publisher_id'] as String,
      publisherName: json['publisher_name'] as String,
      packageName: json['package_name'] as String,
      privacyPolicyLinkUrl: json['privacy_policy_link_url'] as String,
      releaseFileMainUrl: json['release_file_main_url'] as String,
      screenshots: (json['screenshots'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      version: json['version'] as String,
      address: json['address'] as String?,
      coverImageRectUrl: json['cover_image_rect_url'] as String?,
      notesAverage: json['notes_average'] as int?,
      notesCount: json['notes_count'] as int?,
      phone: json['phone'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      trailerVideoUrl: json['trailer_video_url'] as String?,
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updated_at'], const FirestoreDateTimeConverter().fromJson),
      websiteUrl: json['website_url'] as String?,
    );

const _$GameModelFieldMap = <String, String>{
  'address': 'address',
  'description': 'description',
  'email': 'email',
  'name': 'name',
  'phone': 'phone',
  'price': 'price',
  'screenshots': 'screenshots',
  'tags': 'tags',
  'version': 'version',
  'categoryId': 'category_id',
  'categoryName': 'category_name',
  'containsAds': 'contains_ads',
  'coverImageRectUrl': 'cover_image_rect_url',
  'createdAt': 'created_at',
  'downloadSize': 'download_size',
  'downloadsCount': 'downloads_count',
  'hasInAppPurchases': 'has_in_app_purchases',
  'id': 'id',
  'logoImageSquareUrl': 'logo_image_square_url',
  'minAgeRequirement': 'min_age_requirement',
  'notesAverage': 'notes_average',
  'notesCount': 'notes_count',
  'packageName': 'package_name',
  'privacyPolicyLinkUrl': 'privacy_policy_link_url',
  'publisherId': 'publisher_id',
  'publisherName': 'publisher_name',
  'releaseFileMainUrl': 'release_file_main_url',
  'trailerVideoUrl': 'trailer_video_url',
  'updatedAt': 'updated_at',
  'websiteUrl': 'website_url',
};

// ignore: unused_element
abstract class _$GameModelPerFieldToJson {
  // ignore: unused_element
  static Object? address(String? instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? phone(String? instance) => instance;
  // ignore: unused_element
  static Object? price(double? instance) => instance;
  // ignore: unused_element
  static Object? screenshots(List<String> instance) => instance;
  // ignore: unused_element
  static Object? tags(List<String> instance) => instance;
  // ignore: unused_element
  static Object? version(String instance) => instance;
  // ignore: unused_element
  static Object? categoryId(String instance) => instance;
  // ignore: unused_element
  static Object? categoryName(String instance) => instance;
  // ignore: unused_element
  static Object? containsAds(bool instance) => instance;
  // ignore: unused_element
  static Object? coverImageRectUrl(String? instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? downloadSize(int instance) => instance;
  // ignore: unused_element
  static Object? downloadsCount(int instance) => instance;
  // ignore: unused_element
  static Object? hasInAppPurchases(bool instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? logoImageSquareUrl(String instance) => instance;
  // ignore: unused_element
  static Object? minAgeRequirement(int instance) => instance;
  // ignore: unused_element
  static Object? notesAverage(int? instance) => instance;
  // ignore: unused_element
  static Object? notesCount(int? instance) => instance;
  // ignore: unused_element
  static Object? packageName(String instance) => instance;
  // ignore: unused_element
  static Object? privacyPolicyLinkUrl(String instance) => instance;
  // ignore: unused_element
  static Object? publisherId(String instance) => instance;
  // ignore: unused_element
  static Object? publisherName(String instance) => instance;
  // ignore: unused_element
  static Object? releaseFileMainUrl(String instance) => instance;
  // ignore: unused_element
  static Object? trailerVideoUrl(String? instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? websiteUrl(String? instance) => instance;
}

Map<String, dynamic> _$GameModelToJson(GameModel instance) => <String, dynamic>{
      'address': instance.address,
      'description': instance.description,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'price': instance.price,
      'screenshots': instance.screenshots,
      'tags': instance.tags,
      'version': instance.version,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'contains_ads': instance.containsAds,
      'cover_image_rect_url': instance.coverImageRectUrl,
      'created_at':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'download_size': instance.downloadSize,
      'downloads_count': instance.downloadsCount,
      'has_in_app_purchases': instance.hasInAppPurchases,
      'id': instance.id,
      'logo_image_square_url': instance.logoImageSquareUrl,
      'min_age_requirement': instance.minAgeRequirement,
      'notes_average': instance.notesAverage,
      'notes_count': instance.notesCount,
      'package_name': instance.packageName,
      'privacy_policy_link_url': instance.privacyPolicyLinkUrl,
      'publisher_id': instance.publisherId,
      'publisher_name': instance.publisherName,
      'release_file_main_url': instance.releaseFileMainUrl,
      'trailer_video_url': instance.trailerVideoUrl,
      'updated_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const FirestoreDateTimeConverter().toJson),
      'website_url': instance.websiteUrl,
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
