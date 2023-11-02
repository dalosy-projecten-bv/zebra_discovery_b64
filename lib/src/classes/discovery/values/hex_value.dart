import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class HexValue extends ValueBase<String> {
  HexValue(
    Uint8List byteArray,
  ) : super(
          byteArray,
          byteArray
              .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
              .toList()
              .join(),
        );
}
