import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ByteValue extends ValueBase {
  ByteValue({
    required super.byteArray,
  }) : super(value: byteArray[0]);

  factory ByteValue.fromPositions(
    Uint8List byteArray,
    int start,
    int length,
  ) {
    return ByteValue(byteArray: byteArray.sublist(start, start + length));
  }
}
