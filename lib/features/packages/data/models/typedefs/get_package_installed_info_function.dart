import 'package:futurstore/features/packages/data/models/index.dart';

typedef GetPackageInstalledInfoFunc = Future<PackageInstalledInfo?> Function(
  String packageName,
);
