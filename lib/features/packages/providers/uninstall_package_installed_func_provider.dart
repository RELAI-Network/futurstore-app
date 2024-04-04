import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:installed_apps/installed_apps.dart';

typedef UninstallPackageInstalledFunc = Future<bool> Function(
  String packageName,
);

final uninstalledPackageInstalledFuncProvider =
    Provider<UninstallPackageInstalledFunc>(
  (ref) => uninstalledPackageInstalled,
);

Future<bool> uninstalledPackageInstalled(
  String packageName,
) async {
  return await InstalledApps.uninstallApp(packageName) ?? false;
}
