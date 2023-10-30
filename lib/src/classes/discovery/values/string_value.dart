import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class StringValue extends Value<String> {
  StringValue(super.byteArray, super.value);

  factory StringValue.fromByteArray(Uint8List byteArray) {
    return StringValue(
      byteArray,
      String.fromCharCodes(
        byteArray.takeWhile((value) => value != 0),
      ),
    );
  }
}
