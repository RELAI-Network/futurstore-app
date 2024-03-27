// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '..\..\sp_core\crypto\account_id32.dart' as _i3;

/// The `Event` enum of this pallet
abstract class Event {
  const Event();

  factory Event.decode(_i1.Input input) {
    return codec.decode(input);
  }

  static const $EventCodec codec = $EventCodec();

  static const $Event values = $Event();

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

class $Event {
  const $Event();

  RegistrationFeeSet registrationFeeSet() {
    return RegistrationFeeSet();
  }

  DevRegistered devRegistered({
    required _i3.AccountId32 who,
    required int id,
  }) {
    return DevRegistered(
      who: who,
      id: id,
    );
  }

  DevUnRegistered devUnRegistered({required _i3.AccountId32 who}) {
    return DevUnRegistered(who: who);
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return const RegistrationFeeSet();
      case 1:
        return DevRegistered._decode(input);
      case 2:
        return DevUnRegistered._decode(input);
      default:
        throw Exception('Event: Invalid variant index: "$index"');
    }
  }

  @override
  void encodeTo(
    Event value,
    _i1.Output output,
  ) {
    switch (value.runtimeType) {
      case RegistrationFeeSet:
        (value as RegistrationFeeSet).encodeTo(output);
        break;
      case DevRegistered:
        (value as DevRegistered).encodeTo(output);
        break;
      case DevUnRegistered:
        (value as DevUnRegistered).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case RegistrationFeeSet:
        return 1;
      case DevRegistered:
        return (value as DevRegistered)._sizeHint();
      case DevUnRegistered:
        return (value as DevUnRegistered)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class RegistrationFeeSet extends Event {
  const RegistrationFeeSet();

  @override
  Map<String, dynamic> toJson() => {'RegistrationFeeSet': null};

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
  }

  @override
  bool operator ==(Object other) => other is RegistrationFeeSet;

  @override
  int get hashCode => runtimeType.hashCode;
}

class DevRegistered extends Event {
  const DevRegistered({
    required this.who,
    required this.id,
  });

  factory DevRegistered._decode(_i1.Input input) {
    return DevRegistered(
      who: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 who;

  /// u32
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'DevRegistered': {
          'who': who.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(who);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      who,
      output,
    );
    _i1.U32Codec.codec.encodeTo(
      id,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DevRegistered &&
          _i4.listsEqual(
            other.who,
            who,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        who,
        id,
      );
}

class DevUnRegistered extends Event {
  const DevUnRegistered({required this.who});

  factory DevUnRegistered._decode(_i1.Input input) {
    return DevUnRegistered(who: const _i1.U8ArrayCodec(32).decode(input));
  }

  /// T::AccountId
  final _i3.AccountId32 who;

  @override
  Map<String, Map<String, List<int>>> toJson() => {
        'DevUnRegistered': {'who': who.toList()}
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(who);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      who,
      output,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DevUnRegistered &&
          _i4.listsEqual(
            other.who,
            who,
          );

  @override
  int get hashCode => who.hashCode;
}
