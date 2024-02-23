import 'package:dart_utils/dart_utils.dart';

class ItemCategory {
  ItemCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.itemTypes,
    this.iconUrl,
  });

  static const String collection = 'items_categories';

  final String description;
  final String? iconUrl;
  final String id;
  final List<String> itemTypes;
  final String name;

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
