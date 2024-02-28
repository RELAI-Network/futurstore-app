import 'package_file_access_data.dart';

class ApkPackageFileAccessData extends PackageFileAccessData {
  ApkPackageFileAccessData({
    required super.packageName,
    required super.url,
  }) : super(identifier: null, password: null);
}
