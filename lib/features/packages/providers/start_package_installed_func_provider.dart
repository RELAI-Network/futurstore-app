import 'package:installed_apps/installed_apps.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/index.dart';

part 'start_package_installed_func_provider.g.dart';

final startPackageInstalledProvider = Provider<LaunchPackageInstalledFunc>(
  (ref) => startPackageInstalledFunc,
);

Future<bool> startPackageInstalledFunc(
  String packageName,
) async {
  return await InstalledApps.startApp(packageName) ?? false;
}

@riverpod
Future<bool> openInstalledPackage(
  OpenInstalledPackageRef ref,
  String packageName,
) {
  return ref.read(startPackageInstalledProvider)(packageName);
}
