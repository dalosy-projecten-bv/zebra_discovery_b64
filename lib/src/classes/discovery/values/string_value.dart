import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class StringValue extends ValueBase<String> {
  StringValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: String.fromCharCodes(
            byteArray
                .sublist(start, start + length)
                .takeWhile((value) => value != 0),
          ),
        );
}
