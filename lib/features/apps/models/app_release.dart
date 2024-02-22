class ApplicationRelease {
  ApplicationRelease({
    required this.addedAt,
    required this.fileDownloadUrl,
    required this.id,
    required this.isBeta,
    required this.releasesNotes,
    required this.version,
  });

  final DateTime addedAt;
  final String fileDownloadUrl;
  final String id;
  final bool isBeta;
  final String releasesNotes;
  final String version;
}
