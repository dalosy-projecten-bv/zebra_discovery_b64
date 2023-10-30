import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class AddressValue extends Value<String> {
  AddressValue(super.byteArray, super.value);

  factory AddressValue.fromByteArray(Uint8List byteArray) {
    return AddressValue(
      byteArray,
      byteArray.map((e) => e.toString()).join('.'),
    );
  }
}
