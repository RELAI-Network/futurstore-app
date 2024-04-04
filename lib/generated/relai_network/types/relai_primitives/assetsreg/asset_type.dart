// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

enum AssetType {
  app('App', 0),
  game('Game', 1),
  book('Book', 2);

  const AssetType(
    this.variantName,
    this.codecIndex,
  );

  factory AssetType.decode(_i1.Input input) {
    return codec.decode(input);
  }

  final String variantName;

  final int codecIndex;

  static const $AssetTypeCodec codec = $AssetTypeCodec();

  String toJson() => variantName;
  _i2.Uint8List encode() {
    return codec.encode(this);
  }
}

class $AssetTypeCodec with _i1.Codec<AssetType> {
  const $AssetTypeCodec();

  @override
  AssetType decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return AssetType.app;
      case 1:
        return AssetType.game;
      case 2:
        return AssetType.book;
      default:
        throw Exception('AssetType: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    AssetType value,
    _i1.Output output,
  ) {
    _i1.U8Codec.codec.encodeTo(
      value.codecIndex,
      output,
    );
  }
}
