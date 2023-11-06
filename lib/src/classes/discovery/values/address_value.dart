import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'address_value.g.dart';
///The AddressValue class joins each byte value with a dot.
///The value is taken 'as-is'. There are no checks if the result is a valid
///address. The individual values will always have a value 0-255. The number
///of values can be 0 or infinite
@MyJsonSerializable()
class AddressValue extends ValueBase<String> {
  AddressValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  String constructValue(Uint8List byteArray) =>
      byteArray.map((e) => e.toString()).join('.');

  Map<String, dynamic> toJson() => _$AddressValueToJson(this);
}
