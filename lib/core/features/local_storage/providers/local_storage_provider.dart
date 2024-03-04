import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_storage/local_storage.dart';

/// Local storage provider
final localStorageProvider = Provider<LocalStorage>(
  // (ref) => SharedPreferencesLocalStorage(),
  (ref) => SecureLocalStorage(),
);
