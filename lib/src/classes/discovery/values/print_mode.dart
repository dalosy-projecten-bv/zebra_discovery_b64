import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrintMode extends ValueBase<PrintModeEnum> {
  PrintMode(super.byteArray, super.value);

  factory PrintMode.fromByteArray(Uint8List byteArray) {
    return PrintMode(
      byteArray,
      PrintModeEnum.fromByteArray(byteArray),
    );
  }
}
