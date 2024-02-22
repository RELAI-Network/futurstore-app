class ApplicationCategory {
  ApplicationCategory({
    required this.id,
    required this.name,
    this.iconUrl,
    required this.description,
  });

  final String description;
  final String? iconUrl;
  final String id;
  final String name;
}
