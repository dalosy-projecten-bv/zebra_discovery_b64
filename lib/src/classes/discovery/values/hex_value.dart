import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class HexValue extends ValueBase<String> {
  HexValue(super.byteArray, super.value);

  factory HexValue.fromByteArray(Uint8List byteArray) {
    return HexValue(
      byteArray,
      byteArray
          .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
          .toList()
          .join(),
    );
  }
}
