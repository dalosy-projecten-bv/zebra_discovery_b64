import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'hex_value.g.dart';

///The hex value representation (00-FF) is returned for each byte in the byte array
@MyJsonSerializable()
class HexValue extends ValueBase<String> {
  HexValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  String constructValue(Uint8List byteArray) => byteArray
      .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
      .toList()
      .join();

  Map<String, dynamic> toJson() => _$HexValueToJson(this);
}
