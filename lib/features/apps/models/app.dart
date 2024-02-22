class ApplicationModel {
  final String? address;

  final int downloadSize;

  final String categoryId;

  final String categoryName;

  final bool containsAds;

  final String? coverImageRectUrl;

  final DateTime createdAt;

  final String description;

  final int downloadsCount;

  final String email;

  final bool hasInAppPurchases;

  final String id;

  final String logoImageSquareUrl;

  final int minAgeRequirement;

  final String name;

  final int? notesAverage;

  final int? notesCount;

  final String? phone;

  final double? price;

  final String publisherId;

  final String publisherName;

  final String packageName;

  final String privacyPolicyLinkUrl;

  final String releaseFileMainUrl;

  final List<String> screenshots;

  final List<String> tags;

  final String version;

  final String? trailerVideoUrl;

  final DateTime? updatedAt;

  final String? websiteUrl;

  ApplicationModel({
    this.address,
    required this.downloadSize,
    required this.categoryId,
    required this.categoryName,
    required this.containsAds,
    this.coverImageRectUrl,
    required this.createdAt,
    required this.description,
    required this.downloadsCount,
    required this.email,
    required this.hasInAppPurchases,
    required this.id,
    required this.logoImageSquareUrl,
    required this.minAgeRequirement,
    required this.name,
    this.notesAverage,
    this.notesCount,
    this.phone,
    this.price,
    required this.publisherId,
    required this.publisherName,
    required this.packageName,
    required this.privacyPolicyLinkUrl,
    required this.releaseFileMainUrl,
    required this.screenshots,
    required this.tags,
    required this.version,
    this.trailerVideoUrl,
    this.updatedAt,
    this.websiteUrl,
  });
}
