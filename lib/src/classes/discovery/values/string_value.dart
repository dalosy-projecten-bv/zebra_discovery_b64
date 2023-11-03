import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'string_value.g.dart';

@MyJsonSerializable()
class StringValue extends ValueBase<String> {
  StringValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: String.fromCharCodes(
            byteArray
                .sublist(start, start + length)
                .takeWhile((value) => value != 0),
          ),
        );

  Map<String, dynamic> toJson() => _$StringValueToJson(this);
}
