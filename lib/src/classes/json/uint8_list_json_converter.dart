import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Byte {
  Byte(
    this.bit0,
    this.bit1,
    this.bit2,
    this.bit3,
    this.bit4,
    this.bit5,
    this.bit6,
    this.bit7,
  );

  final bool bit0;
  final bool bit1;
  final bool bit2;
  final bool bit3;
  final bool bit4;
  final bool bit5;
  final bool bit6;
  final bool bit7;

  int toBit(bool bit) => bit ? 1 : 0;

  int toInt() =>
      toBit(bit0) * 1 +
      toBit(bit1) * 2 +
      toBit(bit2) * 4 +
      toBit(bit3) * 8 +
      toBit(bit4) * 16 +
      toBit(bit5) * 32 +
      toBit(bit6) * 64 +
      toBit(bit7) * 128;

  factory Byte.fromInt(int value) {
    return Byte(
      value & 1 != 0,
      value & 2 != 0,
      value & 4 != 0,
      value & 8 != 0,
      value & 16 != 0,
      value & 32 != 0,
      value & 64 != 0,
      value & 128 != 0,
    );
  }
}

class Uint8ListConverter extends JsonConverter<Uint8List, List<Byte>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<Byte> json) {
    throw UnimplementedError();
  }

  @override
  List<Byte> toJson(Uint8List object) =>
      object.map((e) => Byte.fromInt(e)).toList();
}
