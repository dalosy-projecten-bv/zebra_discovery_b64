import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrinterPortStatus extends ValueBase<PrinterPortStatus> {
  PrinterPortStatus(super.byteArray, super.value);

  factory PrinterPortStatus.fromByteArray(Uint8List byteArray) {
    return PrinterPortStatus(
      byteArray,
      PrinterPortStatus.fromByteArray(byteArray),
    );
  }
}
