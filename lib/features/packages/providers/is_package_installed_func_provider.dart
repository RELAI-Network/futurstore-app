import 'package:installed_apps/installed_apps.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_package_installed_func_provider.g.dart';

typedef IsPackageInstalledFunc = Future<bool> Function(
  String packageName,
);

final isPackageInstalledFuncProvider = Provider<IsPackageInstalledFunc>(
  (ref) => isPackageInstalledFunc,
);

Future<bool> isPackageInstalledFunc(
  String packageName,
) async {
  // final _ = await InstalledApps.isAppInstalled(packageName) ?? false;
  // // ignore: non_constant_identifier_names
  // final __ = await InstalledApps.getInstalledApps();

  // // ignore: non_constant_identifier_names
  // final ___ = __.map((e) => e.packageName).toList();

  // // ignore: non_constant_identifier_names
  // final ____ = ___.contains(packageName);

  return await InstalledApps.isAppInstalled(packageName) ?? false;
}

@riverpod
Future<bool> isPackageInstalled(
  IsPackageInstalledRef ref,
  String packageName,
) {
  return ref.read(isPackageInstalledFuncProvider)(packageName);
}
