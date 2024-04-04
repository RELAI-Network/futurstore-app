import 'package:flutter/foundation.dart';

mixin FormMixin {
  final Map<String, dynamic> _formData = {};

  bool _loading = false;

  String get errorMessage => value<String?>('__error__') ?? '';
  bool get loading => _loading;

  bool get hasError => errorMessage.isNotEmpty;

  void clear() {
    _formData.clear();
  }

  set error(String value) {
    onChange('__error__', value);
  }

  set loading(bool value) {
    setState(() {
      _loading = value;
    });
  }

  void onChange<T>(String field, T? value) {
    setState(() {
      _formData[field] = value;
    });
  }

  ///Set the state.
  void setState(VoidCallback fn);

  T? value<T>(String field) {
    return _formData[field] as T?;
  }
}
