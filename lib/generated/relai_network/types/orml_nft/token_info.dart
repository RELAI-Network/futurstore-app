// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i3;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '..\sp_core\crypto\account_id32.dart' as _i2;

class TokenInfo {
  const TokenInfo({
    required this.metadata,
    required this.owner,
    required this.data,
  });

  factory TokenInfo.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// TokenMetadataOf
  final List<int> metadata;

  /// AccountId
  final _i2.AccountId32 owner;

  /// Data
  final dynamic data;

  static const $TokenInfoCodec codec = $TokenInfoCodec();

  _i3.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'metadata': metadata,
        'owner': owner.toList(),
        'data': null,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is TokenInfo &&
          _i4.listsEqual(
            other.metadata,
            metadata,
          ) &&
          _i4.listsEqual(
            other.owner,
            owner,
          ) &&
          other.data == data;

  @override
  int get hashCode => Object.hash(
        metadata,
        owner,
        data,
      );
}

class $TokenInfoCodec with _i1.Codec<TokenInfo> {
  const $TokenInfoCodec();

  @override
  void encodeTo(
    TokenInfo obj,
    _i1.Output output,
  ) {
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.metadata,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      obj.owner,
      output,
    );
    _i1.NullCodec.codec.encodeTo(
      obj.data,
      output,
    );
  }

  @override
  TokenInfo decode(_i1.Input input) {
    return TokenInfo(
      metadata: _i1.U8SequenceCodec.codec.decode(input),
      owner: const _i1.U8ArrayCodec(32).decode(input),
      data: _i1.NullCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(TokenInfo obj) {
    int size = 0;
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.metadata);
    size = size + const _i2.AccountId32Codec().sizeHint(obj.owner);
    size = size + _i1.NullCodec.codec.sizeHint(obj.data);
    return size;
  }
}
