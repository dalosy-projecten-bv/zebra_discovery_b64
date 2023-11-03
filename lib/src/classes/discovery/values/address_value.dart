import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'address_value.g.dart';

@MyJsonSerializable()
class AddressValue extends ValueBase<String> {
  AddressValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: byteArray
              .sublist(start, start + length)
              .map((e) => e.toString())
              .join('.'),
        );

  Map<String, dynamic> toJson() => _$AddressValueToJson(this);
}
