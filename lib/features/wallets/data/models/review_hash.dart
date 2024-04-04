import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/utils/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_hash.g.dart';

@Collection<ReviewHash>(ReviewHash.collection)
final reviewsHashReference = ReviewHashCollectionReference();

@firestoreSerializable
class ReviewHash {
  ReviewHash({
    required this.list,
  });

  @JsonKey(name: 'list')
  final List<String> list;

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'reviews';
}
