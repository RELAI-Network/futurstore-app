import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'app.dart';

part 'app_release.g.dart';

@Collection<ApplicationModel>(ApplicationModel.collection)
@Collection<ApplicationRelease>(
  '${ApplicationModel.collection}/*/${ApplicationRelease.collection}',
)
final appsReleasesReferences = ApplicationModelCollectionReference();

@firestoreSerializable
class ApplicationRelease {
  ApplicationRelease({
    required this.addedAt,
    required this.fileDownloadUrl,
    required this.id,
    required this.isBeta,
    required this.releasesNotes,
    required this.version,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'releases';

  final String version;

  @JsonKey(name: 'added_at')
  final DateTime addedAt;

  @JsonKey(name: 'file_download_url')
  final String fileDownloadUrl;

  @Id()
  final String id;

  @JsonKey(name: 'is_beta')
  final bool isBeta;

  @JsonKey(name: 'releases_notes')
  final String releasesNotes;
}
