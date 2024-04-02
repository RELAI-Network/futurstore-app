// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/utils/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app.g.dart';

@Collection<ApplicationModel>(ApplicationModel.collection)
@Collection<ApplicationRelease>(
  '${ApplicationModel.collection}/*/${ApplicationRelease.collection}',
)
@Collection<AppReview>(
  '${ApplicationModel.collection}/*/${AppReview.collection}',
)
final appsReferences = ApplicationModelCollectionReference();
// @Collection<ApplicationModel>(ApplicationModel.collection)
// @Collection<ItemNote>(
//   '${ApplicationModel.collection}/*/${ItemNote.collection}',
// )
// final appsNotesReferences = ApplicationModelCollectionReference();

@firestoreSerializable
class ApplicationModel {
  ApplicationModel({
    required this.downloadSize,
    required this.categoryId,
    required this.categoryName,
    required this.containsAds,
    required this.createdAt,
    required this.description,
    required this.downloadsCount,
    required this.email,
    required this.hasInAppPurchases,
    required this.id,
    required this.logoImageSquareUrl,
    required this.minAgeRequirement,
    required this.name,
    required this.publisherId,
    required this.publisherName,
    required this.packageName,
    required this.privacyPolicyLinkUrl,
    required this.published,
    required this.releaseFileMainUrl,
    required this.screenshots,
    required this.tags,
    required this.version,
    required this.price,
    this.actualReleaseId,
    this.address,
    this.appType = 'app',
    this.assetId,
    this.coverImageRectUrl,
    this.notesAverage,
    this.notesCount,
    this.phone,
    this.publishedAt,
    this.status,
    this.trailerVideoUrl,
    this.unPublishedAt,
    this.updatedAt,
    this.versionCode,
    this.websiteUrl,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'apps';

  final String? address;
  final String description;
  final String email;
  final String name;
  final String? phone;
  final List<String> screenshots;
  final String? status;
  final List<String> tags;
  final String? version;

  @JsonKey(name: 'actual_release_id')
  final String? actualReleaseId;

  @JsonKey(name: 'app_type')
  final String appType;

  @JsonKey(name: 'asset_id')
  final String? assetId;

  @JsonKey(name: 'category_id')
  final String categoryId;

  @JsonKey(name: 'category_name')
  final String categoryName;

  @JsonKey(name: 'contains_ads', defaultValue: false)
  final bool containsAds;

  @JsonKey(name: 'cover_image_rect_url')
  final String? coverImageRectUrl;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'app_download_size', defaultValue: 0)
  final int downloadSize;

  @JsonKey(name: 'downloads_count', defaultValue: 0)
  final int downloadsCount;

  @JsonKey(name: 'has_in_app_purchases', defaultValue: false)
  final bool hasInAppPurchases;

  @Id()
  final String id;

  @JsonKey(name: 'logo_image_square_url')
  final String logoImageSquareUrl;

  @JsonKey(name: 'min_age_requirement', defaultValue: 18)
  final int minAgeRequirement;

  @JsonKey(name: 'notes_average', defaultValue: 0.0)
  final double? notesAverage;

  @JsonKey(name: 'notes_count')
  final int? notesCount;

  @JsonKey(name: 'package_name')
  final String packageName;

  @JsonKey(fromJson: stringToDouble)
  final double price;

  @JsonKey(name: 'privacy_policy_link_url')
  final String privacyPolicyLinkUrl;

  @JsonKey(name: 'published', defaultValue: false)
  final bool published;

  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;

  @JsonKey(name: 'publisher_id', fromJson: intToString)
  final String publisherId;

  @JsonKey(name: 'publisher_name')
  final String publisherName;

  @JsonKey(name: 'release_file_main_url')
  final String? releaseFileMainUrl;

  @JsonKey(name: 'trailer_video_url')
  final String? trailerVideoUrl;

  @JsonKey(name: 'un_published_at')
  final DateTime? unPublishedAt;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @JsonKey(name: 'version_code')
  final int? versionCode;

  @JsonKey(name: 'website_url')
  final String? websiteUrl;

  String get appSize {
    return '${(downloadSize / 1000000).toStringAsFixed(2)} MB';
    /* if (downloadSize > 1000000) {
      return '${(downloadSize / 1000000).toStringAsFixed(2)} MB';
    } else {
      return '$downloadSize KB';
    } */
  }

  String get title => name;

  ApplicationModel copyWith({
    String? address,
    String? appType,
    String? description,
    String? email,
    String? name,
    String? phone,
    double? price,
    List<String>? screenshots,
    List<String>? tags,
    String? version,
    String? categoryId,
    String? categoryName,
    bool? containsAds,
    String? coverImageRectUrl,
    DateTime? createdAt,
    int? downloadSize,
    int? downloadsCount,
    bool? hasInAppPurchases,
    String? id,
    String? logoImageSquareUrl,
    int? minAgeRequirement,
    double? notesAverage,
    int? notesCount,
    String? packageName,
    String? privacyPolicyLinkUrl,
    String? publisherId,
    String? publisherName,
    String? releaseFileMainUrl,
    String? trailerVideoUrl,
    DateTime? updatedAt,
    String? websiteUrl,
    bool? published,
    DateTime? publishedAt,
    DateTime? unPublishedAt,
    String? status,
    String? actualReleaseId,
    int? versionCode,
  }) {
    return ApplicationModel(
      address: address ?? this.address,
      appType: appType ?? this.appType,
      description: description ?? this.description,
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      price: price ?? this.price,
      screenshots: screenshots ?? this.screenshots,
      tags: tags ?? this.tags,
      version: version ?? this.version,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      containsAds: containsAds ?? this.containsAds,
      coverImageRectUrl: coverImageRectUrl ?? this.coverImageRectUrl,
      createdAt: createdAt ?? this.createdAt,
      downloadSize: downloadSize ?? this.downloadSize,
      downloadsCount: downloadsCount ?? this.downloadsCount,
      hasInAppPurchases: hasInAppPurchases ?? this.hasInAppPurchases,
      id: id ?? this.id,
      logoImageSquareUrl: logoImageSquareUrl ?? this.logoImageSquareUrl,
      minAgeRequirement: minAgeRequirement ?? this.minAgeRequirement,
      notesAverage: notesAverage ?? this.notesAverage,
      notesCount: notesCount ?? this.notesCount,
      packageName: packageName ?? this.packageName,
      privacyPolicyLinkUrl: privacyPolicyLinkUrl ?? this.privacyPolicyLinkUrl,
      publisherId: publisherId ?? this.publisherId,
      publisherName: publisherName ?? this.publisherName,
      releaseFileMainUrl: releaseFileMainUrl ?? this.releaseFileMainUrl,
      trailerVideoUrl: trailerVideoUrl ?? this.trailerVideoUrl,
      updatedAt: updatedAt ?? this.updatedAt,
      websiteUrl: websiteUrl ?? this.websiteUrl,
      published: published ?? this.published,
      publishedAt: publishedAt ?? this.publishedAt,
      unPublishedAt: unPublishedAt ?? this.unPublishedAt,
      actualReleaseId: actualReleaseId ?? this.actualReleaseId,
      status: status ?? this.status,
      versionCode: versionCode ?? this.versionCode,
    );
  }
}

enum ApplicationType {
  app,
  game;
}

@firestoreSerializable
class ApplicationRelease {
  ApplicationRelease({
    required this.addedAt,
    required this.applicationId,
    required this.createdAt,
    required this.fileDownloadUrl,
    required this.id,
    required this.isBeta,
    required this.published,
    required this.releasesNotes,
    required this.size,
    required this.version,
    this.downloadsCount,
    this.logo,
    this.publishedAt,
    this.scanHash,
    this.scanScore,
    this.unPublishedAt,
    this.versionCode,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'releases';

  final String? logo;
  final int size;
  final String version;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'application_id')
  final String applicationId;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'downloads_count', defaultValue: 0)
  final int? downloadsCount;

  @JsonKey(name: 'file_download_url')
  final String fileDownloadUrl;

  @Id()
  final String id;

  @JsonKey(name: 'is_beta')
  final bool isBeta;

  @JsonKey(name: 'published', defaultValue: false)
  final bool published;

  @JsonKey(name: 'published_at')
  final DateTime? publishedAt;

  @JsonKey(name: 'releases_notes')
  final String releasesNotes;

  @JsonKey(name: 'scan_hash')
  final String? scanHash;

  @JsonKey(name: 'scan_score')
  final int? scanScore;

  @JsonKey(name: 'un_published_at')
  final DateTime? unPublishedAt;

  @JsonKey(name: 'version_code')
  final int? versionCode;
}

@firestoreSerializable
class AppReview {
  AppReview({
    required this.addedAt,
    required this.address,
    required this.applicationId,
    required this.assetId,
    required this.deviceId,
    required this.id,
    required this.hash,
    required this.userId,
    required this.rating,
    this.comment,
    this.userProfilePictureUrl,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'reviews';

  final String address;
  final String? comment;
  final String hash;
  final double rating;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'asset_id')
  final String assetId;

  @JsonKey(name: 'application_id')
  final String applicationId;

  @JsonKey(name: 'device_id')
  final String deviceId;

  @Id()
  final String id;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'user_profile_picture_url')
  final String? userProfilePictureUrl;
}
