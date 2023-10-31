import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrinterInterface extends ValueBase<Value<EnumValues>> {
  PrinterInterface(super.byteArray, super.value);

  factory PrinterInterface.fromByteArray(Uint8List byteArray) {
    return PrinterInterface(
      byteArray,
      printerInterfaceEnum.fromByteArray(byteArray),
    );
  }
}
