import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class BoolValue extends ValueBase<bool> {
  BoolValue(
    Uint8List byteArray,
  ) : super(
          byteArray,
          byteArray.firstWhereOrNull((byte) => byte == 1) != null,
        );
}
