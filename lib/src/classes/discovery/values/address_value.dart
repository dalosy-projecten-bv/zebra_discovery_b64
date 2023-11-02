import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class AddressValue extends ValueBase<String> {
  AddressValue(
    Uint8List byteArray,
  ) : super(
          byteArray,
          byteArray.map((e) => e.toString()).join('.'),
        );
}
