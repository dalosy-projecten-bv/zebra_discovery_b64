import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class IntValue extends ValueBase<int> {
  IntValue(super.byteArray, super.value);

  factory IntValue.fromByteArray(Uint8List byteArray) {
    return IntValue(byteArray, parseInteger(byteArray));
  }
}
