import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';

class Uint8ListConverter extends JsonConverter<Uint8List, List<String>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<String> json) {
    throw UnimplementedError();
  }

  @override
  List<String> toJson(Uint8List object) =>
      object.map((e) => e.toRadixString(2).padLeft(8, '0')).toList();
}
