import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:dart_utils/dart_utils.dart';
import 'package:futurstore/core/config/firestore_serializable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_category.g.dart';

@Collection<ItemCategory>(ItemCategory.collection)
final itemsCategoriesReference = ItemCategoryCollectionReference();

@firestoreSerializable
class ItemCategory {
  ItemCategory({
    required this.id,
    required this.label,
    required this.description,
    required this.itemTypes,
    this.iconUrl,
  });

  @JsonKey(includeFromJson: false, includeToJson: false)
  static const String collection = 'items_categories';

  final String description;
  final String label;

  @JsonKey(name: 'icon_url')
  final String? iconUrl;

  @Id()
  final String id;

  @JsonKey(name: 'item_types')
  final List<String> itemTypes;

  bool get isAppCategory => itemTypes.contains(ItemType.app.name);
  bool get isBookCategory => itemTypes.contains(ItemType.book.name);
  bool get isGameCategory => itemTypes.contains(ItemType.game.name);
  Iterable<ItemType> get itemTypesEnums {
    return itemTypes.map((itemType) {
      return ItemType.values.firstWhereOrNull(
            (itemTypeEnum) => itemTypeEnum.name == itemType,
          ) ??
          ItemType.unknown;
    });
  }
}

extension ItemCategoryListExtension on Iterable<ItemCategory> {
  Iterable<ItemCategory> get apps => where(
        (itemCategory) => itemCategory.isAppCategory,
      );

  Iterable<ItemCategory> get books => where(
        (itemCategory) => itemCategory.isBookCategory,
      );

  Iterable<ItemCategory> get games => where(
        (itemCategory) => itemCategory.isGameCategory,
      );
}

enum ItemType {
  app,

  book,

  game,

  unknown;
}
