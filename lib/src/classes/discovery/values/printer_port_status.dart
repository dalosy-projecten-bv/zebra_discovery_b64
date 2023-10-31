import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrinterPortStatus extends ValueBase<Value<EnumValues>> {
  PrinterPortStatus(super.byteArray, super.value);

  factory PrinterPortStatus.fromByteArray(Uint8List byteArray) {
    return PrinterPortStatus(
      byteArray,
      printerPortStatusEnum.fromByteArray(byteArray),
    );
  }
}
