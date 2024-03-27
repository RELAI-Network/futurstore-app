// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i4;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i5;

import '../../sp_core/crypto/account_id32.dart' as _i2;
import 'asset_type.dart' as _i3;

class Asset {
  const Asset({
    required this.creator,
    required this.assetType,
    required this.name,
    this.price,
    required this.meta,
  });

  factory Asset.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// AccountId
  final _i2.AccountId32 creator;

  /// AssetType
  final _i3.AssetType assetType;

  /// CommonMeta
  final List<int> name;

  /// Option<Balance>
  final BigInt? price;

  /// CommonMeta
  final List<int> meta;

  static const $AssetCodec codec = $AssetCodec();

  _i4.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'creator': creator.toList(),
        'assetType': assetType.toJson(),
        'name': name,
        'price': price,
        'meta': meta,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Asset &&
          _i5.listsEqual(
            other.creator,
            creator,
          ) &&
          other.assetType == assetType &&
          _i5.listsEqual(
            other.name,
            name,
          ) &&
          other.price == price &&
          _i5.listsEqual(
            other.meta,
            meta,
          );

  @override
  int get hashCode => Object.hash(
        creator,
        assetType,
        name,
        price,
        meta,
      );
}

class $AssetCodec with _i1.Codec<Asset> {
  const $AssetCodec();

  @override
  void encodeTo(
    Asset obj,
    _i1.Output output,
  ) {
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.creator,
      output,
    );
    _i3.AssetType.codec.encodeTo(
      obj.assetType,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    const _i1.OptionCodec<BigInt>(_i1.U128Codec.codec).encodeTo(
      obj.price,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.meta,
      output,
    );
  }

  @override
  Asset decode(_i1.Input input) {
    return Asset(
      creator: const _i1.U8ArrayCodec(32).decode(input),
      assetType: _i3.AssetType.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      price: const _i1.OptionCodec<BigInt>(_i1.U128Codec.codec).decode(input),
      meta: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(Asset obj) {
    int size = 0;
    size = size + const _i2.AccountId32Codec().sizeHint(obj.creator);
    size = size + _i3.AssetType.codec.sizeHint(obj.assetType);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size +
        const _i1.OptionCodec<BigInt>(_i1.U128Codec.codec).sizeHint(obj.price);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.meta);
    return size;
  }
}
