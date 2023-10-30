import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class NotUsedValue extends Value {
  NotUsedValue(super.byteArray, super.value);

  factory NotUsedValue.fromByteArray(Uint8List byteArray) {
    return NotUsedValue(byteArray, byteArray[0].toString());
  }
}