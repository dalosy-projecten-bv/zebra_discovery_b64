import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'int_value.g.dart';

@MyJsonSerializable()
class IntValue extends ValueBase<int> {
  IntValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  int constructValue(Uint8List byteArray) => parseInteger(byteArray);

  Map<String, dynamic> toJson() => _$IntValueToJson(this);
}
