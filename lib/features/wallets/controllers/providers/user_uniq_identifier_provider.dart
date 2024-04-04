import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/features/wallets/controllers/providers/users_service_provider.dart';

import 'uniq_id_provider.dart';

typedef UserUniqIdentifierFunc = Future<String> Function();

final userUniqIdentifierProvider = StateProvider<Future<String>>((ref) async {
  final deviceId = await ref.read(deviceUniqIdProvider);

  final user = await ref.read(usersRepoProvider).findUserByDeviceId(deviceId);

  if (user?.deviceId != null) return user!.deviceId!;

  final userUniqIdentifierFunc = ref.read(userUniqIdentifierFuncProvider);

  return userUniqIdentifierFunc();
});

final userUniqIdentifierFuncProvider = Provider<UserUniqIdentifierFunc>(
  (ref) => firebaseUUID,
);

Future<String> firebaseUUID() async {
  if (FirebaseAuth.instance.currentUser == null) {
    final credential = await FirebaseAuth.instance.signInAnonymously();

    return credential.user!.uid;
  } else {
    return FirebaseAuth.instance.currentUser!.uid;
  }
}
