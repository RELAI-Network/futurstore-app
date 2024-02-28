class PackageInstalledInfo {
  PackageInstalledInfo({
    required this.installedAt,
    required this.name,
    required this.packageName,
    required this.versionCode,
    required this.versionName,
  });

  final DateTime? installedAt;
  final String name;
  final String packageName;
  final int? versionCode;
  final String versionName;
}
