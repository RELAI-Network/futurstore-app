import 'package:flutter/material.dart';

@immutable
class ItemContentPublisher {
  const ItemContentPublisher({
    required this.id,
    required this.name,
  });

  static const String collection = 'items_contents_publishers';

  final String id;
  final String name;
}
