import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:futurstore/features/packages/functions/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/models/typedefs/file_background_download_function.dart';
import '../data/repo/i_package_file_installer.dart';

part 'file_downloader_func_provider.g.dart';

final fileDownloaderFuncProvider = Provider<FileBackgroundDownloadFunction>(
  (ref) {
    FileDownloader().configureNotification(
      running: const TaskNotification('Downloading', 'file: {filename}'),
      complete: const TaskNotification('Download finished', 'file: {filename}'),
      progressBar: true,
    );

    FileDownloader().registerCallbacks(
      taskNotificationTapCallback: (task, notificationType) {},
    );

    return backgroundDownloadApkFile;
  },
);

Future<File> backgroundDownloadApkFile(
  String url,
  String packageName,
  void Function(double)? onProgress,
  void Function(DownloadTaskStatus)? onStatus,
) async {
  try {
    final task = DownloadTask(
      url: url,
      filename: '$packageName.apk',
      baseDirectory: BaseDirectory.temporary,

      updates: Updates.statusAndProgress,
      // requiresWiFi: true,
      retries: 5,
      allowPause: true,
    );

    final _ = await FileDownloader().download(
      task,
      onProgress: (progress) {
        debugPrint('Progress: ${progress * 100}%');
        onProgress?.call(progress);
      },
      onStatus: (status) {
        debugPrint('Status: $status');
        onStatus?.call(DownloadTaskStatus.values.byName(status.name));
      },
    );

    final filePath = await getFilePathFromPackageName(packageName);

    return File(filePath);
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}

@riverpod
Future<File> backgroundDownloadBookFile(
  BackgroundDownloadBookFileRef ref,
  String url,
  String isbn,
  String extension, {
  void Function(double)? onProgress,
  void Function(DownloadTaskStatus)? onStatus,
}) async {
  try {
    final task = DownloadTask(
      url: url,
      filename: '$isbn.$extension',
      baseDirectory: BaseDirectory.temporary,

      updates: Updates.statusAndProgress,
      // requiresWiFi: true,
      retries: 5,
      allowPause: true,
    );

    final _ = await FileDownloader().download(
      task,
      onProgress: (progress) {
        debugPrint('Progress: ${progress * 100}%');
        onProgress?.call(progress);
      },
      onStatus: (status) {
        debugPrint('Status: $status');
        onStatus?.call(DownloadTaskStatus.values.byName(status.name));
      },
    );

    final filePath = await getFileFromIsbnName(isbn, extension: extension);

    return File(filePath);
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
