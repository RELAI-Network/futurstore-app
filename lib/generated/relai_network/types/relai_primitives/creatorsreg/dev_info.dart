// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:typed_data' as _i2;

import 'package:polkadart/scale_codec.dart' as _i1;
import 'package:quiver/collection.dart' as _i3;

class DevInfo {
  const DevInfo({
    required this.id,
    required this.name,
    required this.email,
    required this.website,
  });

  factory DevInfo.decode(_i1.Input input) {
    return codec.decode(input);
  }

  /// u32
  final int id;

  /// CommonMeta
  final List<int> name;

  /// CommonMeta
  final List<int> email;

  /// CommonMeta
  final List<int> website;

  static const $DevInfoCodec codec = $DevInfoCodec();

  _i2.Uint8List encode() {
    return codec.encode(this);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'website': website,
      };

  @override
  bool operator ==(Object other) =>
      identical(
        this,
        other,
      ) ||
      other is DevInfo &&
          other.id == id &&
          _i3.listsEqual(
            other.name,
            name,
          ) &&
          _i3.listsEqual(
            other.email,
            email,
          ) &&
          _i3.listsEqual(
            other.website,
            website,
          );

  @override
  int get hashCode => Object.hash(
        id,
        name,
        email,
        website,
      );
}

class $DevInfoCodec with _i1.Codec<DevInfo> {
  const $DevInfoCodec();

  @override
  void encodeTo(
    DevInfo obj,
    _i1.Output output,
  ) {
    _i1.U32Codec.codec.encodeTo(
      obj.id,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.name,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.email,
      output,
    );
    _i1.U8SequenceCodec.codec.encodeTo(
      obj.website,
      output,
    );
  }

  @override
  DevInfo decode(_i1.Input input) {
    return DevInfo(
      id: _i1.U32Codec.codec.decode(input),
      name: _i1.U8SequenceCodec.codec.decode(input),
      email: _i1.U8SequenceCodec.codec.decode(input),
      website: _i1.U8SequenceCodec.codec.decode(input),
    );
  }

  @override
  int sizeHint(DevInfo obj) {
    int size = 0;
    size = size + _i1.U32Codec.codec.sizeHint(obj.id);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.name);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.email);
    size = size + _i1.U8SequenceCodec.codec.sizeHint(obj.website);
    return size;
  }
}
