import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:json_annotation/json_annotation.dart';

class GameModel extends ApplicationModel {
  GameModel({
    required super.downloadSize,
    required super.categoryId,
    required super.categoryName,
    required super.containsAds,
    required super.createdAt,
    required super.description,
    required super.downloadsCount,
    required super.email,
    required super.hasInAppPurchases,
    required super.id,
    required super.logoImageSquareUrl,
    required super.minAgeRequirement,
    required super.name,
    required super.publisherId,
    required super.publisherName,
    required super.packageName,
    required super.privacyPolicyLinkUrl,
    required super.releaseFileMainUrl,
    required super.screenshots,
    required super.tags,
    required super.version,
    super.address,
    super.coverImageRectUrl,
    super.notesAverage,
    super.notesCount,
    super.phone,
    super.price,
    super.trailerVideoUrl,
    super.updatedAt,
    super.websiteUrl,
  }) : super(
          appType: 'game',
        );

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'games';
}

extension ToGameClass on ApplicationModel {
  GameModel toGame() => copyWith(appType: 'game') as GameModel;
}
