// ignore: one_member_abstracts
import 'dart:io';

import '../models/download_task_status.dart';
import '../models/package_file_access_data.dart';

// ignore: one_member_abstracts
abstract class IPackageFileAccessPolicy {
  Future<File> download(
    PackageFileAccessData accessData, {
    void Function(double)? onProgress,
    void Function(DownloadTaskStatus)? onStatus,
  });
}
