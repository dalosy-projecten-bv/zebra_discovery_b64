import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class HexValue extends ValueBase<String> {
  HexValue({
    required super.byteArray,
  }) : super(
          value: byteArray
              .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
              .toList()
              .join(),
        );

  factory HexValue.fromPositions(
    Uint8List byteArray,
    int start,
    int length,
  ) {
    return HexValue(byteArray: byteArray.sublist(start, start + length));
  }
}
