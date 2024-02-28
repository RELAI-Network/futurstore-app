import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:installed_apps/installed_apps.dart';

import '../data/models/index.dart';

final openPackageInstalledSettingsFuncProvider =
    Provider<OpenPackageInstalledSettingsFunc>(
  (ref) => openPackageInstalledSettings,
);

Future<void> openPackageInstalledSettings(
  String packageName,
) async {
  return InstalledApps.openSettings(packageName);
}
