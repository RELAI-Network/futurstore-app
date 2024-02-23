// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationRelease _$ApplicationReleaseFromJson(Map<String, dynamic> json) =>
    ApplicationRelease(
      addedAt: const FirestoreDateTimeConverter()
          .fromJson(json['added_at'] as Timestamp),
      fileDownloadUrl: json['file_download_url'] as String,
      id: json['id'] as String,
      isBeta: json['is_beta'] as bool,
      releasesNotes: json['releases_notes'] as String,
      version: json['version'] as String,
    );

const _$ApplicationReleaseFieldMap = <String, String>{
  'version': 'version',
  'addedAt': 'added_at',
  'fileDownloadUrl': 'file_download_url',
  'id': 'id',
  'isBeta': 'is_beta',
  'releasesNotes': 'releases_notes',
};

// ignore: unused_element
abstract class _$ApplicationReleasePerFieldToJson {
  // ignore: unused_element
  static Object? version(String instance) => instance;
  // ignore: unused_element
  static Object? addedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? fileDownloadUrl(String instance) => instance;
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? isBeta(bool instance) => instance;
  // ignore: unused_element
  static Object? releasesNotes(String instance) => instance;
}

Map<String, dynamic> _$ApplicationReleaseToJson(ApplicationRelease instance) =>
    <String, dynamic>{
      'version': instance.version,
      'added_at': const FirestoreDateTimeConverter().toJson(instance.addedAt),
      'file_download_url': instance.fileDownloadUrl,
      'id': instance.id,
      'is_beta': instance.isBeta,
      'releases_notes': instance.releasesNotes,
    };
