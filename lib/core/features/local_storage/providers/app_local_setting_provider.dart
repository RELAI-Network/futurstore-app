import 'dart:async';

import 'package:flutter/material.dart';
import 'package:local_storage/local_storage.dart';

///App Setting notifier.
class AppLocalSettingProvider<T> with ChangeNotifier {
  /// Default constructor
  AppLocalSettingProvider(
    this._storage, {
    required this.defaultValue,
    required this.fromStorage,
    required this.localKey,
    required this.toStorage,
  }) {
    _value = defaultValue;

    unawaited(_init());
  }

  bool _initializing = true;

  bool get initializing => _initializing;

  /// Default value
  final T defaultValue;

  /// How value is retrieved from value stored in local storage.
  final T Function(String) fromStorage;

  /// Key for value stored in local storage
  final String localKey;

  /// How value is stored in local storage
  final String Function(T) toStorage;

  final LocalStorage _storage;

  late T _value;

  ///Actual locale.
  T get value => _value;

  set value(T value) {
    _value = value;
    notifyListeners();
    unawaited(_storage.setString(localKey, toStorage(value)));
  }

  Future<void> _init() async {
    try {
      await _storage.init();

      final value = await _storage.getString(localKey);

      _value = fromStorage(value!) ?? defaultValue;

      _initializing = false;

      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());

      _value = defaultValue;

      _initializing = false;

      notifyListeners();
    }
  }
}
