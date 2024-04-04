// ignore_for_file: avoid_redundant_argument_values

import 'dart:io';

import '../../providers/file_downloader_func_provider.dart';
import '../models/download_task_status.dart';
import '../models/package_file_access_data.dart';
import '../repo/i_package_file_access_policy.dart';

class UrlPackageAccessPolicy extends IPackageFileAccessPolicy {
  UrlPackageAccessPolicy(this._downloader);

  final FileBackgroundDownloadFunction _downloader;

  @override
  Future<File> download(
    PackageFileAccessData accessData, {
    void Function(double)? onProgress,
    void Function(DownloadTaskStatus)? onStatus,
  }) {
    final url = accessData.url!;

    final packageName = accessData.packageName!;

    return _downloader(
      url,
      packageName,
      onProgress,
      onStatus,
    );
  }
}
