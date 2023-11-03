import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

part 'int_value.g.dart';

@JsonSerializable(createFactory: false)
class IntValue extends ValueBase<int> {
  IntValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: parseInteger(
            byteArray.sublist(start, start + length),
          ),
        );

  Map<String, dynamic> toJson() => _$IntValueToJson(this);
}
