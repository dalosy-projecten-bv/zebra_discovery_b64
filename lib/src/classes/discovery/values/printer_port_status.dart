import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class PrinterPortStatus extends ValueBase<EnumData<EnumValues>> {
  PrinterPortStatus(super.byteArray, super.value);

  factory PrinterPortStatus.fromByteArray(Uint8List byteArray) {
    return PrinterPortStatus(
      byteArray,
      printerPortStatusEnum.fromByteArray(byteArray),
    );
  }
}
