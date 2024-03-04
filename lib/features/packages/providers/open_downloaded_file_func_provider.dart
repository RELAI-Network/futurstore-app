import 'package:background_downloader/background_downloader.dart';
import 'package:futurstore/features/packages/functions/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'open_downloaded_file_func_provider.g.dart';

final openDownloadedFileFuncProvider = Provider<
    Future<bool> Function(
      String filePath,
    )>(
  (ref) => openDownloadedFileFunc,
);

Future<bool> openDownloadedFileFunc(
  String filePath,
) async {
  return FileDownloader().openFile(
    filePath: filePath,
  );
}

@riverpod
Future<bool> openDownloadedEbookFile(
  OpenDownloadedEbookFileRef ref,
  String isbn,
  String fileExtension,
) async {
  return ref.read(openDownloadedFileFuncProvider)(
    await getFileFromIsbnName(isbn, extension: fileExtension),
  );
}
