import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

part 'address_value.g.dart';

@JsonSerializable(createFactory: false)
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
