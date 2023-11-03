import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'bool_value.g.dart';

@MyJsonSerializable()
class BoolValue extends ValueBase<bool> {
  BoolValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: byteArray
                  .sublist(start, start + length)
                  .firstWhereOrNull((byte) => byte == 1) !=
              null,
        );

  Map<String, dynamic> toJson() => _$BoolValueToJson(this);
}
