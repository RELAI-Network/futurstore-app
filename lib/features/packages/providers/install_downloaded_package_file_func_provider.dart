import 'package:background_downloader/background_downloader.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/index.dart';
import '../functions/utils.dart';

part 'install_downloaded_package_file_func_provider.g.dart';

final installDownloadedPackageFileFuncProvider =
    Provider<InstallDownloadedPackageFileFunc>(
  (ref) => installDownloadedPackageFileFunc,
);

Future<bool> installDownloadedPackageFileFunc(
  String packageName,
) async {
  return FileDownloader().openFile(
    filePath: await getFilePathFromPackageName(packageName),
  );
}

@riverpod
Future<bool> installDownloadedPackageFile(
  InstallDownloadedPackageFileRef ref,
  String packageName,
) {
  return ref.read(installDownloadedPackageFileFuncProvider)(
    packageName,
  );
}
