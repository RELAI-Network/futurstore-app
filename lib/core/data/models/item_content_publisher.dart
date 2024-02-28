import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:futurstore/core/utils/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_content_publisher.g.dart';

@Collection<ItemContentPublisher>(ItemContentPublisher.collection)
final itemsPublishersReference = ItemContentPublisherCollectionReference();

@firestoreSerializable
class ItemContentPublisher {
  const ItemContentPublisher({
    required this.id,
    required this.name,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'items_contents_publishers';

  @Id()
  final String id;
  final String name;
}
