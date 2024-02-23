import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app.g.dart';

@Collection<ApplicationModel>(ApplicationModel.collection)
final appsReferences = ApplicationModelCollectionReference();

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
    this.type = 'app',
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
  final String type;
  final String version;

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

  @JsonKey(name: 'download_size')
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
  final int? notesAverage;

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
}

enum ApplicationType {
  app,
  game;
}
