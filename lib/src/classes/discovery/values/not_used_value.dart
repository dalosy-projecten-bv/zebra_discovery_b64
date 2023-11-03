import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class NotUsedValue extends ValueBase {
  NotUsedValue(
    Uint8List byteArray,
    int start,
    int length,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: null,
        );
}
