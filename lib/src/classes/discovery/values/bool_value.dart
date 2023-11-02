import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class BoolValue extends ValueBase<bool> {
  BoolValue({
    required super.byteArray,
  }) : super(value: parseBoolean(byteArray));

  factory BoolValue.fromPositions(
    Uint8List byteArray,
    int start,
    int length,
  ) {
    return BoolValue(byteArray: byteArray.sublist(start, start + length));
  }
}
