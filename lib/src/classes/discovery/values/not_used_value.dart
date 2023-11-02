import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class NotUsedValue extends ValueBase {
  NotUsedValue({
    required super.byteArray,
    required super.value,
  });

  factory NotUsedValue.fromPositions(
    Uint8List byteArray,
    int start,
    int length,
  ) {
    return NotUsedValue(
      byteArray: byteArray.sublist(
        start,
        start + length,
      ),
      value: null,
    );
  }
}
