// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

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
abstract class ApplicationModelCollectionReference
    implements
        ApplicationModelQuery,
        FirestoreCollectionReference<ApplicationModel,
            ApplicationModelQuerySnapshot> {
  factory ApplicationModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ApplicationModelCollectionReference;

  static ApplicationModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApplicationModelFromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ApplicationModel value,
    SetOptions? options,
  ) {
    return {..._$ApplicationModelToJson(value)}..remove('id');
  }

  @override
  CollectionReference<ApplicationModel> get reference;

  @override
  ApplicationModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApplicationModelDocumentReference> add(ApplicationModel value);
}

class _$ApplicationModelCollectionReference extends _$ApplicationModelQuery
    implements ApplicationModelCollectionReference {
  factory _$ApplicationModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ApplicationModelCollectionReference._(
      firestore.collection('apps').withConverter(
            fromFirestore: ApplicationModelCollectionReference.fromFirestore,
            toFirestore: ApplicationModelCollectionReference.toFirestore,
          ),
    );
  }

  _$ApplicationModelCollectionReference._(
    CollectionReference<ApplicationModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ApplicationModel> get reference =>
      super.reference as CollectionReference<ApplicationModel>;

  @override
  ApplicationModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApplicationModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApplicationModelDocumentReference> add(ApplicationModel value) {
    return reference
        .add(value)
        .then((ref) => ApplicationModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApplicationModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApplicationModelDocumentReference
    extends FirestoreDocumentReference<ApplicationModel,
        ApplicationModelDocumentSnapshot> {
  factory ApplicationModelDocumentReference(
          DocumentReference<ApplicationModel> reference) =
      _$ApplicationModelDocumentReference;

  DocumentReference<ApplicationModel> get reference;

  /// A reference to the [ApplicationModelCollectionReference] containing this document.
  ApplicationModelCollectionReference get parent {
    return _$ApplicationModelCollectionReference(reference.firestore);
  }

  late final ApplicationReleaseCollectionReference releases =
      _$ApplicationReleaseCollectionReference(
    reference,
  );

  @override
  Stream<ApplicationModelDocumentSnapshot> snapshots();

  @override
  Future<ApplicationModelDocumentSnapshot> get([GetOptions? options]);

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
    List<String> screenshots,
    FieldValue screenshotsFieldValue,
    String? status,
    FieldValue statusFieldValue,
    List<String> tags,
    FieldValue tagsFieldValue,
    String? version,
    FieldValue versionFieldValue,
    String? actualReleaseId,
    FieldValue actualReleaseIdFieldValue,
    String? assetId,
    FieldValue assetIdFieldValue,
    String appType,
    FieldValue appTypeFieldValue,
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
    double? notesAverage,
    FieldValue notesAverageFieldValue,
    int? notesCount,
    FieldValue notesCountFieldValue,
    String packageName,
    FieldValue packageNameFieldValue,
    double price,
    FieldValue priceFieldValue,
    String privacyPolicyLinkUrl,
    FieldValue privacyPolicyLinkUrlFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime? publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String? releaseFileMainUrl,
    FieldValue releaseFileMainUrlFieldValue,
    String? trailerVideoUrl,
    FieldValue trailerVideoUrlFieldValue,
    DateTime? unPublishedAt,
    FieldValue unPublishedAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    int? versionCode,
    FieldValue versionCodeFieldValue,
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
    List<String> screenshots,
    FieldValue screenshotsFieldValue,
    String? status,
    FieldValue statusFieldValue,
    List<String> tags,
    FieldValue tagsFieldValue,
    String? version,
    FieldValue versionFieldValue,
    String? actualReleaseId,
    FieldValue actualReleaseIdFieldValue,
    String? assetId,
    FieldValue assetIdFieldValue,
    String appType,
    FieldValue appTypeFieldValue,
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
    double? notesAverage,
    FieldValue notesAverageFieldValue,
    int? notesCount,
    FieldValue notesCountFieldValue,
    String packageName,
    FieldValue packageNameFieldValue,
    double price,
    FieldValue priceFieldValue,
    String privacyPolicyLinkUrl,
    FieldValue privacyPolicyLinkUrlFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime? publishedAt,
    FieldValue publishedAtFieldValue,
    String publisherId,
    FieldValue publisherIdFieldValue,
    String publisherName,
    FieldValue publisherNameFieldValue,
    String? releaseFileMainUrl,
    FieldValue releaseFileMainUrlFieldValue,
    String? trailerVideoUrl,
    FieldValue trailerVideoUrlFieldValue,
    DateTime? unPublishedAt,
    FieldValue unPublishedAtFieldValue,
    DateTime? updatedAt,
    FieldValue updatedAtFieldValue,
    int? versionCode,
    FieldValue versionCodeFieldValue,
    String? websiteUrl,
    FieldValue websiteUrlFieldValue,
  });
}

class _$ApplicationModelDocumentReference extends FirestoreDocumentReference<
        ApplicationModel, ApplicationModelDocumentSnapshot>
    implements ApplicationModelDocumentReference {
  _$ApplicationModelDocumentReference(this.reference);

  @override
  final DocumentReference<ApplicationModel> reference;

  /// A reference to the [ApplicationModelCollectionReference] containing this document.
  ApplicationModelCollectionReference get parent {
    return _$ApplicationModelCollectionReference(reference.firestore);
  }

  late final ApplicationReleaseCollectionReference releases =
      _$ApplicationReleaseCollectionReference(
    reference,
  );

  @override
  Stream<ApplicationModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ApplicationModelDocumentSnapshot._);
  }

  @override
  Future<ApplicationModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApplicationModelDocumentSnapshot._);
  }

  @override
  Future<ApplicationModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(ApplicationModelDocumentSnapshot._);
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
    Object? screenshots = _sentinel,
    FieldValue? screenshotsFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? actualReleaseId = _sentinel,
    FieldValue? actualReleaseIdFieldValue,
    Object? assetId = _sentinel,
    FieldValue? assetIdFieldValue,
    Object? appType = _sentinel,
    FieldValue? appTypeFieldValue,
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
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? privacyPolicyLinkUrl = _sentinel,
    FieldValue? privacyPolicyLinkUrlFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? releaseFileMainUrl = _sentinel,
    FieldValue? releaseFileMainUrlFieldValue,
    Object? trailerVideoUrl = _sentinel,
    FieldValue? trailerVideoUrlFieldValue,
    Object? unPublishedAt = _sentinel,
    FieldValue? unPublishedAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? versionCode = _sentinel,
    FieldValue? versionCodeFieldValue,
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
      screenshots == _sentinel || screenshotsFieldValue == null,
      "Cannot specify both screenshots and screenshotsFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      actualReleaseId == _sentinel || actualReleaseIdFieldValue == null,
      "Cannot specify both actualReleaseId and actualReleaseIdFieldValue",
    );
    assert(
      assetId == _sentinel || assetIdFieldValue == null,
      "Cannot specify both assetId and assetIdFieldValue",
    );
    assert(
      appType == _sentinel || appTypeFieldValue == null,
      "Cannot specify both appType and appTypeFieldValue",
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
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      privacyPolicyLinkUrl == _sentinel ||
          privacyPolicyLinkUrlFieldValue == null,
      "Cannot specify both privacyPolicyLinkUrl and privacyPolicyLinkUrlFieldValue",
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
      releaseFileMainUrl == _sentinel || releaseFileMainUrlFieldValue == null,
      "Cannot specify both releaseFileMainUrl and releaseFileMainUrlFieldValue",
    );
    assert(
      trailerVideoUrl == _sentinel || trailerVideoUrlFieldValue == null,
      "Cannot specify both trailerVideoUrl and trailerVideoUrlFieldValue",
    );
    assert(
      unPublishedAt == _sentinel || unPublishedAtFieldValue == null,
      "Cannot specify both unPublishedAt and unPublishedAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      versionCode == _sentinel || versionCodeFieldValue == null,
      "Cannot specify both versionCode and versionCodeFieldValue",
    );
    assert(
      websiteUrl == _sentinel || websiteUrlFieldValue == null,
      "Cannot specify both websiteUrl and websiteUrlFieldValue",
    );
    final json = {
      if (address != _sentinel)
        _$ApplicationModelFieldMap['address']!:
            _$ApplicationModelPerFieldToJson.address(address as String?),
      if (addressFieldValue != null)
        _$ApplicationModelFieldMap['address']!: addressFieldValue,
      if (description != _sentinel)
        _$ApplicationModelFieldMap['description']!:
            _$ApplicationModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ApplicationModelFieldMap['description']!: descriptionFieldValue,
      if (email != _sentinel)
        _$ApplicationModelFieldMap['email']!:
            _$ApplicationModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$ApplicationModelFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$ApplicationModelFieldMap['name']!:
            _$ApplicationModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ApplicationModelFieldMap['name']!: nameFieldValue,
      if (phone != _sentinel)
        _$ApplicationModelFieldMap['phone']!:
            _$ApplicationModelPerFieldToJson.phone(phone as String?),
      if (phoneFieldValue != null)
        _$ApplicationModelFieldMap['phone']!: phoneFieldValue,
      if (screenshots != _sentinel)
        _$ApplicationModelFieldMap['screenshots']!:
            _$ApplicationModelPerFieldToJson
                .screenshots(screenshots as List<String>),
      if (screenshotsFieldValue != null)
        _$ApplicationModelFieldMap['screenshots']!: screenshotsFieldValue,
      if (status != _sentinel)
        _$ApplicationModelFieldMap['status']!:
            _$ApplicationModelPerFieldToJson.status(status as String?),
      if (statusFieldValue != null)
        _$ApplicationModelFieldMap['status']!: statusFieldValue,
      if (tags != _sentinel)
        _$ApplicationModelFieldMap['tags']!:
            _$ApplicationModelPerFieldToJson.tags(tags as List<String>),
      if (tagsFieldValue != null)
        _$ApplicationModelFieldMap['tags']!: tagsFieldValue,
      if (version != _sentinel)
        _$ApplicationModelFieldMap['version']!:
            _$ApplicationModelPerFieldToJson.version(version as String?),
      if (versionFieldValue != null)
        _$ApplicationModelFieldMap['version']!: versionFieldValue,
      if (actualReleaseId != _sentinel)
        _$ApplicationModelFieldMap['actualReleaseId']!:
            _$ApplicationModelPerFieldToJson
                .actualReleaseId(actualReleaseId as String?),
      if (actualReleaseIdFieldValue != null)
        _$ApplicationModelFieldMap['actualReleaseId']!:
            actualReleaseIdFieldValue,
      if (assetId != _sentinel)
        _$ApplicationModelFieldMap['assetId']!:
            _$ApplicationModelPerFieldToJson.assetId(assetId as String?),
      if (assetIdFieldValue != null)
        _$ApplicationModelFieldMap['assetId']!: assetIdFieldValue,
      if (appType != _sentinel)
        _$ApplicationModelFieldMap['appType']!:
            _$ApplicationModelPerFieldToJson.appType(appType as String),
      if (appTypeFieldValue != null)
        _$ApplicationModelFieldMap['appType']!: appTypeFieldValue,
      if (categoryId != _sentinel)
        _$ApplicationModelFieldMap['categoryId']!:
            _$ApplicationModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$ApplicationModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (categoryName != _sentinel)
        _$ApplicationModelFieldMap['categoryName']!:
            _$ApplicationModelPerFieldToJson
                .categoryName(categoryName as String),
      if (categoryNameFieldValue != null)
        _$ApplicationModelFieldMap['categoryName']!: categoryNameFieldValue,
      if (containsAds != _sentinel)
        _$ApplicationModelFieldMap['containsAds']!:
            _$ApplicationModelPerFieldToJson.containsAds(containsAds as bool),
      if (containsAdsFieldValue != null)
        _$ApplicationModelFieldMap['containsAds']!: containsAdsFieldValue,
      if (coverImageRectUrl != _sentinel)
        _$ApplicationModelFieldMap['coverImageRectUrl']!:
            _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(coverImageRectUrl as String?),
      if (coverImageRectUrlFieldValue != null)
        _$ApplicationModelFieldMap['coverImageRectUrl']!:
            coverImageRectUrlFieldValue,
      if (createdAt != _sentinel)
        _$ApplicationModelFieldMap['createdAt']!:
            _$ApplicationModelPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ApplicationModelFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadSize != _sentinel)
        _$ApplicationModelFieldMap['downloadSize']!:
            _$ApplicationModelPerFieldToJson.downloadSize(downloadSize as int),
      if (downloadSizeFieldValue != null)
        _$ApplicationModelFieldMap['downloadSize']!: downloadSizeFieldValue,
      if (downloadsCount != _sentinel)
        _$ApplicationModelFieldMap['downloadsCount']!:
            _$ApplicationModelPerFieldToJson
                .downloadsCount(downloadsCount as int),
      if (downloadsCountFieldValue != null)
        _$ApplicationModelFieldMap['downloadsCount']!: downloadsCountFieldValue,
      if (hasInAppPurchases != _sentinel)
        _$ApplicationModelFieldMap['hasInAppPurchases']!:
            _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(hasInAppPurchases as bool),
      if (hasInAppPurchasesFieldValue != null)
        _$ApplicationModelFieldMap['hasInAppPurchases']!:
            hasInAppPurchasesFieldValue,
      if (logoImageSquareUrl != _sentinel)
        _$ApplicationModelFieldMap['logoImageSquareUrl']!:
            _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(logoImageSquareUrl as String),
      if (logoImageSquareUrlFieldValue != null)
        _$ApplicationModelFieldMap['logoImageSquareUrl']!:
            logoImageSquareUrlFieldValue,
      if (minAgeRequirement != _sentinel)
        _$ApplicationModelFieldMap['minAgeRequirement']!:
            _$ApplicationModelPerFieldToJson
                .minAgeRequirement(minAgeRequirement as int),
      if (minAgeRequirementFieldValue != null)
        _$ApplicationModelFieldMap['minAgeRequirement']!:
            minAgeRequirementFieldValue,
      if (notesAverage != _sentinel)
        _$ApplicationModelFieldMap['notesAverage']!:
            _$ApplicationModelPerFieldToJson
                .notesAverage(notesAverage as double?),
      if (notesAverageFieldValue != null)
        _$ApplicationModelFieldMap['notesAverage']!: notesAverageFieldValue,
      if (notesCount != _sentinel)
        _$ApplicationModelFieldMap['notesCount']!:
            _$ApplicationModelPerFieldToJson.notesCount(notesCount as int?),
      if (notesCountFieldValue != null)
        _$ApplicationModelFieldMap['notesCount']!: notesCountFieldValue,
      if (packageName != _sentinel)
        _$ApplicationModelFieldMap['packageName']!:
            _$ApplicationModelPerFieldToJson.packageName(packageName as String),
      if (packageNameFieldValue != null)
        _$ApplicationModelFieldMap['packageName']!: packageNameFieldValue,
      if (price != _sentinel)
        _$ApplicationModelFieldMap['price']!:
            _$ApplicationModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$ApplicationModelFieldMap['price']!: priceFieldValue,
      if (privacyPolicyLinkUrl != _sentinel)
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!:
            _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(privacyPolicyLinkUrl as String),
      if (privacyPolicyLinkUrlFieldValue != null)
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!:
            privacyPolicyLinkUrlFieldValue,
      if (published != _sentinel)
        _$ApplicationModelFieldMap['published']!:
            _$ApplicationModelPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$ApplicationModelFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$ApplicationModelFieldMap['publishedAt']!:
            _$ApplicationModelPerFieldToJson
                .publishedAt(publishedAt as DateTime?),
      if (publishedAtFieldValue != null)
        _$ApplicationModelFieldMap['publishedAt']!: publishedAtFieldValue,
      if (publisherId != _sentinel)
        _$ApplicationModelFieldMap['publisherId']!:
            _$ApplicationModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$ApplicationModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$ApplicationModelFieldMap['publisherName']!:
            _$ApplicationModelPerFieldToJson
                .publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$ApplicationModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (releaseFileMainUrl != _sentinel)
        _$ApplicationModelFieldMap['releaseFileMainUrl']!:
            _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(releaseFileMainUrl as String?),
      if (releaseFileMainUrlFieldValue != null)
        _$ApplicationModelFieldMap['releaseFileMainUrl']!:
            releaseFileMainUrlFieldValue,
      if (trailerVideoUrl != _sentinel)
        _$ApplicationModelFieldMap['trailerVideoUrl']!:
            _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(trailerVideoUrl as String?),
      if (trailerVideoUrlFieldValue != null)
        _$ApplicationModelFieldMap['trailerVideoUrl']!:
            trailerVideoUrlFieldValue,
      if (unPublishedAt != _sentinel)
        _$ApplicationModelFieldMap['unPublishedAt']!:
            _$ApplicationModelPerFieldToJson
                .unPublishedAt(unPublishedAt as DateTime?),
      if (unPublishedAtFieldValue != null)
        _$ApplicationModelFieldMap['unPublishedAt']!: unPublishedAtFieldValue,
      if (updatedAt != _sentinel)
        _$ApplicationModelFieldMap['updatedAt']!:
            _$ApplicationModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$ApplicationModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (versionCode != _sentinel)
        _$ApplicationModelFieldMap['versionCode']!:
            _$ApplicationModelPerFieldToJson.versionCode(versionCode as int?),
      if (versionCodeFieldValue != null)
        _$ApplicationModelFieldMap['versionCode']!: versionCodeFieldValue,
      if (websiteUrl != _sentinel)
        _$ApplicationModelFieldMap['websiteUrl']!:
            _$ApplicationModelPerFieldToJson.websiteUrl(websiteUrl as String?),
      if (websiteUrlFieldValue != null)
        _$ApplicationModelFieldMap['websiteUrl']!: websiteUrlFieldValue,
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
    Object? screenshots = _sentinel,
    FieldValue? screenshotsFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? tags = _sentinel,
    FieldValue? tagsFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? actualReleaseId = _sentinel,
    FieldValue? actualReleaseIdFieldValue,
    Object? assetId = _sentinel,
    FieldValue? assetIdFieldValue,
    Object? appType = _sentinel,
    FieldValue? appTypeFieldValue,
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
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? privacyPolicyLinkUrl = _sentinel,
    FieldValue? privacyPolicyLinkUrlFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? publisherId = _sentinel,
    FieldValue? publisherIdFieldValue,
    Object? publisherName = _sentinel,
    FieldValue? publisherNameFieldValue,
    Object? releaseFileMainUrl = _sentinel,
    FieldValue? releaseFileMainUrlFieldValue,
    Object? trailerVideoUrl = _sentinel,
    FieldValue? trailerVideoUrlFieldValue,
    Object? unPublishedAt = _sentinel,
    FieldValue? unPublishedAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? versionCode = _sentinel,
    FieldValue? versionCodeFieldValue,
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
      screenshots == _sentinel || screenshotsFieldValue == null,
      "Cannot specify both screenshots and screenshotsFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      tags == _sentinel || tagsFieldValue == null,
      "Cannot specify both tags and tagsFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      actualReleaseId == _sentinel || actualReleaseIdFieldValue == null,
      "Cannot specify both actualReleaseId and actualReleaseIdFieldValue",
    );
    assert(
      assetId == _sentinel || assetIdFieldValue == null,
      "Cannot specify both assetId and assetIdFieldValue",
    );
    assert(
      appType == _sentinel || appTypeFieldValue == null,
      "Cannot specify both appType and appTypeFieldValue",
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
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      privacyPolicyLinkUrl == _sentinel ||
          privacyPolicyLinkUrlFieldValue == null,
      "Cannot specify both privacyPolicyLinkUrl and privacyPolicyLinkUrlFieldValue",
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
      releaseFileMainUrl == _sentinel || releaseFileMainUrlFieldValue == null,
      "Cannot specify both releaseFileMainUrl and releaseFileMainUrlFieldValue",
    );
    assert(
      trailerVideoUrl == _sentinel || trailerVideoUrlFieldValue == null,
      "Cannot specify both trailerVideoUrl and trailerVideoUrlFieldValue",
    );
    assert(
      unPublishedAt == _sentinel || unPublishedAtFieldValue == null,
      "Cannot specify both unPublishedAt and unPublishedAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      versionCode == _sentinel || versionCodeFieldValue == null,
      "Cannot specify both versionCode and versionCodeFieldValue",
    );
    assert(
      websiteUrl == _sentinel || websiteUrlFieldValue == null,
      "Cannot specify both websiteUrl and websiteUrlFieldValue",
    );
    final json = {
      if (address != _sentinel)
        _$ApplicationModelFieldMap['address']!:
            _$ApplicationModelPerFieldToJson.address(address as String?),
      if (addressFieldValue != null)
        _$ApplicationModelFieldMap['address']!: addressFieldValue,
      if (description != _sentinel)
        _$ApplicationModelFieldMap['description']!:
            _$ApplicationModelPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ApplicationModelFieldMap['description']!: descriptionFieldValue,
      if (email != _sentinel)
        _$ApplicationModelFieldMap['email']!:
            _$ApplicationModelPerFieldToJson.email(email as String),
      if (emailFieldValue != null)
        _$ApplicationModelFieldMap['email']!: emailFieldValue,
      if (name != _sentinel)
        _$ApplicationModelFieldMap['name']!:
            _$ApplicationModelPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$ApplicationModelFieldMap['name']!: nameFieldValue,
      if (phone != _sentinel)
        _$ApplicationModelFieldMap['phone']!:
            _$ApplicationModelPerFieldToJson.phone(phone as String?),
      if (phoneFieldValue != null)
        _$ApplicationModelFieldMap['phone']!: phoneFieldValue,
      if (screenshots != _sentinel)
        _$ApplicationModelFieldMap['screenshots']!:
            _$ApplicationModelPerFieldToJson
                .screenshots(screenshots as List<String>),
      if (screenshotsFieldValue != null)
        _$ApplicationModelFieldMap['screenshots']!: screenshotsFieldValue,
      if (status != _sentinel)
        _$ApplicationModelFieldMap['status']!:
            _$ApplicationModelPerFieldToJson.status(status as String?),
      if (statusFieldValue != null)
        _$ApplicationModelFieldMap['status']!: statusFieldValue,
      if (tags != _sentinel)
        _$ApplicationModelFieldMap['tags']!:
            _$ApplicationModelPerFieldToJson.tags(tags as List<String>),
      if (tagsFieldValue != null)
        _$ApplicationModelFieldMap['tags']!: tagsFieldValue,
      if (version != _sentinel)
        _$ApplicationModelFieldMap['version']!:
            _$ApplicationModelPerFieldToJson.version(version as String?),
      if (versionFieldValue != null)
        _$ApplicationModelFieldMap['version']!: versionFieldValue,
      if (actualReleaseId != _sentinel)
        _$ApplicationModelFieldMap['actualReleaseId']!:
            _$ApplicationModelPerFieldToJson
                .actualReleaseId(actualReleaseId as String?),
      if (actualReleaseIdFieldValue != null)
        _$ApplicationModelFieldMap['actualReleaseId']!:
            actualReleaseIdFieldValue,
      if (assetId != _sentinel)
        _$ApplicationModelFieldMap['assetId']!:
            _$ApplicationModelPerFieldToJson.assetId(assetId as String?),
      if (assetIdFieldValue != null)
        _$ApplicationModelFieldMap['assetId']!: assetIdFieldValue,
      if (appType != _sentinel)
        _$ApplicationModelFieldMap['appType']!:
            _$ApplicationModelPerFieldToJson.appType(appType as String),
      if (appTypeFieldValue != null)
        _$ApplicationModelFieldMap['appType']!: appTypeFieldValue,
      if (categoryId != _sentinel)
        _$ApplicationModelFieldMap['categoryId']!:
            _$ApplicationModelPerFieldToJson.categoryId(categoryId as String),
      if (categoryIdFieldValue != null)
        _$ApplicationModelFieldMap['categoryId']!: categoryIdFieldValue,
      if (categoryName != _sentinel)
        _$ApplicationModelFieldMap['categoryName']!:
            _$ApplicationModelPerFieldToJson
                .categoryName(categoryName as String),
      if (categoryNameFieldValue != null)
        _$ApplicationModelFieldMap['categoryName']!: categoryNameFieldValue,
      if (containsAds != _sentinel)
        _$ApplicationModelFieldMap['containsAds']!:
            _$ApplicationModelPerFieldToJson.containsAds(containsAds as bool),
      if (containsAdsFieldValue != null)
        _$ApplicationModelFieldMap['containsAds']!: containsAdsFieldValue,
      if (coverImageRectUrl != _sentinel)
        _$ApplicationModelFieldMap['coverImageRectUrl']!:
            _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(coverImageRectUrl as String?),
      if (coverImageRectUrlFieldValue != null)
        _$ApplicationModelFieldMap['coverImageRectUrl']!:
            coverImageRectUrlFieldValue,
      if (createdAt != _sentinel)
        _$ApplicationModelFieldMap['createdAt']!:
            _$ApplicationModelPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ApplicationModelFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadSize != _sentinel)
        _$ApplicationModelFieldMap['downloadSize']!:
            _$ApplicationModelPerFieldToJson.downloadSize(downloadSize as int),
      if (downloadSizeFieldValue != null)
        _$ApplicationModelFieldMap['downloadSize']!: downloadSizeFieldValue,
      if (downloadsCount != _sentinel)
        _$ApplicationModelFieldMap['downloadsCount']!:
            _$ApplicationModelPerFieldToJson
                .downloadsCount(downloadsCount as int),
      if (downloadsCountFieldValue != null)
        _$ApplicationModelFieldMap['downloadsCount']!: downloadsCountFieldValue,
      if (hasInAppPurchases != _sentinel)
        _$ApplicationModelFieldMap['hasInAppPurchases']!:
            _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(hasInAppPurchases as bool),
      if (hasInAppPurchasesFieldValue != null)
        _$ApplicationModelFieldMap['hasInAppPurchases']!:
            hasInAppPurchasesFieldValue,
      if (logoImageSquareUrl != _sentinel)
        _$ApplicationModelFieldMap['logoImageSquareUrl']!:
            _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(logoImageSquareUrl as String),
      if (logoImageSquareUrlFieldValue != null)
        _$ApplicationModelFieldMap['logoImageSquareUrl']!:
            logoImageSquareUrlFieldValue,
      if (minAgeRequirement != _sentinel)
        _$ApplicationModelFieldMap['minAgeRequirement']!:
            _$ApplicationModelPerFieldToJson
                .minAgeRequirement(minAgeRequirement as int),
      if (minAgeRequirementFieldValue != null)
        _$ApplicationModelFieldMap['minAgeRequirement']!:
            minAgeRequirementFieldValue,
      if (notesAverage != _sentinel)
        _$ApplicationModelFieldMap['notesAverage']!:
            _$ApplicationModelPerFieldToJson
                .notesAverage(notesAverage as double?),
      if (notesAverageFieldValue != null)
        _$ApplicationModelFieldMap['notesAverage']!: notesAverageFieldValue,
      if (notesCount != _sentinel)
        _$ApplicationModelFieldMap['notesCount']!:
            _$ApplicationModelPerFieldToJson.notesCount(notesCount as int?),
      if (notesCountFieldValue != null)
        _$ApplicationModelFieldMap['notesCount']!: notesCountFieldValue,
      if (packageName != _sentinel)
        _$ApplicationModelFieldMap['packageName']!:
            _$ApplicationModelPerFieldToJson.packageName(packageName as String),
      if (packageNameFieldValue != null)
        _$ApplicationModelFieldMap['packageName']!: packageNameFieldValue,
      if (price != _sentinel)
        _$ApplicationModelFieldMap['price']!:
            _$ApplicationModelPerFieldToJson.price(price as double),
      if (priceFieldValue != null)
        _$ApplicationModelFieldMap['price']!: priceFieldValue,
      if (privacyPolicyLinkUrl != _sentinel)
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!:
            _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(privacyPolicyLinkUrl as String),
      if (privacyPolicyLinkUrlFieldValue != null)
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!:
            privacyPolicyLinkUrlFieldValue,
      if (published != _sentinel)
        _$ApplicationModelFieldMap['published']!:
            _$ApplicationModelPerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$ApplicationModelFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$ApplicationModelFieldMap['publishedAt']!:
            _$ApplicationModelPerFieldToJson
                .publishedAt(publishedAt as DateTime?),
      if (publishedAtFieldValue != null)
        _$ApplicationModelFieldMap['publishedAt']!: publishedAtFieldValue,
      if (publisherId != _sentinel)
        _$ApplicationModelFieldMap['publisherId']!:
            _$ApplicationModelPerFieldToJson.publisherId(publisherId as String),
      if (publisherIdFieldValue != null)
        _$ApplicationModelFieldMap['publisherId']!: publisherIdFieldValue,
      if (publisherName != _sentinel)
        _$ApplicationModelFieldMap['publisherName']!:
            _$ApplicationModelPerFieldToJson
                .publisherName(publisherName as String),
      if (publisherNameFieldValue != null)
        _$ApplicationModelFieldMap['publisherName']!: publisherNameFieldValue,
      if (releaseFileMainUrl != _sentinel)
        _$ApplicationModelFieldMap['releaseFileMainUrl']!:
            _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(releaseFileMainUrl as String?),
      if (releaseFileMainUrlFieldValue != null)
        _$ApplicationModelFieldMap['releaseFileMainUrl']!:
            releaseFileMainUrlFieldValue,
      if (trailerVideoUrl != _sentinel)
        _$ApplicationModelFieldMap['trailerVideoUrl']!:
            _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(trailerVideoUrl as String?),
      if (trailerVideoUrlFieldValue != null)
        _$ApplicationModelFieldMap['trailerVideoUrl']!:
            trailerVideoUrlFieldValue,
      if (unPublishedAt != _sentinel)
        _$ApplicationModelFieldMap['unPublishedAt']!:
            _$ApplicationModelPerFieldToJson
                .unPublishedAt(unPublishedAt as DateTime?),
      if (unPublishedAtFieldValue != null)
        _$ApplicationModelFieldMap['unPublishedAt']!: unPublishedAtFieldValue,
      if (updatedAt != _sentinel)
        _$ApplicationModelFieldMap['updatedAt']!:
            _$ApplicationModelPerFieldToJson.updatedAt(updatedAt as DateTime?),
      if (updatedAtFieldValue != null)
        _$ApplicationModelFieldMap['updatedAt']!: updatedAtFieldValue,
      if (versionCode != _sentinel)
        _$ApplicationModelFieldMap['versionCode']!:
            _$ApplicationModelPerFieldToJson.versionCode(versionCode as int?),
      if (versionCodeFieldValue != null)
        _$ApplicationModelFieldMap['versionCode']!: versionCodeFieldValue,
      if (websiteUrl != _sentinel)
        _$ApplicationModelFieldMap['websiteUrl']!:
            _$ApplicationModelPerFieldToJson.websiteUrl(websiteUrl as String?),
      if (websiteUrlFieldValue != null)
        _$ApplicationModelFieldMap['websiteUrl']!: websiteUrlFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ApplicationModelQuery
    implements QueryReference<ApplicationModel, ApplicationModelQuerySnapshot> {
  @override
  ApplicationModelQuery limit(int limit);

  @override
  ApplicationModelQuery limitToLast(int limit);

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
  ApplicationModelQuery whereFieldPath(
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

  ApplicationModelQuery whereDocumentId({
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

  ApplicationModelQuery whereAddress({
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

  ApplicationModelQuery whereDescription({
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

  ApplicationModelQuery whereEmail({
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

  ApplicationModelQuery whereName({
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

  ApplicationModelQuery wherePhone({
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

  ApplicationModelQuery whereScreenshots({
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

  ApplicationModelQuery whereStatus({
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

  ApplicationModelQuery whereTags({
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

  ApplicationModelQuery whereVersion({
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

  ApplicationModelQuery whereActualReleaseId({
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

  ApplicationModelQuery whereAssetId({
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

  ApplicationModelQuery whereAppType({
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

  ApplicationModelQuery whereCategoryId({
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

  ApplicationModelQuery whereCategoryName({
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

  ApplicationModelQuery whereContainsAds({
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

  ApplicationModelQuery whereCoverImageRectUrl({
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

  ApplicationModelQuery whereCreatedAt({
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

  ApplicationModelQuery whereDownloadSize({
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

  ApplicationModelQuery whereDownloadsCount({
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

  ApplicationModelQuery whereHasInAppPurchases({
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

  ApplicationModelQuery whereLogoImageSquareUrl({
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

  ApplicationModelQuery whereMinAgeRequirement({
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

  ApplicationModelQuery whereNotesAverage({
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

  ApplicationModelQuery whereNotesCount({
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

  ApplicationModelQuery wherePackageName({
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

  ApplicationModelQuery wherePrice({
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

  ApplicationModelQuery wherePrivacyPolicyLinkUrl({
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

  ApplicationModelQuery wherePublished({
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

  ApplicationModelQuery wherePublishedAt({
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

  ApplicationModelQuery wherePublisherId({
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

  ApplicationModelQuery wherePublisherName({
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

  ApplicationModelQuery whereReleaseFileMainUrl({
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

  ApplicationModelQuery whereTrailerVideoUrl({
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

  ApplicationModelQuery whereUnPublishedAt({
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

  ApplicationModelQuery whereUpdatedAt({
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

  ApplicationModelQuery whereVersionCode({
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

  ApplicationModelQuery whereWebsiteUrl({
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
  ApplicationModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPhone({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByScreenshots({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByStatus({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByTags({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByVersion({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByActualReleaseId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByAssetId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByAppType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByCategoryId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByCategoryName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByContainsAds({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByCoverImageRectUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByDownloadSize({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByDownloadsCount({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByHasInAppPurchases({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByLogoImageSquareUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByMinAgeRequirement({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByNotesAverage({
    bool descending = false,
    double? startAt,
    double? startAfter,
    double? endAt,
    double? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByNotesCount({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPackageName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPrice({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPrivacyPolicyLinkUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPublished({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPublishedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPublisherId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByPublisherName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByReleaseFileMainUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByTrailerVideoUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByUnPublishedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByUpdatedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByVersionCode({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });

  ApplicationModelQuery orderByWebsiteUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  });
}

class _$ApplicationModelQuery
    extends QueryReference<ApplicationModel, ApplicationModelQuerySnapshot>
    implements ApplicationModelQuery {
  _$ApplicationModelQuery(
    this._collection, {
    required Query<ApplicationModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApplicationModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApplicationModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApplicationModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApplicationModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApplicationModelQuery limit(int limit) {
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery limitToLast(int limit) {
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereFieldPath(
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
    return _$ApplicationModelQuery(
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
  ApplicationModelQuery whereDocumentId({
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
    return _$ApplicationModelQuery(
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
  ApplicationModelQuery whereAddress({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['address']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.address(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.address(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.address(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .address(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.address(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .address(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.address(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.address(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereDescription({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereEmail({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ApplicationModelPerFieldToJson.email(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereName({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ApplicationModelPerFieldToJson.name(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePhone({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['phone']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.phone(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.phone(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.phone(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .phone(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.phone(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .phone(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$ApplicationModelPerFieldToJson.phone(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.phone(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereScreenshots({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['screenshots']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .screenshots(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ApplicationModelPerFieldToJson
                    .screenshots([arrayContains as String]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ApplicationModelPerFieldToJson.screenshots(arrayContainsAny)
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
  ApplicationModelQuery whereStatus({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['status']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.status(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.status(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.status(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .status(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.status(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .status(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.status(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.status(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereTags({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['tags']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.tags(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .tags(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.tags(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .tags(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .tags(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .tags(isGreaterThanOrEqualTo as List<String>)
            : null,
        arrayContains: arrayContains != null
            ? (_$ApplicationModelPerFieldToJson.tags([arrayContains as String])
                    as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$ApplicationModelPerFieldToJson.tags(arrayContainsAny)
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
  ApplicationModelQuery whereVersion({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['version']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.version(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.version(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.version(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .version(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.version(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .version(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.version(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.version(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereActualReleaseId({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['actualReleaseId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .actualReleaseId(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.actualReleaseId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.actualReleaseId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereAssetId({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['assetId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.assetId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.assetId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.assetId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .assetId(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.assetId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .assetId(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.assetId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.assetId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereAppType({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['appType']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.appType(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.appType(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.appType(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .appType(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.appType(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .appType(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.appType(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.appType(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereCategoryId({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['categoryId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.categoryId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .categoryId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.categoryId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .categoryId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .categoryId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .categoryId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.categoryId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.categoryId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereCategoryName({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['categoryName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.categoryName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .categoryName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .categoryName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .categoryName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .categoryName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .categoryName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.categoryName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.categoryName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereContainsAds({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['containsAds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.containsAds(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.containsAds(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.containsAds(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .containsAds(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .containsAds(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .containsAds(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.containsAds(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.containsAds(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereCoverImageRectUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['coverImageRectUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .coverImageRectUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.coverImageRectUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.coverImageRectUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereCreatedAt({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereDownloadSize({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['downloadSize']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.downloadSize(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.downloadSize(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.downloadSize(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .downloadSize(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .downloadSize(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .downloadSize(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.downloadSize(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.downloadSize(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereDownloadsCount({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['downloadsCount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.downloadsCount(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .downloadsCount(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.downloadsCount(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .downloadsCount(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .downloadsCount(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .downloadsCount(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.downloadsCount(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.downloadsCount(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereHasInAppPurchases({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['hasInAppPurchases']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .hasInAppPurchases(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.hasInAppPurchases(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.hasInAppPurchases(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereLogoImageSquareUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['logoImageSquareUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .logoImageSquareUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.logoImageSquareUrl(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.logoImageSquareUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereMinAgeRequirement({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['minAgeRequirement']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .minAgeRequirement(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.minAgeRequirement(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.minAgeRequirement(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereNotesAverage({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['notesAverage']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isEqualTo as double?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isNotEqualTo as double?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isLessThan as double?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isLessThanOrEqualTo as double?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isGreaterThan as double?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .notesAverage(isGreaterThanOrEqualTo as double?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.notesAverage(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.notesAverage(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereNotesCount({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['notesCount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.notesCount(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.notesCount(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.notesCount(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .notesCount(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.notesCount(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .notesCount(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.notesCount(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.notesCount(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePackageName({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['packageName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.packageName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .packageName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.packageName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .packageName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .packageName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .packageName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.packageName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.packageName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePrice({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['price']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.price(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.price(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.price(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .price(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.price(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .price(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$ApplicationModelPerFieldToJson.price(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationModelPerFieldToJson.price(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePrivacyPolicyLinkUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .privacyPolicyLinkUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.privacyPolicyLinkUrl(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.privacyPolicyLinkUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePublished({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['published']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.published(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.published(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.published(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .published(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson.published(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .published(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.published(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.published(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePublishedAt({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['publishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publishedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publishedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePublisherId({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['publisherId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.publisherId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .publisherId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.publisherId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publisherId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .publisherId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publisherId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publisherId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publisherId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery wherePublisherName({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['publisherName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .publisherName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publisherName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.publisherName(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereReleaseFileMainUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['releaseFileMainUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .releaseFileMainUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.releaseFileMainUrl(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$ApplicationModelPerFieldToJson.releaseFileMainUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereTrailerVideoUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['trailerVideoUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .trailerVideoUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.trailerVideoUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.trailerVideoUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereUnPublishedAt({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['unPublishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .unPublishedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.unPublishedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.unPublishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereUpdatedAt({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.updatedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .updatedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson
                .updatedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .updatedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereVersionCode({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['versionCode']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.versionCode(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.versionCode(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.versionCode(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .versionCode(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .versionCode(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .versionCode(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.versionCode(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.versionCode(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery whereWebsiteUrl({
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
    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationModelFieldMap['websiteUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson.websiteUrl(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationModelPerFieldToJson
                .websiteUrl(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationModelPerFieldToJson.websiteUrl(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .websiteUrl(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationModelPerFieldToJson
                .websiteUrl(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationModelPerFieldToJson
                .websiteUrl(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationModelPerFieldToJson.websiteUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationModelPerFieldToJson.websiteUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['address']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['description']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['email']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['name']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['phone']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByScreenshots({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['screenshots']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['status']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByTags({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['tags']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByVersion({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['version']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByActualReleaseId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['actualReleaseId']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByAssetId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['assetId']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByAppType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['appType']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByCategoryId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['categoryId']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByCategoryName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['categoryName']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByContainsAds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['containsAds']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByCoverImageRectUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['coverImageRectUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['createdAt']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByDownloadSize({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['downloadSize']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByDownloadsCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['downloadsCount']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByHasInAppPurchases({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['hasInAppPurchases']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByLogoImageSquareUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['logoImageSquareUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByMinAgeRequirement({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['minAgeRequirement']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByNotesAverage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['notesAverage']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByNotesCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['notesCount']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPackageName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['packageName']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationModelFieldMap['price']!, descending: descending);
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPrivacyPolicyLinkUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['privacyPolicyLinkUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPublished({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['published']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['publishedAt']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPublisherId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['publisherId']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByPublisherName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['publisherName']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByReleaseFileMainUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['releaseFileMainUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByTrailerVideoUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['trailerVideoUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByUnPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['unPublishedAt']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['updatedAt']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByVersionCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['versionCode']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationModelQuery orderByWebsiteUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationModelDocumentSnapshot? startAtDocument,
    ApplicationModelDocumentSnapshot? endAtDocument,
    ApplicationModelDocumentSnapshot? endBeforeDocument,
    ApplicationModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationModelFieldMap['websiteUrl']!,
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

    return _$ApplicationModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApplicationModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApplicationModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApplicationModel> {
  ApplicationModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ApplicationModel> snapshot;

  @override
  ApplicationModelDocumentReference get reference {
    return ApplicationModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApplicationModel? data;
}

class ApplicationModelQuerySnapshot extends FirestoreQuerySnapshot<
    ApplicationModel, ApplicationModelQueryDocumentSnapshot> {
  ApplicationModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApplicationModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApplicationModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApplicationModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApplicationModelDocumentSnapshot._,
      );
    }).toList();

    return ApplicationModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApplicationModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApplicationModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ApplicationModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ApplicationModel> snapshot;

  @override
  final List<ApplicationModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApplicationModelDocumentSnapshot>>
      docChanges;
}

class ApplicationModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApplicationModel>
    implements ApplicationModelDocumentSnapshot {
  ApplicationModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApplicationModel> snapshot;

  @override
  final ApplicationModel data;

  @override
  ApplicationModelDocumentReference get reference {
    return ApplicationModelDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ApplicationReleaseCollectionReference
    implements
        ApplicationReleaseQuery,
        FirestoreCollectionReference<ApplicationRelease,
            ApplicationReleaseQuerySnapshot> {
  factory ApplicationReleaseCollectionReference(
    DocumentReference<ApplicationModel> parent,
  ) = _$ApplicationReleaseCollectionReference;

  static ApplicationRelease fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$ApplicationReleaseFromJson(
        {'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ApplicationRelease value,
    SetOptions? options,
  ) {
    return {..._$ApplicationReleaseToJson(value)}..remove('id');
  }

  @override
  CollectionReference<ApplicationRelease> get reference;

  /// A reference to the containing [ApplicationModelDocumentReference] if this is a subcollection.
  ApplicationModelDocumentReference get parent;

  @override
  ApplicationReleaseDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ApplicationReleaseDocumentReference> add(ApplicationRelease value);
}

class _$ApplicationReleaseCollectionReference extends _$ApplicationReleaseQuery
    implements ApplicationReleaseCollectionReference {
  factory _$ApplicationReleaseCollectionReference(
    DocumentReference<ApplicationModel> parent,
  ) {
    return _$ApplicationReleaseCollectionReference._(
      ApplicationModelDocumentReference(parent),
      parent.collection('releases').withConverter(
            fromFirestore: ApplicationReleaseCollectionReference.fromFirestore,
            toFirestore: ApplicationReleaseCollectionReference.toFirestore,
          ),
    );
  }

  _$ApplicationReleaseCollectionReference._(
    this.parent,
    CollectionReference<ApplicationRelease> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final ApplicationModelDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<ApplicationRelease> get reference =>
      super.reference as CollectionReference<ApplicationRelease>;

  @override
  ApplicationReleaseDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ApplicationReleaseDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ApplicationReleaseDocumentReference> add(ApplicationRelease value) {
    return reference
        .add(value)
        .then((ref) => ApplicationReleaseDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApplicationReleaseCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ApplicationReleaseDocumentReference
    extends FirestoreDocumentReference<ApplicationRelease,
        ApplicationReleaseDocumentSnapshot> {
  factory ApplicationReleaseDocumentReference(
          DocumentReference<ApplicationRelease> reference) =
      _$ApplicationReleaseDocumentReference;

  DocumentReference<ApplicationRelease> get reference;

  /// A reference to the [ApplicationReleaseCollectionReference] containing this document.
  ApplicationReleaseCollectionReference get parent {
    return _$ApplicationReleaseCollectionReference(
      reference.parent.parent!.withConverter<ApplicationModel>(
        fromFirestore: ApplicationModelCollectionReference.fromFirestore,
        toFirestore: ApplicationModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ApplicationReleaseDocumentSnapshot> snapshots();

  @override
  Future<ApplicationReleaseDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? logo,
    FieldValue logoFieldValue,
    int size,
    FieldValue sizeFieldValue,
    String version,
    FieldValue versionFieldValue,
    DateTime addedAt,
    FieldValue addedAtFieldValue,
    String applicationId,
    FieldValue applicationIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    int? downloadsCount,
    FieldValue downloadsCountFieldValue,
    String fileDownloadUrl,
    FieldValue fileDownloadUrlFieldValue,
    bool isBeta,
    FieldValue isBetaFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime? publishedAt,
    FieldValue publishedAtFieldValue,
    String releasesNotes,
    FieldValue releasesNotesFieldValue,
    String? scanHash,
    FieldValue scanHashFieldValue,
    int? scanScore,
    FieldValue scanScoreFieldValue,
    DateTime? unPublishedAt,
    FieldValue unPublishedAtFieldValue,
    int? versionCode,
    FieldValue versionCodeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? logo,
    FieldValue logoFieldValue,
    int size,
    FieldValue sizeFieldValue,
    String version,
    FieldValue versionFieldValue,
    DateTime addedAt,
    FieldValue addedAtFieldValue,
    String applicationId,
    FieldValue applicationIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    int? downloadsCount,
    FieldValue downloadsCountFieldValue,
    String fileDownloadUrl,
    FieldValue fileDownloadUrlFieldValue,
    bool isBeta,
    FieldValue isBetaFieldValue,
    bool published,
    FieldValue publishedFieldValue,
    DateTime? publishedAt,
    FieldValue publishedAtFieldValue,
    String releasesNotes,
    FieldValue releasesNotesFieldValue,
    String? scanHash,
    FieldValue scanHashFieldValue,
    int? scanScore,
    FieldValue scanScoreFieldValue,
    DateTime? unPublishedAt,
    FieldValue unPublishedAtFieldValue,
    int? versionCode,
    FieldValue versionCodeFieldValue,
  });
}

class _$ApplicationReleaseDocumentReference extends FirestoreDocumentReference<
        ApplicationRelease, ApplicationReleaseDocumentSnapshot>
    implements ApplicationReleaseDocumentReference {
  _$ApplicationReleaseDocumentReference(this.reference);

  @override
  final DocumentReference<ApplicationRelease> reference;

  /// A reference to the [ApplicationReleaseCollectionReference] containing this document.
  ApplicationReleaseCollectionReference get parent {
    return _$ApplicationReleaseCollectionReference(
      reference.parent.parent!.withConverter<ApplicationModel>(
        fromFirestore: ApplicationModelCollectionReference.fromFirestore,
        toFirestore: ApplicationModelCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<ApplicationReleaseDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ApplicationReleaseDocumentSnapshot._);
  }

  @override
  Future<ApplicationReleaseDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ApplicationReleaseDocumentSnapshot._);
  }

  @override
  Future<ApplicationReleaseDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction
        .get(reference)
        .then(ApplicationReleaseDocumentSnapshot._);
  }

  Future<void> update({
    Object? logo = _sentinel,
    FieldValue? logoFieldValue,
    Object? size = _sentinel,
    FieldValue? sizeFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? addedAt = _sentinel,
    FieldValue? addedAtFieldValue,
    Object? applicationId = _sentinel,
    FieldValue? applicationIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? downloadsCount = _sentinel,
    FieldValue? downloadsCountFieldValue,
    Object? fileDownloadUrl = _sentinel,
    FieldValue? fileDownloadUrlFieldValue,
    Object? isBeta = _sentinel,
    FieldValue? isBetaFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? releasesNotes = _sentinel,
    FieldValue? releasesNotesFieldValue,
    Object? scanHash = _sentinel,
    FieldValue? scanHashFieldValue,
    Object? scanScore = _sentinel,
    FieldValue? scanScoreFieldValue,
    Object? unPublishedAt = _sentinel,
    FieldValue? unPublishedAtFieldValue,
    Object? versionCode = _sentinel,
    FieldValue? versionCodeFieldValue,
  }) async {
    assert(
      logo == _sentinel || logoFieldValue == null,
      "Cannot specify both logo and logoFieldValue",
    );
    assert(
      size == _sentinel || sizeFieldValue == null,
      "Cannot specify both size and sizeFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      addedAt == _sentinel || addedAtFieldValue == null,
      "Cannot specify both addedAt and addedAtFieldValue",
    );
    assert(
      applicationId == _sentinel || applicationIdFieldValue == null,
      "Cannot specify both applicationId and applicationIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      downloadsCount == _sentinel || downloadsCountFieldValue == null,
      "Cannot specify both downloadsCount and downloadsCountFieldValue",
    );
    assert(
      fileDownloadUrl == _sentinel || fileDownloadUrlFieldValue == null,
      "Cannot specify both fileDownloadUrl and fileDownloadUrlFieldValue",
    );
    assert(
      isBeta == _sentinel || isBetaFieldValue == null,
      "Cannot specify both isBeta and isBetaFieldValue",
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
      releasesNotes == _sentinel || releasesNotesFieldValue == null,
      "Cannot specify both releasesNotes and releasesNotesFieldValue",
    );
    assert(
      scanHash == _sentinel || scanHashFieldValue == null,
      "Cannot specify both scanHash and scanHashFieldValue",
    );
    assert(
      scanScore == _sentinel || scanScoreFieldValue == null,
      "Cannot specify both scanScore and scanScoreFieldValue",
    );
    assert(
      unPublishedAt == _sentinel || unPublishedAtFieldValue == null,
      "Cannot specify both unPublishedAt and unPublishedAtFieldValue",
    );
    assert(
      versionCode == _sentinel || versionCodeFieldValue == null,
      "Cannot specify both versionCode and versionCodeFieldValue",
    );
    final json = {
      if (logo != _sentinel)
        _$ApplicationReleaseFieldMap['logo']!:
            _$ApplicationReleasePerFieldToJson.logo(logo as String?),
      if (logoFieldValue != null)
        _$ApplicationReleaseFieldMap['logo']!: logoFieldValue,
      if (size != _sentinel)
        _$ApplicationReleaseFieldMap['size']!:
            _$ApplicationReleasePerFieldToJson.size(size as int),
      if (sizeFieldValue != null)
        _$ApplicationReleaseFieldMap['size']!: sizeFieldValue,
      if (version != _sentinel)
        _$ApplicationReleaseFieldMap['version']!:
            _$ApplicationReleasePerFieldToJson.version(version as String),
      if (versionFieldValue != null)
        _$ApplicationReleaseFieldMap['version']!: versionFieldValue,
      if (addedAt != _sentinel)
        _$ApplicationReleaseFieldMap['addedAt']!:
            _$ApplicationReleasePerFieldToJson.addedAt(addedAt as DateTime),
      if (addedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['addedAt']!: addedAtFieldValue,
      if (applicationId != _sentinel)
        _$ApplicationReleaseFieldMap['applicationId']!:
            _$ApplicationReleasePerFieldToJson
                .applicationId(applicationId as String),
      if (applicationIdFieldValue != null)
        _$ApplicationReleaseFieldMap['applicationId']!: applicationIdFieldValue,
      if (createdAt != _sentinel)
        _$ApplicationReleaseFieldMap['createdAt']!:
            _$ApplicationReleasePerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ApplicationReleaseFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadsCount != _sentinel)
        _$ApplicationReleaseFieldMap['downloadsCount']!:
            _$ApplicationReleasePerFieldToJson
                .downloadsCount(downloadsCount as int?),
      if (downloadsCountFieldValue != null)
        _$ApplicationReleaseFieldMap['downloadsCount']!:
            downloadsCountFieldValue,
      if (fileDownloadUrl != _sentinel)
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!:
            _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(fileDownloadUrl as String),
      if (fileDownloadUrlFieldValue != null)
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!:
            fileDownloadUrlFieldValue,
      if (isBeta != _sentinel)
        _$ApplicationReleaseFieldMap['isBeta']!:
            _$ApplicationReleasePerFieldToJson.isBeta(isBeta as bool),
      if (isBetaFieldValue != null)
        _$ApplicationReleaseFieldMap['isBeta']!: isBetaFieldValue,
      if (published != _sentinel)
        _$ApplicationReleaseFieldMap['published']!:
            _$ApplicationReleasePerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$ApplicationReleaseFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$ApplicationReleaseFieldMap['publishedAt']!:
            _$ApplicationReleasePerFieldToJson
                .publishedAt(publishedAt as DateTime?),
      if (publishedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['publishedAt']!: publishedAtFieldValue,
      if (releasesNotes != _sentinel)
        _$ApplicationReleaseFieldMap['releasesNotes']!:
            _$ApplicationReleasePerFieldToJson
                .releasesNotes(releasesNotes as String),
      if (releasesNotesFieldValue != null)
        _$ApplicationReleaseFieldMap['releasesNotes']!: releasesNotesFieldValue,
      if (scanHash != _sentinel)
        _$ApplicationReleaseFieldMap['scanHash']!:
            _$ApplicationReleasePerFieldToJson.scanHash(scanHash as String?),
      if (scanHashFieldValue != null)
        _$ApplicationReleaseFieldMap['scanHash']!: scanHashFieldValue,
      if (scanScore != _sentinel)
        _$ApplicationReleaseFieldMap['scanScore']!:
            _$ApplicationReleasePerFieldToJson.scanScore(scanScore as int?),
      if (scanScoreFieldValue != null)
        _$ApplicationReleaseFieldMap['scanScore']!: scanScoreFieldValue,
      if (unPublishedAt != _sentinel)
        _$ApplicationReleaseFieldMap['unPublishedAt']!:
            _$ApplicationReleasePerFieldToJson
                .unPublishedAt(unPublishedAt as DateTime?),
      if (unPublishedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['unPublishedAt']!: unPublishedAtFieldValue,
      if (versionCode != _sentinel)
        _$ApplicationReleaseFieldMap['versionCode']!:
            _$ApplicationReleasePerFieldToJson.versionCode(versionCode as int?),
      if (versionCodeFieldValue != null)
        _$ApplicationReleaseFieldMap['versionCode']!: versionCodeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? logo = _sentinel,
    FieldValue? logoFieldValue,
    Object? size = _sentinel,
    FieldValue? sizeFieldValue,
    Object? version = _sentinel,
    FieldValue? versionFieldValue,
    Object? addedAt = _sentinel,
    FieldValue? addedAtFieldValue,
    Object? applicationId = _sentinel,
    FieldValue? applicationIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? downloadsCount = _sentinel,
    FieldValue? downloadsCountFieldValue,
    Object? fileDownloadUrl = _sentinel,
    FieldValue? fileDownloadUrlFieldValue,
    Object? isBeta = _sentinel,
    FieldValue? isBetaFieldValue,
    Object? published = _sentinel,
    FieldValue? publishedFieldValue,
    Object? publishedAt = _sentinel,
    FieldValue? publishedAtFieldValue,
    Object? releasesNotes = _sentinel,
    FieldValue? releasesNotesFieldValue,
    Object? scanHash = _sentinel,
    FieldValue? scanHashFieldValue,
    Object? scanScore = _sentinel,
    FieldValue? scanScoreFieldValue,
    Object? unPublishedAt = _sentinel,
    FieldValue? unPublishedAtFieldValue,
    Object? versionCode = _sentinel,
    FieldValue? versionCodeFieldValue,
  }) {
    assert(
      logo == _sentinel || logoFieldValue == null,
      "Cannot specify both logo and logoFieldValue",
    );
    assert(
      size == _sentinel || sizeFieldValue == null,
      "Cannot specify both size and sizeFieldValue",
    );
    assert(
      version == _sentinel || versionFieldValue == null,
      "Cannot specify both version and versionFieldValue",
    );
    assert(
      addedAt == _sentinel || addedAtFieldValue == null,
      "Cannot specify both addedAt and addedAtFieldValue",
    );
    assert(
      applicationId == _sentinel || applicationIdFieldValue == null,
      "Cannot specify both applicationId and applicationIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      downloadsCount == _sentinel || downloadsCountFieldValue == null,
      "Cannot specify both downloadsCount and downloadsCountFieldValue",
    );
    assert(
      fileDownloadUrl == _sentinel || fileDownloadUrlFieldValue == null,
      "Cannot specify both fileDownloadUrl and fileDownloadUrlFieldValue",
    );
    assert(
      isBeta == _sentinel || isBetaFieldValue == null,
      "Cannot specify both isBeta and isBetaFieldValue",
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
      releasesNotes == _sentinel || releasesNotesFieldValue == null,
      "Cannot specify both releasesNotes and releasesNotesFieldValue",
    );
    assert(
      scanHash == _sentinel || scanHashFieldValue == null,
      "Cannot specify both scanHash and scanHashFieldValue",
    );
    assert(
      scanScore == _sentinel || scanScoreFieldValue == null,
      "Cannot specify both scanScore and scanScoreFieldValue",
    );
    assert(
      unPublishedAt == _sentinel || unPublishedAtFieldValue == null,
      "Cannot specify both unPublishedAt and unPublishedAtFieldValue",
    );
    assert(
      versionCode == _sentinel || versionCodeFieldValue == null,
      "Cannot specify both versionCode and versionCodeFieldValue",
    );
    final json = {
      if (logo != _sentinel)
        _$ApplicationReleaseFieldMap['logo']!:
            _$ApplicationReleasePerFieldToJson.logo(logo as String?),
      if (logoFieldValue != null)
        _$ApplicationReleaseFieldMap['logo']!: logoFieldValue,
      if (size != _sentinel)
        _$ApplicationReleaseFieldMap['size']!:
            _$ApplicationReleasePerFieldToJson.size(size as int),
      if (sizeFieldValue != null)
        _$ApplicationReleaseFieldMap['size']!: sizeFieldValue,
      if (version != _sentinel)
        _$ApplicationReleaseFieldMap['version']!:
            _$ApplicationReleasePerFieldToJson.version(version as String),
      if (versionFieldValue != null)
        _$ApplicationReleaseFieldMap['version']!: versionFieldValue,
      if (addedAt != _sentinel)
        _$ApplicationReleaseFieldMap['addedAt']!:
            _$ApplicationReleasePerFieldToJson.addedAt(addedAt as DateTime),
      if (addedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['addedAt']!: addedAtFieldValue,
      if (applicationId != _sentinel)
        _$ApplicationReleaseFieldMap['applicationId']!:
            _$ApplicationReleasePerFieldToJson
                .applicationId(applicationId as String),
      if (applicationIdFieldValue != null)
        _$ApplicationReleaseFieldMap['applicationId']!: applicationIdFieldValue,
      if (createdAt != _sentinel)
        _$ApplicationReleaseFieldMap['createdAt']!:
            _$ApplicationReleasePerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ApplicationReleaseFieldMap['createdAt']!: createdAtFieldValue,
      if (downloadsCount != _sentinel)
        _$ApplicationReleaseFieldMap['downloadsCount']!:
            _$ApplicationReleasePerFieldToJson
                .downloadsCount(downloadsCount as int?),
      if (downloadsCountFieldValue != null)
        _$ApplicationReleaseFieldMap['downloadsCount']!:
            downloadsCountFieldValue,
      if (fileDownloadUrl != _sentinel)
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!:
            _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(fileDownloadUrl as String),
      if (fileDownloadUrlFieldValue != null)
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!:
            fileDownloadUrlFieldValue,
      if (isBeta != _sentinel)
        _$ApplicationReleaseFieldMap['isBeta']!:
            _$ApplicationReleasePerFieldToJson.isBeta(isBeta as bool),
      if (isBetaFieldValue != null)
        _$ApplicationReleaseFieldMap['isBeta']!: isBetaFieldValue,
      if (published != _sentinel)
        _$ApplicationReleaseFieldMap['published']!:
            _$ApplicationReleasePerFieldToJson.published(published as bool),
      if (publishedFieldValue != null)
        _$ApplicationReleaseFieldMap['published']!: publishedFieldValue,
      if (publishedAt != _sentinel)
        _$ApplicationReleaseFieldMap['publishedAt']!:
            _$ApplicationReleasePerFieldToJson
                .publishedAt(publishedAt as DateTime?),
      if (publishedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['publishedAt']!: publishedAtFieldValue,
      if (releasesNotes != _sentinel)
        _$ApplicationReleaseFieldMap['releasesNotes']!:
            _$ApplicationReleasePerFieldToJson
                .releasesNotes(releasesNotes as String),
      if (releasesNotesFieldValue != null)
        _$ApplicationReleaseFieldMap['releasesNotes']!: releasesNotesFieldValue,
      if (scanHash != _sentinel)
        _$ApplicationReleaseFieldMap['scanHash']!:
            _$ApplicationReleasePerFieldToJson.scanHash(scanHash as String?),
      if (scanHashFieldValue != null)
        _$ApplicationReleaseFieldMap['scanHash']!: scanHashFieldValue,
      if (scanScore != _sentinel)
        _$ApplicationReleaseFieldMap['scanScore']!:
            _$ApplicationReleasePerFieldToJson.scanScore(scanScore as int?),
      if (scanScoreFieldValue != null)
        _$ApplicationReleaseFieldMap['scanScore']!: scanScoreFieldValue,
      if (unPublishedAt != _sentinel)
        _$ApplicationReleaseFieldMap['unPublishedAt']!:
            _$ApplicationReleasePerFieldToJson
                .unPublishedAt(unPublishedAt as DateTime?),
      if (unPublishedAtFieldValue != null)
        _$ApplicationReleaseFieldMap['unPublishedAt']!: unPublishedAtFieldValue,
      if (versionCode != _sentinel)
        _$ApplicationReleaseFieldMap['versionCode']!:
            _$ApplicationReleasePerFieldToJson.versionCode(versionCode as int?),
      if (versionCodeFieldValue != null)
        _$ApplicationReleaseFieldMap['versionCode']!: versionCodeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ApplicationReleaseDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ApplicationReleaseQuery
    implements
        QueryReference<ApplicationRelease, ApplicationReleaseQuerySnapshot> {
  @override
  ApplicationReleaseQuery limit(int limit);

  @override
  ApplicationReleaseQuery limitToLast(int limit);

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
  ApplicationReleaseQuery whereFieldPath(
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

  ApplicationReleaseQuery whereDocumentId({
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

  ApplicationReleaseQuery whereLogo({
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

  ApplicationReleaseQuery whereSize({
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

  ApplicationReleaseQuery whereVersion({
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

  ApplicationReleaseQuery whereAddedAt({
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

  ApplicationReleaseQuery whereApplicationId({
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

  ApplicationReleaseQuery whereCreatedAt({
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

  ApplicationReleaseQuery whereDownloadsCount({
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

  ApplicationReleaseQuery whereFileDownloadUrl({
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

  ApplicationReleaseQuery whereIsBeta({
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

  ApplicationReleaseQuery wherePublished({
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

  ApplicationReleaseQuery wherePublishedAt({
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

  ApplicationReleaseQuery whereReleasesNotes({
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

  ApplicationReleaseQuery whereScanHash({
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

  ApplicationReleaseQuery whereScanScore({
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

  ApplicationReleaseQuery whereUnPublishedAt({
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

  ApplicationReleaseQuery whereVersionCode({
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
  ApplicationReleaseQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByLogo({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderBySize({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByVersion({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByAddedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByApplicationId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByDownloadsCount({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByFileDownloadUrl({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByIsBeta({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByPublished({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByPublishedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByReleasesNotes({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByScanHash({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByScanScore({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByUnPublishedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });

  ApplicationReleaseQuery orderByVersionCode({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  });
}

class _$ApplicationReleaseQuery
    extends QueryReference<ApplicationRelease, ApplicationReleaseQuerySnapshot>
    implements ApplicationReleaseQuery {
  _$ApplicationReleaseQuery(
    this._collection, {
    required Query<ApplicationRelease> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ApplicationReleaseQuerySnapshot> snapshots(
      [SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ApplicationReleaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ApplicationReleaseQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ApplicationReleaseQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ApplicationReleaseQuery limit(int limit) {
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery limitToLast(int limit) {
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereFieldPath(
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
    return _$ApplicationReleaseQuery(
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
  ApplicationReleaseQuery whereDocumentId({
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
    return _$ApplicationReleaseQuery(
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
  ApplicationReleaseQuery whereLogo({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['logo']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.logo(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.logo(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.logo(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .logo(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson.logo(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .logo(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.logo(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationReleasePerFieldToJson.logo(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereSize({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['size']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.size(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.size(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.size(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .size(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson.size(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .size(isGreaterThanOrEqualTo as int)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.size(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ApplicationReleasePerFieldToJson.size(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereVersion({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['version']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.version(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.version(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.version(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .version(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .version(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .version(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.version(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.version(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereAddedAt({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['addedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.addedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .addedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.addedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .addedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .addedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .addedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.addedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.addedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereApplicationId({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['applicationId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .applicationId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.applicationId(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.applicationId(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereCreatedAt({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereDownloadsCount({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['downloadsCount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .downloadsCount(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.downloadsCount(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.downloadsCount(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereFileDownloadUrl({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .fileDownloadUrl(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.fileDownloadUrl(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.fileDownloadUrl(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereIsBeta({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['isBeta']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.isBeta(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.isBeta(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.isBeta(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .isBeta(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson.isBeta(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .isBeta(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.isBeta(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.isBeta(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery wherePublished({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['published']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.published(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.published(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.published(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .published(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .published(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .published(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.published(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.published(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery wherePublishedAt({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['publishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .publishedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.publishedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.publishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereReleasesNotes({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['releasesNotes']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .releasesNotes(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.releasesNotes(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.releasesNotes(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereScanHash({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['scanHash']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.scanHash(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .scanHash(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.scanHash(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .scanHash(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .scanHash(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .scanHash(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn:
            whereIn?.map((e) => _$ApplicationReleasePerFieldToJson.scanHash(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.scanHash(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereScanScore({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['scanScore']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.scanScore(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.scanScore(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.scanScore(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .scanScore(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .scanScore(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .scanScore(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.scanScore(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.scanScore(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereUnPublishedAt({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['unPublishedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .unPublishedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.unPublishedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.unPublishedAt(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery whereVersionCode({
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
    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ApplicationReleaseFieldMap['versionCode']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson.versionCode(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ApplicationReleasePerFieldToJson
                .versionCode(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$ApplicationReleasePerFieldToJson.versionCode(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .versionCode(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ApplicationReleasePerFieldToJson
                .versionCode(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ApplicationReleasePerFieldToJson
                .versionCode(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.versionCode(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ApplicationReleasePerFieldToJson.versionCode(e)),
        isNull: isNull ??
            (isEqualTo == _sentinel ? false : null) ??
            (isNotEqualTo == _sentinel ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByLogo({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationReleaseFieldMap['logo']!, descending: descending);
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderBySize({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ApplicationReleaseFieldMap['size']!, descending: descending);
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByVersion({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['version']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByAddedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['addedAt']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByApplicationId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['applicationId']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['createdAt']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByDownloadsCount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['downloadsCount']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByFileDownloadUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['fileDownloadUrl']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByIsBeta({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['isBeta']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByPublished({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['published']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['publishedAt']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByReleasesNotes({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['releasesNotes']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByScanHash({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['scanHash']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByScanScore({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['scanScore']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByUnPublishedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['unPublishedAt']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ApplicationReleaseQuery orderByVersionCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ApplicationReleaseDocumentSnapshot? startAtDocument,
    ApplicationReleaseDocumentSnapshot? endAtDocument,
    ApplicationReleaseDocumentSnapshot? endBeforeDocument,
    ApplicationReleaseDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ApplicationReleaseFieldMap['versionCode']!,
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

    return _$ApplicationReleaseQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ApplicationReleaseQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ApplicationReleaseDocumentSnapshot
    extends FirestoreDocumentSnapshot<ApplicationRelease> {
  ApplicationReleaseDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ApplicationRelease> snapshot;

  @override
  ApplicationReleaseDocumentReference get reference {
    return ApplicationReleaseDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ApplicationRelease? data;
}

class ApplicationReleaseQuerySnapshot extends FirestoreQuerySnapshot<
    ApplicationRelease, ApplicationReleaseQueryDocumentSnapshot> {
  ApplicationReleaseQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ApplicationReleaseQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ApplicationRelease> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ApplicationReleaseQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ApplicationReleaseDocumentSnapshot._,
      );
    }).toList();

    return ApplicationReleaseQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ApplicationReleaseDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ApplicationReleaseDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<ApplicationReleaseDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ApplicationRelease> snapshot;

  @override
  final List<ApplicationReleaseQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ApplicationReleaseDocumentSnapshot>>
      docChanges;
}

class ApplicationReleaseQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ApplicationRelease>
    implements ApplicationReleaseDocumentSnapshot {
  ApplicationReleaseQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ApplicationRelease> snapshot;

  @override
  final ApplicationRelease data;

  @override
  ApplicationReleaseDocumentReference get reference {
    return ApplicationReleaseDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) =>
    ApplicationModel(
      downloadSize: json['app_download_size'] as int? ?? 0,
      categoryId: json['category_id'] as String,
      categoryName: json['category_name'] as String,
      containsAds: json['contains_ads'] as bool? ?? false,
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['created_at'] as Timestamp),
      description: json['description'] as String,
      downloadsCount: json['downloads_count'] as int? ?? 0,
      email: json['email'] as String,
      hasInAppPurchases: json['has_in_app_purchases'] as bool? ?? false,
      id: json['id'] as String,
      logoImageSquareUrl: json['logo_image_square_url'] as String,
      minAgeRequirement: json['min_age_requirement'] as int? ?? 18,
      name: json['name'] as String,
      publisherId: intToString(json['publisher_id']),
      publisherName: json['publisher_name'] as String,
      packageName: json['package_name'] as String,
      privacyPolicyLinkUrl: json['privacy_policy_link_url'] as String,
      published: json['published'] as bool? ?? false,
      releaseFileMainUrl: json['release_file_main_url'] as String?,
      screenshots: (json['screenshots'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      version: json['version'] as String?,
      price: stringToDouble(json['price']),
      actualReleaseId: json['actual_release_id'] as String?,
      address: json['address'] as String?,
      appType: json['app_type'] as String? ?? 'app',
      assetId: json['asset_id'] as String?,
      coverImageRectUrl: json['cover_image_rect_url'] as String?,
      notesAverage: (json['notes_average'] as num?)?.toDouble() ?? 0.0,
      notesCount: json['notes_count'] as int?,
      phone: json['phone'] as String?,
      publishedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['published_at'], const FirestoreDateTimeConverter().fromJson),
      status: json['status'] as String?,
      trailerVideoUrl: json['trailer_video_url'] as String?,
      unPublishedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['un_published_at'], const FirestoreDateTimeConverter().fromJson),
      updatedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['updated_at'], const FirestoreDateTimeConverter().fromJson),
      versionCode: json['version_code'] as int?,
      websiteUrl: json['website_url'] as String?,
    );

const _$ApplicationModelFieldMap = <String, String>{
  'address': 'address',
  'description': 'description',
  'email': 'email',
  'name': 'name',
  'phone': 'phone',
  'screenshots': 'screenshots',
  'status': 'status',
  'tags': 'tags',
  'version': 'version',
  'actualReleaseId': 'actual_release_id',
  'assetId': 'asset_id',
  'appType': 'app_type',
  'categoryId': 'category_id',
  'categoryName': 'category_name',
  'containsAds': 'contains_ads',
  'coverImageRectUrl': 'cover_image_rect_url',
  'createdAt': 'created_at',
  'downloadSize': 'app_download_size',
  'downloadsCount': 'downloads_count',
  'hasInAppPurchases': 'has_in_app_purchases',
  'id': 'id',
  'logoImageSquareUrl': 'logo_image_square_url',
  'minAgeRequirement': 'min_age_requirement',
  'notesAverage': 'notes_average',
  'notesCount': 'notes_count',
  'packageName': 'package_name',
  'price': 'price',
  'privacyPolicyLinkUrl': 'privacy_policy_link_url',
  'published': 'published',
  'publishedAt': 'published_at',
  'publisherId': 'publisher_id',
  'publisherName': 'publisher_name',
  'releaseFileMainUrl': 'release_file_main_url',
  'trailerVideoUrl': 'trailer_video_url',
  'unPublishedAt': 'un_published_at',
  'updatedAt': 'updated_at',
  'versionCode': 'version_code',
  'websiteUrl': 'website_url',
};

// ignore: unused_element
abstract class _$ApplicationModelPerFieldToJson {
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
  static Object? screenshots(List<String> instance) => instance;
  // ignore: unused_element
  static Object? status(String? instance) => instance;
  // ignore: unused_element
  static Object? tags(List<String> instance) => instance;
  // ignore: unused_element
  static Object? version(String? instance) => instance;
  // ignore: unused_element
  static Object? actualReleaseId(String? instance) => instance;
  // ignore: unused_element
  static Object? assetId(String? instance) => instance;
  // ignore: unused_element
  static Object? appType(String instance) => instance;
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
  static Object? notesAverage(double? instance) => instance;
  // ignore: unused_element
  static Object? notesCount(int? instance) => instance;
  // ignore: unused_element
  static Object? packageName(String instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
  // ignore: unused_element
  static Object? privacyPolicyLinkUrl(String instance) => instance;
  // ignore: unused_element
  static Object? published(bool instance) => instance;
  // ignore: unused_element
  static Object? publishedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? publisherId(String instance) => instance;
  // ignore: unused_element
  static Object? publisherName(String instance) => instance;
  // ignore: unused_element
  static Object? releaseFileMainUrl(String? instance) => instance;
  // ignore: unused_element
  static Object? trailerVideoUrl(String? instance) => instance;
  // ignore: unused_element
  static Object? unPublishedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? updatedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? versionCode(int? instance) => instance;
  // ignore: unused_element
  static Object? websiteUrl(String? instance) => instance;
}

Map<String, dynamic> _$ApplicationModelToJson(ApplicationModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'description': instance.description,
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'screenshots': instance.screenshots,
      'status': instance.status,
      'tags': instance.tags,
      'version': instance.version,
      'actual_release_id': instance.actualReleaseId,
      'asset_id': instance.assetId,
      'app_type': instance.appType,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'contains_ads': instance.containsAds,
      'cover_image_rect_url': instance.coverImageRectUrl,
      'created_at':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'app_download_size': instance.downloadSize,
      'downloads_count': instance.downloadsCount,
      'has_in_app_purchases': instance.hasInAppPurchases,
      'id': instance.id,
      'logo_image_square_url': instance.logoImageSquareUrl,
      'min_age_requirement': instance.minAgeRequirement,
      'notes_average': instance.notesAverage,
      'notes_count': instance.notesCount,
      'package_name': instance.packageName,
      'price': instance.price,
      'privacy_policy_link_url': instance.privacyPolicyLinkUrl,
      'published': instance.published,
      'published_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.publishedAt, const FirestoreDateTimeConverter().toJson),
      'publisher_id': instance.publisherId,
      'publisher_name': instance.publisherName,
      'release_file_main_url': instance.releaseFileMainUrl,
      'trailer_video_url': instance.trailerVideoUrl,
      'un_published_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.unPublishedAt, const FirestoreDateTimeConverter().toJson),
      'updated_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.updatedAt, const FirestoreDateTimeConverter().toJson),
      'version_code': instance.versionCode,
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

ApplicationRelease _$ApplicationReleaseFromJson(Map<String, dynamic> json) =>
    ApplicationRelease(
      addedAt: const FirestoreDateTimeConverter()
          .fromJson(json['added_at'] as Timestamp),
      applicationId: json['application_id'] as String,
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['created_at'] as Timestamp),
      fileDownloadUrl: json['file_download_url'] as String,
      id: json['id'] as String,
      isBeta: json['is_beta'] as bool,
      published: json['published'] as bool? ?? false,
      releasesNotes: json['releases_notes'] as String,
      size: json['size'] as int,
      version: json['version'] as String,
      downloadsCount: json['downloads_count'] as int? ?? 0,
      logo: json['logo'] as String?,
      publishedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['published_at'], const FirestoreDateTimeConverter().fromJson),
      scanHash: json['scan_hash'] as String?,
      scanScore: json['scan_score'] as int?,
      unPublishedAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['un_published_at'], const FirestoreDateTimeConverter().fromJson),
      versionCode: json['version_code'] as int?,
    );

const _$ApplicationReleaseFieldMap = <String, String>{
  'logo': 'logo',
  'size': 'size',
  'version': 'version',
  'addedAt': 'added_at',
  'applicationId': 'application_id',
  'createdAt': 'created_at',
  'downloadsCount': 'downloads_count',
  'fileDownloadUrl': 'file_download_url',
  'id': 'id',
  'isBeta': 'is_beta',
  'published': 'published',
  'publishedAt': 'published_at',
  'releasesNotes': 'releases_notes',
  'scanHash': 'scan_hash',
  'scanScore': 'scan_score',
  'unPublishedAt': 'un_published_at',
  'versionCode': 'version_code',
};

// ignore: unused_element
abstract class _$ApplicationReleasePerFieldToJson {
  // ignore: unused_element
  static Object? logo(String? instance) => instance;
  // ignore: unused_element
  static Object? size(int instance) => instance;
  // ignore: unused_element
  static Object? version(String instance) => instance;
  // ignore: unused_element
  static Object? addedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? applicationId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? downloadsCount(int? instance) => instance;
  // ignore: unused_element
  static Object? fileDownloadUrl(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? isBeta(bool instance) => instance;
  // ignore: unused_element
  static Object? published(bool instance) => instance;
  // ignore: unused_element
  static Object? publishedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? releasesNotes(String instance) => instance;
  // ignore: unused_element
  static Object? scanHash(String? instance) => instance;
  // ignore: unused_element
  static Object? scanScore(int? instance) => instance;
  // ignore: unused_element
  static Object? unPublishedAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
          instance, const FirestoreDateTimeConverter().toJson);
  // ignore: unused_element
  static Object? versionCode(int? instance) => instance;
}

Map<String, dynamic> _$ApplicationReleaseToJson(ApplicationRelease instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'size': instance.size,
      'version': instance.version,
      'added_at': const FirestoreDateTimeConverter().toJson(instance.addedAt),
      'application_id': instance.applicationId,
      'created_at':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'downloads_count': instance.downloadsCount,
      'file_download_url': instance.fileDownloadUrl,
      'id': instance.id,
      'is_beta': instance.isBeta,
      'published': instance.published,
      'published_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.publishedAt, const FirestoreDateTimeConverter().toJson),
      'releases_notes': instance.releasesNotes,
      'scan_hash': instance.scanHash,
      'scan_score': instance.scanScore,
      'un_published_at': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.unPublishedAt, const FirestoreDateTimeConverter().toJson),
      'version_code': instance.versionCode,
    };

ItemNote _$ItemNoteFromJson(Map<String, dynamic> json) => ItemNote(
      addedAt: const FirestoreDateTimeConverter()
          .fromJson(json['added_at'] as Timestamp),
      comment: json['comment'] as String,
      downVotesCount: json['down_votes_count'] as int,
      id: json['id'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updated_at'] as Timestamp),
      upVotesCount: json['up_votes_count'] as int,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userProfilePictureUrl: json['user_profile_picture_url'] as String,
      value: (json['value'] as num).toDouble(),
    );

const _$ItemNoteFieldMap = <String, String>{
  'comment': 'comment',
  'value': 'value',
  'addedAt': 'added_at',
  'downVotesCount': 'down_votes_count',
  'id': 'id',
  'upVotesCount': 'up_votes_count',
  'updatedAt': 'updated_at',
  'userId': 'user_id',
  'userName': 'user_name',
  'userProfilePictureUrl': 'user_profile_picture_url',
};

// ignore: unused_element
abstract class _$ItemNotePerFieldToJson {
  // ignore: unused_element
  static Object? comment(String instance) => instance;
  // ignore: unused_element
  static Object? value(double instance) => instance;
  // ignore: unused_element
  static Object? addedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? downVotesCount(int instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? upVotesCount(int instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? userName(String instance) => instance;
  // ignore: unused_element
  static Object? userProfilePictureUrl(String instance) => instance;
}

Map<String, dynamic> _$ItemNoteToJson(ItemNote instance) => <String, dynamic>{
      'comment': instance.comment,
      'value': instance.value,
      'added_at': const FirestoreDateTimeConverter().toJson(instance.addedAt),
      'down_votes_count': instance.downVotesCount,
      'id': instance.id,
      'up_votes_count': instance.upVotesCount,
      'updated_at':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_profile_picture_url': instance.userProfilePictureUrl,
    };
