import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrintMethod extends ValueBase<PrintMethodEnum> {
  PrintMethod(super.byteArray, super.value);

  factory PrintMethod.fromByteArray(Uint8List byteArray) {
    return PrintMethod(
      byteArray,
      PrintMethodEnum.fromByteArray(byteArray),
    );
  }
}
