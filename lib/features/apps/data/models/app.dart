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
    required this.releaseFileMainUrl,
    required this.screenshots,
    required this.tags,
    required this.version,
    this.address,
    this.appType = 'app',
    this.coverImageRectUrl,
    this.notesAverage,
    this.notesCount,
    this.phone,
    this.price,
    this.trailerVideoUrl,
    this.updatedAt,
    this.websiteUrl,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'apps';

  final String? address;
  final String description;
  final String email;
  final String name;
  final String? phone;
  final double? price;
  final List<String> screenshots;
  final List<String> tags;
  final String version;

  @JsonKey(name: 'app_type')
  final String appType;

  @JsonKey(name: 'category_id')
  final String categoryId;

  @JsonKey(name: 'category_name')
  final String categoryName;

  @JsonKey(name: 'contains_ads')
  final bool containsAds;

  @JsonKey(name: 'cover_image_rect_url')
  final String? coverImageRectUrl;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'app_download_size')
  final int downloadSize;

  @JsonKey(name: 'downloads_count')
  final int downloadsCount;

  @JsonKey(name: 'has_in_app_purchases')
  final bool hasInAppPurchases;

  @Id()
  final String id;

  @JsonKey(name: 'logo_image_square_url')
  final String logoImageSquareUrl;

  @JsonKey(name: 'min_age_requirement')
  final int minAgeRequirement;

  @JsonKey(name: 'notes_average')
  final double? notesAverage;

  @JsonKey(name: 'notes_count')
  final int? notesCount;

  @JsonKey(name: 'package_name')
  final String packageName;

  @JsonKey(name: 'privacy_policy_link_url')
  final String privacyPolicyLinkUrl;

  @JsonKey(name: 'publisher_id')
  final String publisherId;

  @JsonKey(name: 'publisher_name')
  final String publisherName;

  @JsonKey(name: 'release_file_main_url')
  final String releaseFileMainUrl;

  @JsonKey(name: 'trailer_video_url')
  final String? trailerVideoUrl;

  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @JsonKey(name: 'website_url')
  final String? websiteUrl;

  String get appSize {
    if (downloadSize > 1000) {
      return '${(downloadSize / 1000).toStringAsFixed(2)} MB';
    } else {
      return '$downloadSize KB';
    }
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
    required this.fileDownloadUrl,
    required this.id,
    required this.isBeta,
    required this.releasesNotes,
    required this.version,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'releases';

  final String version;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'file_download_url')
  final String fileDownloadUrl;

  @Id()
  final String id;

  @JsonKey(name: 'is_beta')
  final bool isBeta;

  @JsonKey(name: 'releases_notes')
  final String releasesNotes;
}

@firestoreSerializable
class ItemNote {
  ItemNote({
    required this.addedAt,
    required this.comment,
    required this.downVotesCount,
    required this.id,
    required this.updatedAt,
    required this.upVotesCount,
    required this.userId,
    required this.userName,
    required this.userProfilePictureUrl,
    required this.value,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'notes';

  final String comment;
  final double value;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'down_votes_count')
  final int downVotesCount;

  @Id()
  final String id;

  @JsonKey(name: 'up_votes_count')
  final int upVotesCount;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @JsonKey(name: 'user_id')
  final String userId;

  @JsonKey(name: 'user_name')
  final String userName;

  @JsonKey(name: 'user_profile_picture_url')
  final String userProfilePictureUrl;
}
