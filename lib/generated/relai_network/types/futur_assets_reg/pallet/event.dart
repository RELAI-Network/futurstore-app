// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i4;

import '../../sp_core/crypto/account_id32.dart' as _i3;

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

  Map<String, Map<String, dynamic>> toJson();
}

class $Event {
  const $Event();

  AssetSubmited assetSubmited({
    required _i3.AccountId32 creator,
    required int id,
  }) {
    return AssetSubmited(
      creator: creator,
      id: id,
    );
  }

  AssetPublished assetPublished({
    required _i3.AccountId32 creator,
    required int id,
  }) {
    return AssetPublished(
      creator: creator,
      id: id,
    );
  }

  AssetUnPublished assetUnPublished({
    required _i3.AccountId32 creator,
    required int id,
  }) {
    return AssetUnPublished(
      creator: creator,
      id: id,
    );
  }

  AssetDeleted assetDeleted({
    required _i3.AccountId32 creator,
    required int id,
  }) {
    return AssetDeleted(
      creator: creator,
      id: id,
    );
  }

  AssetBought assetBought({
    required _i3.AccountId32 buyer,
    required int id,
  }) {
    return AssetBought(
      buyer: buyer,
      id: id,
    );
  }
}

class $EventCodec with _i1.Codec<Event> {
  const $EventCodec();

  @override
  Event decode(_i1.Input input) {
    final index = _i1.U8Codec.codec.decode(input);
    switch (index) {
      case 0:
        return AssetSubmited._decode(input);
      case 1:
        return AssetPublished._decode(input);
      case 2:
        return AssetUnPublished._decode(input);
      case 3:
        return AssetDeleted._decode(input);
      case 4:
        return AssetBought._decode(input);
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
      case AssetSubmited:
        (value as AssetSubmited).encodeTo(output);
        break;
      case AssetPublished:
        (value as AssetPublished).encodeTo(output);
        break;
      case AssetUnPublished:
        (value as AssetUnPublished).encodeTo(output);
        break;
      case AssetDeleted:
        (value as AssetDeleted).encodeTo(output);
        break;
      case AssetBought:
        (value as AssetBought).encodeTo(output);
        break;
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }

  @override
  int sizeHint(Event value) {
    switch (value.runtimeType) {
      case AssetSubmited:
        return (value as AssetSubmited)._sizeHint();
      case AssetPublished:
        return (value as AssetPublished)._sizeHint();
      case AssetUnPublished:
        return (value as AssetUnPublished)._sizeHint();
      case AssetDeleted:
        return (value as AssetDeleted)._sizeHint();
      case AssetBought:
        return (value as AssetBought)._sizeHint();
      default:
        throw Exception(
            'Event: Unsupported "$value" of type "${value.runtimeType}"');
    }
  }
}

class AssetSubmited extends Event {
  const AssetSubmited({
    required this.creator,
    required this.id,
  });

  factory AssetSubmited._decode(_i1.Input input) {
    return AssetSubmited(
      creator: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 creator;

  /// AssetId
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'AssetSubmited': {
          'creator': creator.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(creator);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      0,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      creator,
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
      other is AssetSubmited &&
          _i4.listsEqual(
            other.creator,
            creator,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        creator,
        id,
      );
}

class AssetPublished extends Event {
  const AssetPublished({
    required this.creator,
    required this.id,
  });

  factory AssetPublished._decode(_i1.Input input) {
    return AssetPublished(
      creator: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 creator;

  /// AssetId
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'AssetPublished': {
          'creator': creator.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(creator);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      1,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      creator,
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
      other is AssetPublished &&
          _i4.listsEqual(
            other.creator,
            creator,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        creator,
        id,
      );
}

class AssetUnPublished extends Event {
  const AssetUnPublished({
    required this.creator,
    required this.id,
  });

  factory AssetUnPublished._decode(_i1.Input input) {
    return AssetUnPublished(
      creator: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 creator;

  /// AssetId
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'AssetUnPublished': {
          'creator': creator.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(creator);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      2,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      creator,
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
      other is AssetUnPublished &&
          _i4.listsEqual(
            other.creator,
            creator,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        creator,
        id,
      );
}

class AssetDeleted extends Event {
  const AssetDeleted({
    required this.creator,
    required this.id,
  });

  factory AssetDeleted._decode(_i1.Input input) {
    return AssetDeleted(
      creator: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 creator;

  /// AssetId
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'AssetDeleted': {
          'creator': creator.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(creator);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      3,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      creator,
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
      other is AssetDeleted &&
          _i4.listsEqual(
            other.creator,
            creator,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        creator,
        id,
      );
}

class AssetBought extends Event {
  const AssetBought({
    required this.buyer,
    required this.id,
  });

  factory AssetBought._decode(_i1.Input input) {
    return AssetBought(
      buyer: const _i1.U8ArrayCodec(32).decode(input),
      id: _i1.U32Codec.codec.decode(input),
    );
  }

  /// T::AccountId
  final _i3.AccountId32 buyer;

  /// AssetId
  final int id;

  @override
  Map<String, Map<String, dynamic>> toJson() => {
        'AssetBought': {
          'buyer': buyer.toList(),
          'id': id,
        }
      };

  int _sizeHint() {
    int size = 1;
    size = size + const _i3.AccountId32Codec().sizeHint(buyer);
    size = size + _i1.U32Codec.codec.sizeHint(id);
    return size;
  }

  void encodeTo(_i1.Output output) {
    _i1.U8Codec.codec.encodeTo(
      4,
      output,
    );
    const _i1.U8ArrayCodec(32).encodeTo(
      buyer,
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
      other is AssetBought &&
          _i4.listsEqual(
            other.buyer,
            buyer,
          ) &&
          other.id == id;

  @override
  int get hashCode => Object.hash(
        buyer,
        id,
      );
}
