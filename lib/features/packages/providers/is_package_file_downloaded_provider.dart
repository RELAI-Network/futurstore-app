import 'dart:io';

import 'package:futurstore/features/packages/functions/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/index.dart';

part 'is_package_file_downloaded_provider.g.dart';

final isPackageFileDownloadedFuncProvider =
    Provider<IsPackageFileDownloadedFunc>(
  (ref) => isPackageFileDownloadedFunc,
);

Future<bool> isPackageFileDownloadedFunc(
  String packageName,
) async {
  // // ignore: non_constant_identifier_names
  // final __ = await getFilePathFromPackageName(packageName);

  // final _ = File(await getFilePathFromPackageName(packageName)).existsSync();

  return File(await getFilePathFromPackageName(packageName)).existsSync();
}

@riverpod
Future<bool> isPackageFileDownloaded(
  IsPackageFileDownloadedRef ref,
  String packageName,
) {
  return ref.read(isPackageFileDownloadedFuncProvider)(packageName);
}
