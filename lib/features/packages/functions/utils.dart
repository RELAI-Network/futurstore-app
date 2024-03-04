import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

Future<String> getFilePathFromPackageName(String packageName) async {
  return join(await getBaseDirectory(), '$packageName.apk');
}

Future<String> getFileFromIsbnName(
  String isbn, {
  String extension = 'pdf',
}) async {
  return join(await getBaseDirectory(), '$isbn.$extension');
}

Future<String> getBaseDirectory() async {
  return (await getTemporaryDirectory()).path;
}
