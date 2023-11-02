import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ByteValue extends ValueBase {
  ByteValue(super.byteArray, super.value);

  factory ByteValue.fromByteArray(Uint8List byteArray) {
    assert(byteArray.length == 1);
    return ByteValue(byteArray, byteArray[0]);
  }
}
