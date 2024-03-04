import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repo/i_package_file_access_policy.dart';
import '../data/sources/url_package_access_policy.dart';
import 'file_downloader_func_provider.dart';

final packageFileAccessPolicyProvider = Provider<IPackageFileAccessPolicy>(
  (ref) {
    return UrlPackageAccessPolicy(ref.watch(fileDownloaderFuncProvider));
  },
);
