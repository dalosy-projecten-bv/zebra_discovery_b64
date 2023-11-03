import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

part 'not_used_value.g.dart';

@JsonSerializable(createFactory: false)
class NotUsedValue extends ValueBase {
  NotUsedValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: null,
        );

  Map<String, dynamic> toJson() => _$NotUsedValueToJson(this);
}
