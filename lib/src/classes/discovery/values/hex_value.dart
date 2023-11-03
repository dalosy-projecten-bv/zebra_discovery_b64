import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'hex_value.g.dart';

@MyJsonSerializable()
class HexValue extends ValueBase<String> {
  HexValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: byteArray
              .sublist(start, start + length)
              .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
              .toList()
              .join(),
        );

  Map<String, dynamic> toJson() => _$HexValueToJson(this);
}
