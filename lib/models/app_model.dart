class AppModel {
  String? logoUrl;
  String? title;
  String? description;
  AppCategory? category;
  String? appSize;

  AppModel({
    this.logoUrl,
    this.title,
    this.description,
    this.category,
    this.appSize,
  });
}

enum AppCategory {
  Productivity,
  Social,
  Business,
  Travel,
  Finance,
  Health,
  Other
}