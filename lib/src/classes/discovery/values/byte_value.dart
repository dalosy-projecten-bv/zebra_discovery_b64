import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

part 'byte_value.g.dart';

@JsonSerializable(createFactory: false)
class ByteValue extends ValueBase<int> {
  ByteValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: byteArray[start],
        );

  Map<String, dynamic> toJson() => _$ByteValueToJson(this);
}
