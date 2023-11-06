import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'byte_value.g.dart';

///The integer representation (0-255) is returned from the first byte in the array
@MyJsonSerializable()
class ByteValue extends ValueBase<int> {
  ByteValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  int constructValue(Uint8List byteArray) => byteArray[0];

  Map<String, dynamic> toJson() => _$ByteValueToJson(this);
}
