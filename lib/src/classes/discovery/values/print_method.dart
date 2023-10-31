import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrintMethod extends ValueBase<Value<EnumValues>> {
  PrintMethod(super.byteArray, super.value);

  factory PrintMethod.fromByteArray(Uint8List byteArray) {
    return PrintMethod(
      byteArray,
      printMethodEnum.fromByteArray(byteArray),
    );
  }
}
