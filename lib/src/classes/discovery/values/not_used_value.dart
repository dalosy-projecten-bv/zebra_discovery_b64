import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class NotUsedValue extends ValueBase {
  NotUsedValue(super.byteArray, super.value);

  factory NotUsedValue.fromByteArray(Uint8List byteArray) {
    return NotUsedValue(byteArray, null);
  }
}
