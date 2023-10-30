import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class ByteValue extends Value {
  ByteValue(super.byteArray, super.value);

  factory ByteValue.fromByteArray(Uint8List byteArray) {
    assert(byteArray.length == 1);
    return ByteValue(byteArray, null);
  }
}
