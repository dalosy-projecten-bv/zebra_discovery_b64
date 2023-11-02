import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class IntValue extends ValueBase<int> {
  IntValue({
    required super.byteArray,
  }) : super(value: parseInteger(byteArray));

  factory IntValue.fromPositions(
      Uint8List byteArray,
      int start,
      int length,
      ) {
    return IntValue(byteArray: byteArray.sublist(start, start + length));
  }
}
