import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'address_value.g.dart';

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
