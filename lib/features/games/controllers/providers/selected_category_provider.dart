import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurstore/core/data/models/item_category.dart';

final selectedGameCategoryProvider = StateProvider<ItemCategory?>(
  (ref) => null,
);
