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

  static const String collection = 'apps';

  final String? address;
  final String categoryId;
  final String categoryName;
  final bool containsAds;
  final String? coverImageRectUrl;
  final DateTime createdAt;
  final String description;
  final int downloadSize;
  final int downloadsCount;
  final String email;
  final bool hasInAppPurchases;
  final String id;
  final String logoImageSquareUrl;
  final int minAgeRequirement;
  final String name;
  final int? notesAverage;
  final int? notesCount;
  final String packageName;
  final String? phone;
  final double? price;
  final String privacyPolicyLinkUrl;
  final String publisherId;
  final String publisherName;
  final String releaseFileMainUrl;
  final List<String> screenshots;
  final List<String> tags;
  final String? trailerVideoUrl;
  final String type;
  final DateTime? updatedAt;
  final String version;
  final String? websiteUrl;
}

enum ApplicationType {
  app,
  game;
}
