import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class BoolValue extends Value<bool> {
  BoolValue(super.byteArray, super.value);

  factory BoolValue.fromByteArray(Uint8List byteArray) {
    return BoolValue(byteArray, parseBoolean(byteArray));
  }
}
