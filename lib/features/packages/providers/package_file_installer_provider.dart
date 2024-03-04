import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/apk_package_file_access_data.dart';
import '../data/repo/i_package_file_installer.dart';
import '../data/sources/apk_file_package_installer.dart';
import 'file_installer_func_provider.dart';
import 'package_file_access_policy_provider.dart';

part 'package_file_installer_provider.g.dart';

final packageFileInstallerProvider = Provider<IPackageFileInstaller>(
  (ref) {
    return ApkFilePackageInstaller(ref.watch(fileInstallerFuncProvider));
  },
);

@riverpod
Future<void> applicationFileInstall(
  ApplicationFileInstallRef ref,
  String url,
  String packageName, {
  void Function(double)? onDownloadProgress,
  void Function(DownloadTaskStatus)? onDownloadStatus,
  void Function(InstallTaskStatus)? onStatus,
}) {
  return ref.read(packageFileInstallerProvider).install(
        ApkPackageFileAccessData(url: url, packageName: packageName),
        packageAccessPolicy: ref.read(packageFileAccessPolicyProvider),
        onDownloadProgress: onDownloadProgress,
        onDownloadStatus: onDownloadStatus,
        onStatus: onStatus,
      );
}
