import '../models/download_task_status.dart';
import '../models/install_task_status.dart';
import '../models/package_file_access_data.dart';
import 'i_package_file_access_policy.dart';

export '../models/download_task_status.dart';
export '../models/install_task_status.dart';
export '../models/package_file_access_data.dart';
export 'i_package_file_access_policy.dart';

// ignore: one_member_abstracts
abstract class IPackageFileInstaller {
  Future<void> install(
    PackageFileAccessData accessData, {
    required IPackageFileAccessPolicy packageAccessPolicy,
    void Function(double)? onDownloadProgress,
    void Function(DownloadTaskStatus)? onDownloadStatus,
    void Function(InstallTaskStatus)? onStatus,
  });
}
