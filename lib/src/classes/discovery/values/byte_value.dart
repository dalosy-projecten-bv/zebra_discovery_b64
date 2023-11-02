import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ByteValue extends ValueBase {
  ByteValue(Uint8List byteArray)
      : super(
          byteArray,
          byteArray[0],
        );
}
