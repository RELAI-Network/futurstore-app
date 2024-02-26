import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/models/item_category.dart';

final selectedGameCategoryProvider = StateProvider<ItemCategory?>(
  (ref) => null,
);
