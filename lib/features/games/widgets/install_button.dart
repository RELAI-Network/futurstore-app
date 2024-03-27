// ignore_for_file: unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/l10n/l10n.dart';
import 'package:futurstore/core/utils/extensions/build_context.dart';
import 'package:futurstore/core/utils/extensions/theme_on_build_context.dart';
import 'package:futurstore/features/apps/data/models/app.dart';
import 'package:futurstore/features/packages/data/models/index.dart';
import 'package:futurstore/features/packages/providers/install_downloaded_package_file_func_provider.dart';
import 'package:futurstore/features/packages/providers/is_package_file_downloaded_provider.dart';
import 'package:futurstore/features/packages/providers/is_package_installed_func_provider.dart';
import 'package:futurstore/features/packages/providers/package_file_installer_provider.dart';
import 'package:futurstore/features/packages/providers/start_package_installed_func_provider.dart';

class InstallGameButton extends ConsumerStatefulWidget {
  const InstallGameButton(this.data, {super.key});

  final ApplicationModel data;

  @override
  ConsumerState<InstallGameButton> createState() => _InstallGameButtonState();
}

class _InstallGameButtonState extends ConsumerState<InstallGameButton> {
  bool _started = false;

  double _downloadProgress = 0;

  DownloadTaskStatus _downloadStatus = DownloadTaskStatus.initial;

  InstallTaskStatus _installStatus = InstallTaskStatus.waitingForDownload;

  Future<bool> _isPackageInstalled() async {
    try {
      return await ref.read(
        isPackageInstalledProvider(
          widget.data.packageName,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  Future<void> _openInstalledApp() async {
    try {
      return await ref.read(
        openInstalledPackageProvider(
          widget.data.packageName,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _installDownloadedApp() async {
    try {
      return await ref.read(
        installDownloadedPackageFileProvider(
          widget.data.packageName,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<bool> _isPackageFileDownloaded() async {
    try {
      return await ref.read(
        isPackageFileDownloadedProvider(
          widget.data.packageName,
        ).future,
      );
    } catch (e) {
      debugPrint(e.toString());

      return false;
    }
  }

  Future<void> _start() async {
    try {
      setState(() {
        _started = true;

        _downloadProgress = 0;

        _downloadStatus = DownloadTaskStatus.initial;

        _installStatus = InstallTaskStatus.waitingForDownload;
      });

      await ref.read(
        applicationFileInstallProvider(
          widget.data.releaseFileMainUrl,
          widget.data.packageName,
          onDownloadStatus: (status) {
            setState(
              () {
                _downloadStatus = status;

                if (_downloadStatus.isFinalState) {
                  _started = false;
                }
              },
            );
          },
          onDownloadProgress: (progress) {
            setState(
              () {
                _downloadProgress = progress;
              },
            );
          },
          onStatus: (status) {
            setState(
              () {
                _installStatus = status;
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

  bool get downloaded => _downloadStatus == DownloadTaskStatus.complete;

  bool get downloading =>
      _downloadProgress < 1 && _downloadStatus == DownloadTaskStatus.running;

  bool get installing =>
      downloaded && _installStatus == InstallTaskStatus.installing;

  @override
  void initState() {
    super.initState();

    unawaited(
      _isPackageInstalled().then((value) {
        setState(() {
          if (value) {
            _downloadStatus = DownloadTaskStatus.complete;

            _installStatus = InstallTaskStatus.success;
          }
        });
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (_started || installing)
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: _started ? context.width * 0.4 : 0,
                child: ElevatedButton(
                  onPressed: installing ? null : () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        context.colorScheme.secondary.withOpacity(0.6),
                  ),
                  child: Text(
                    l10n.cancelInstallation,
                  ),
                ),
              ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _started ? context.width * 0.4 : context.width * 0.9,
              child: _started || downloaded
                  ? ElevatedButton(
                      onPressed: downloaded
                          ? () async {
                              if (!await _isPackageFileDownloaded()) {
                                await _start();
                                return;
                              }

                              if (!await _isPackageInstalled()) {
                                await _installDownloadedApp();
                              }

                              await _openInstalledApp();
                            }
                          : null,
                      child: Text(
                        l10n.openApp,
                      ),
                    )
                  : ElevatedButton(
                      onPressed: _start,
                      child: Text(
                        l10n.installApp,
                      ),
                    ),
            ),
          ],
        ),
        if (downloading)
          Column(
            children: [
              const SizedBox(height: 8),
              LinearProgressIndicator(
                minHeight: 3,
                value: _downloadProgress,
                valueColor: AlwaysStoppedAnimation(
                  context.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '''${l10n.downloadingPackage}... ${(_downloadProgress * 100).toStringAsFixed(0)}%''',
              ),
            ],
          ),
      ],
    );
  }
}
