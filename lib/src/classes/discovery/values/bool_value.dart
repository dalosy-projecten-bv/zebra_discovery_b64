import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class BoolValue extends ValueBase<bool> {
  BoolValue(
    Uint8List byteArray,
  ) : super(
          byteArray,
          parseBoolean(byteArray),
        );
}
