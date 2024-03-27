// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;

import '../frame_system/pallet/call.dart' as _i3;
import '../futur_assets_reg/pallet/call.dart' as _i11;
import '../futur_creators_reg/pallet/call.dart' as _i10;
import '../nft/pallet/call.dart' as _i9;
import '../orml_nft/module/call.dart' as _i8;
import '../pallet_balances/pallet/call.dart' as _i6;
import '../pallet_grandpa/pallet/call.dart' as _i5;
import '../pallet_sudo/pallet/call.dart' as _i7;
import '../pallet_timestamp/pallet/call.dart' as _i4;

abstract class RuntimeCall {
  const RuntimeCall();

  factory RuntimeCall.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $RuntimeCallCodec codec = $RuntimeCallCodec();

  static const $RuntimeCall values = $RuntimeCall();

  _i2.Uint8List encode() {
    final output = _i1.ByteOutput(codec.sizeHint(this));
    codec.encodeTo(this, output);
    return output.toBytes();
  }

  int sizeHint() {
    return codec.sizeHint(this);
  }

  Map<String, dynamic> toJson();
}

class $RuntimeCall {
  const $RuntimeCall();

  System system(_i3.Call value0) {
    return System(value0);
  }

  Timestamp timestamp(_i4.Call value0) {
    return Timestamp(value0);
  }

  Grandpa grandpa(_i5.Call value0) {
    return Grandpa(value0);
  }

  Balances balances(_i6.Call value0) {
    return Balances(value0);
  }

  Sudo sudo(_i7.Call value0) {
    return Sudo(value0);
  }

  OrmlNFT ormlNFT(_i8.Call value0) {
    return OrmlNFT(value0);
  }

  Nft nft(_i9.Call value0) {
    return Nft(value0);
  }

  FuturCreatorsReg futurCreatorsReg(_i10.Call value0) {
    return FuturCreatorsReg(value0);
  }

  FuturAssetsReg futurAssetsReg(_i11.Call value0) {
    return FuturAssetsReg(value0);
  }
}

class $RuntimeCallCodec with _i1.Codec<RuntimeCall> {
  const $RuntimeCallCodec();

  @override
  RuntimeCall decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return System._decode(input);
      case 1:
        return Timestamp._decode(input);
      case 3:
        return Grandpa._decode(input);
      case 4:
        return Balances._decode(input);
      case 6:
        return Sudo._decode(input);
      case 7:
        return OrmlNFT._decode(input);
      case 8:
        return Nft._decode(input);
      case 9:
        return FuturCreatorsReg._decode(input);
      case 10:
        return FuturAssetsReg._decode(input);
      default:
        throw Exception('RuntimeCall: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    RuntimeCall value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case System:
        (value as System).encodeTo(output);
        break;
      case Timestamp:
        (value as Timestamp).encodeTo(output);
        break;
      case Grandpa:
        (value as Grandpa).encodeTo(output);
        break;
      case Balances:
        (value as Balances).encodeTo(output);
        break;
      case Sudo:
        (value as Sudo).encodeTo(output);
        break;
      case OrmlNFT:
        (value as OrmlNFT).encodeTo(output);
        break;
      case Nft:
        (value as Nft).encodeTo(output);
        break;
      case FuturCreatorsReg:
        (value as FuturCreatorsReg).encodeTo(output);
        break;
      case FuturAssetsReg:
        (value as FuturAssetsReg).encodeTo(output);
        break;
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(RuntimeCall value) {
    switch (value.runtimeType) {
      case System:
        return (value as System)._sizeHint();
      case Timestamp:
        return (value as Timestamp)._sizeHint();
      case Grandpa:
        return (value as Grandpa)._sizeHint();
      case Balances:
        return (value as Balances)._sizeHint();
      case Sudo:
        return (value as Sudo)._sizeHint();
      case OrmlNFT:
        return (value as OrmlNFT)._sizeHint();
      case Nft:
        return (value as Nft)._sizeHint();
      case FuturCreatorsReg:
        return (value as FuturCreatorsReg)._sizeHint();
      case FuturAssetsReg:
        return (value as FuturAssetsReg)._sizeHint();
      default:
        throw Exception(
            'RuntimeCall: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class System extends RuntimeCall {
  const System(this.value0);

  factory System._decode(_i1.Input input) {
    return System(_i3.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<System, Runtime>
  final _i3.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'System': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i3.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    _i3.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is System && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Timestamp extends RuntimeCall {
  const Timestamp(this.value0);

  factory Timestamp._decode(_i1.Input input) {
    return Timestamp(_i4.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Timestamp, Runtime>
  final _i4.Call value0;

  @override
  Map<String, Map<String, Map<String, BigInt>>> toJson() =>
      {'Timestamp': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i4.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    _i4.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Timestamp && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Grandpa extends RuntimeCall {
  const Grandpa(this.value0);

  factory Grandpa._decode(_i1.Input input) {
    return Grandpa(_i5.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Grandpa, Runtime>
  final _i5.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Grandpa': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i5.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    _i5.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Grandpa && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Balances extends RuntimeCall {
  const Balances(this.value0);

  factory Balances._decode(_i1.Input input) {
    return Balances(_i6.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Balances, Runtime>
  final _i6.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'Balances': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i6.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    _i6.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Balances && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Sudo extends RuntimeCall {
  const Sudo(this.value0);

  factory Sudo._decode(_i1.Input input) {
    return Sudo(_i7.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<Sudo, Runtime>
  final _i7.Call value0;

  @override
  Map<String, Map<String, Map<String, Map<String, dynamic>>>> toJson() =>
      {'Sudo': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i7.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      6,
      output,
    );
    _i7.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Sudo && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class OrmlNFT extends RuntimeCall {
  const OrmlNFT(this.value0);

  factory OrmlNFT._decode(_i1.Input input) {
    return OrmlNFT(_i1.NullCodec.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<OrmlNFT, Runtime>
  final _i8.Call value0;

  @override
  Map<String, dynamic> toJson() => {'OrmlNFT': null};

  int _sizeHint() {
    int size = 1;
    size = size + const _i8.CallCodec().sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      7,
      output,
    );
    _i1.NullCodec.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is OrmlNFT && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class Nft extends RuntimeCall {
  const Nft(this.value0);

  factory Nft._decode(_i1.Input input) {
    return Nft(_i9.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<NFT, Runtime>
  final _i9.Call value0;

  @override
  Map<String, String> toJson() => {'NFT': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i9.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      8,
      output,
    );
    _i9.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is Nft && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FuturCreatorsReg extends RuntimeCall {
  const FuturCreatorsReg(this.value0);

  factory FuturCreatorsReg._decode(_i1.Input input) {
    return FuturCreatorsReg(_i10.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<FuturCreatorsReg, Runtime>
  final _i10.Call value0;

  @override
  Map<String, Map<String, dynamic>> toJson() =>
      {'FuturCreatorsReg': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i10.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      9,
      output,
    );
    _i10.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is FuturCreatorsReg && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}

class FuturAssetsReg extends RuntimeCall {
  const FuturAssetsReg(this.value0);

  factory FuturAssetsReg._decode(_i1.Input input) {
    return FuturAssetsReg(_i11.Call.codec.decode(input));
  }

  /// self::sp_api_hidden_includes_construct_runtime::hidden_include::dispatch
  ///::CallableCallFor<FuturAssetsReg, Runtime>
  final _i11.Call value0;

  @override
  Map<String, Map<String, Map<String, dynamic>>> toJson() =>
      {'FuturAssetsReg': value0.toJson()};

  int _sizeHint() {
    int size = 1;
    size = size + _i11.Call.codec.sizeHint(value0);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      10,
      output,
    );
    _i11.Call.codec.encodeTo(
      value0,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is FuturAssetsReg && other.value0 == value0;

  @override
  int get hashCode => value0.hashCode;
}
