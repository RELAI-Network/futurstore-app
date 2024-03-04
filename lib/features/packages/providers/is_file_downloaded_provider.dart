import 'dart:io';

import 'package:futurstore/features/packages/functions/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_file_downloaded_provider.g.dart';

final isFileDownloadedFuncProvider = Provider<
    Future<bool> Function(
      String filePath,
    )>(
  (ref) => isFileDownloadedFunc,
);

Future<bool> isFileDownloadedFunc(
  String filePath,
) async {
  return File(filePath).existsSync();
}

@riverpod
Future<bool> isPackageFileDownloaded(
  IsPackageFileDownloadedRef ref,
  String packageName,
) async {
  return ref.read(isFileDownloadedFuncProvider)(
    await getFilePathFromPackageName(packageName),
  );
}

@riverpod
Future<bool> isBookFileDownloaded(
  IsBookFileDownloadedRef ref,
  String isbn,
  String fileExtension,
) async {
  return ref.read(isFileDownloadedFuncProvider)(
    await getFileFromIsbnName(isbn, extension: fileExtension),
  );
}
