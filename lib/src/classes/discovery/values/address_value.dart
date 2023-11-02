import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class AddressValue extends ValueBase<String> {
  AddressValue({
    required super.byteArray,
  }) : super(value: byteArray.map((e) => e.toString()).join('.'));

  factory AddressValue.fromPositions(
    Uint8List byteArray,
    int start,
    int length,
  ) {
    return AddressValue(byteArray: byteArray.sublist(start, start + length));
  }
}
