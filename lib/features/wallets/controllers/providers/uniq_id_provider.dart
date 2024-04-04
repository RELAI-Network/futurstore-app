import 'package:android_id/android_id.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/features/local_storage/providers/local_storage_provider.dart';

typedef DeviceUniqIdFunc = Future<String> Function();

final deviceUniqIdProvider = StateProvider<Future<String>>((ref) async {
  final storage = ref.watch(localStorageProvider);

  var localAndroidId = await storage.getString('____android_id____');

  if (localAndroidId != null) {
    return localAndroidId;
  }

  final deviceUniqIdFunc = ref.read(deviceUniqIdFuncProvider);

  localAndroidId = await deviceUniqIdFunc();

  await storage.setString('____android_id____', localAndroidId);

  return localAndroidId;
});

final deviceUniqIdFuncProvider = Provider<DeviceUniqIdFunc>(
  (ref) => androidIdUniqID,
);

Future<String> androidIdUniqID() async {
  const androidIdPlugin = AndroidId();

  final androidId = await androidIdPlugin.getId();

  if (androidId != null) {
    return androidId;
  }

  throw Exception('Android ID not found');
}
