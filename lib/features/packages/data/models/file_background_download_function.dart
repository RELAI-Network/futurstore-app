import 'dart:io';

import 'download_task_status.dart';

typedef FileBackgroundDownloadFunction = Future<File> Function(
  String url,
  String packageName,
  void Function(double)? onProgress,
  void Function(DownloadTaskStatus)? onStatus,
);
