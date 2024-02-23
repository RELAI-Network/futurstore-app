// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i6;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../sp_consensus_grandpa/app/public.dart' as _i2;
import '../sp_consensus_grandpa/app/signature.dart' as _i5;
import '../tuples.dart' as _i3;
import 'prevote.dart' as _i4;

class Equivocation {
  const Equivocation({
    required this.roundNumber,
    required this.identity,
    required this.first,
    required this.second,
  });

  factory Equivocation.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u64
  final BigInt roundNumber;

  /// Id
  final _i2.Public identity;

  /// (V, S)
  final _i3.Tuple2<_i4.Prevote, _i5.Signature> first;

  /// (V, S)
  final _i3.Tuple2<_i4.Prevote, _i5.Signature> second;

  static const $EquivocationCodec codec = $EquivocationCodec();

  _i6.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'roundNumber': roundNumber,
        'identity': identity.toList(),
        'first': [
          first.value0.toJson(),
          first.value1.toList(),
        ],
        'second': [
          second.value0.toJson(),
          second.value1.toList(),
        ],
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Equivocation &&
          other.roundNumber == roundNumber &&
          other.identity == identity &&
          other.first == first &&
          other.second == second;

  @override
  int get hashCode => Object.hash(
        roundNumber,
        identity,
        first,
        second,
      );
}

class $EquivocationCodec with _i1.Codec<Equivocation> {
  const $EquivocationCodec();

  @override
  void encodeTo(
    Equivocation value,
    _i1.Output output,
  ) {
    _i1.U64Codec.codec.encodeTo(
      value.roundNumber,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      value.identity,
      output,
    );
    const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
      _i4.Prevote.codec,
      _i5.SignatureCodec(),
    ).encodeTo(
      value.first,
      output,
    );
    const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
      _i4.Prevote.codec,
      _i5.SignatureCodec(),
    ).encodeTo(
      value.second,
      output,
    );
  }

  @override
  Equivocation decode(_i1.Input input) {
    return Equivocation(
      roundNumber: _i1.U64Codec.codec.decode(input),
      identity: const _i1.U8ArrayCodec(32).decode(input),
      first: const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
        _i4.Prevote.codec,
        _i5.SignatureCodec(),
      ).decode(input),
      second: const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
        _i4.Prevote.codec,
        _i5.SignatureCodec(),
      ).decode(input),
    );
  }

  @override
  int sizeHint(Equivocation value) {
    var size = 0;
    size = size + _i1.U64Codec.codec.sizeHint(value.roundNumber);
    size = size + const _i2.PublicCodec().sizeHint(value.identity);
    size = size +
        const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
          _i4.Prevote.codec,
          _i5.SignatureCodec(),
        ).sizeHint(value.first);
    size = size +
        const _i3.Tuple2Codec<_i4.Prevote, _i5.Signature>(
          _i4.Prevote.codec,
          _i5.SignatureCodec(),
        ).sizeHint(value.second);
    return size;
  }
}
