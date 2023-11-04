import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'bool_value.g.dart';

@MyJsonSerializable()
class BoolValue extends ValueBase<bool> {
  BoolValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  bool constructValue(Uint8List byteArray) =>
      byteArray.firstWhereOrNull((byte) => byte == 1) != null;

  Map<String, dynamic> toJson() => _$BoolValueToJson(this);
}
