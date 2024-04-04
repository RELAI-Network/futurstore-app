import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

/// A custom JsonSerializable annotation that supports decoding objects such
/// as Timestamps and DateTimes.
/// This variable can be reused between different models
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

// ignore: avoid_annotating_with_dynamic
String intToString(dynamic value) {
  return value.toString();
}

int stringToInt(String value) {
  return int.parse(value);
}

// ignore: avoid_annotating_with_dynamic
double stringToDouble(dynamic value) {
  return double.tryParse(value?.toString() ?? '') ?? 0;
}

// ignore: avoid_annotating_with_dynamic
double numberToInt(dynamic value) {
  return double.parse(value.toString());
}

// ignore: avoid_annotating_with_dynamic
String listOrStringToString(dynamic value) {
  return value.toString();
}
