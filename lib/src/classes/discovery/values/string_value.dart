import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class StringValue extends ValueBase<String> {
  StringValue(
    Uint8List byteArray,
  ) : super(
          byteArray,
          String.fromCharCodes(byteArray.takeWhile((value) => value != 0)),
        );
}
