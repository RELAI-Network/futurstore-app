import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/features/packages/providers/file_downloader_func_provider.dart';
import 'package:futurstore/features/packages/providers/is_file_downloaded_provider.dart';
import 'package:futurstore/features/packages/providers/open_downloaded_file_func_provider.dart';

import '../../packages/data/models/index.dart';
import '../data/models/book.dart';

class GetBookButton extends ConsumerStatefulWidget {
  const GetBookButton({
    required this.data,
    super.key,
  });

  final BookModel data;

  @override
  ConsumerState<GetBookButton> createState() => _GetBookButtonState();
}

class _GetBookButtonState extends ConsumerState<GetBookButton> {
  double _downloadProgress = 0;
  DownloadTaskStatus _downloadStatus = DownloadTaskStatus.initial;
  // ignore: unused_field
  bool _started = false;

  @override
  void initState() {
    super.initState();

    unawaited(
      _isFileDownloaded().then((value) {
        setState(() {
          if (value) {
            _downloadStatus = DownloadTaskStatus.complete;
          }
        });
      }),
    );
  }

  bool get downloaded => _downloadStatus == DownloadTaskStatus.complete;
  bool get downloading =>
      _downloadProgress < 1 && _downloadStatus == DownloadTaskStatus.running;

  Future<bool> _isFileDownloaded() async {
    try {
      return await ref.read(
        isBookFileDownloadedProvider(
          widget.data.isbn,
          widget.data.fileExtension,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  Future<void> _openDownloadedFile() async {
    try {
      return await ref.read(
        openDownloadedEbookFileProvider(
          widget.data.isbn,
          widget.data.fileExtension,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _start() async {
    try {
      setState(() {
        _started = true;

        _downloadProgress = 0;

        _downloadStatus = DownloadTaskStatus.initial;
      });

      await ref.read(
        backgroundDownloadBookFileProvider(
          widget.data.fileMailUrl,
          widget.data.isbn,
          widget.data.fileExtension,
          onStatus: (status) {
            setState(
              () {
                _downloadStatus = status;

                if (_downloadStatus.isFinalState) {
                  _started = false;
                }
              },
            );
          },
          onProgress: (progress) {
            setState(
              () {
                _downloadProgress = progress;
              },
            );
          },
        ).future,
      );

      setState(() {
        _started = false;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final _ = context.l10n;

    return downloaded
        ? ElevatedButton(
            onPressed: _openDownloadedFile,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: const Text('Open'),
          )
        : downloading
            ? const CircularProgressIndicator.adaptive()
            : ElevatedButton(
                onPressed: _start,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Get'),
              );
  }
}
