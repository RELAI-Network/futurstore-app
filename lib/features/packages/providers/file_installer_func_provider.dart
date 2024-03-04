import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/typedefs/file_install_function.dart';

final fileInstallerFuncProvider = Provider<FileInstallFunction>(
  (ref) {
    return openApkFile;
  },
);

Future<bool> openApkFile(File file) async {
  try {
    return FileDownloader().openFile(filePath: file.path);
  } catch (e) {
    debugPrint(e.toString());

    rethrow;
  }
}
