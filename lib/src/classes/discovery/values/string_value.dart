import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class StringValue extends ValueBase<String> {
  StringValue({
    required super.byteArray,
  }) : super(
          value: String.fromCharCodes(
            byteArray.takeWhile((value) => value != 0),
          ),
        );

  factory StringValue.fromByteArray(Uint8List byteArray) {
    return StringValue(
      byteArray: byteArray,
    );
  }
}
