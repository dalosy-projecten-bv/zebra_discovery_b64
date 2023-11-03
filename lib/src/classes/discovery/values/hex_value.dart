import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class HexValue extends ValueBase<String> {
  HexValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: byteArray
              .sublist(start, start + length)
              .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
              .toList()
              .join(),
        );
}
