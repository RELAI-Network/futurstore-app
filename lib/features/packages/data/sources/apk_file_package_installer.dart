import 'dart:io';

import 'package:flutter/widgets.dart';

import '../models/typedefs/file_install_function.dart';
import '../repo/i_package_file_installer.dart';

class ApkFilePackageInstaller implements IPackageFileInstaller {
  ApkFilePackageInstaller(this._installer);

  final FileInstallFunction _installer;

  @override
  Future<void> install(
    PackageFileAccessData accessData, {
    required IPackageFileAccessPolicy packageAccessPolicy,
    void Function(double)? onDownloadProgress,
    void Function(DownloadTaskStatus)? onDownloadStatus,
    void Function(InstallTaskStatus)? onStatus,
  }) async {
    onStatus?.call(InstallTaskStatus.waitingForDownload);

    File? file;

    try {
      file = await packageAccessPolicy.download(
        accessData,
        onProgress: onDownloadProgress,
        onStatus: onDownloadStatus,
      );
    } catch (e) {
      debugPrint(e.toString());

      onStatus?.call(InstallTaskStatus.downloadFailed);
    }

    if (file == null) {
      onStatus?.call(InstallTaskStatus.canceled);
      return;
    }

    onStatus?.call(InstallTaskStatus.installing);

    try {
      final installed = await _installer(file);

      if (installed) {
        onStatus?.call(InstallTaskStatus.success);
      } else {
        throw Exception('Installation failed.');
      }
    } catch (e) {
      debugPrint(e.toString());

      onStatus?.call(InstallTaskStatus.failed);
    }
  }
}
