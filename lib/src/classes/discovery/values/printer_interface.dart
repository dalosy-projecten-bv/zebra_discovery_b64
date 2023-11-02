import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class PrinterInterface extends ValueBase<EnumData<EnumValues>> {
  PrinterInterface(super.byteArray, super.value);

  factory PrinterInterface.fromByteArray(Uint8List byteArray) {
    return PrinterInterface(
      byteArray,
      printerInterfaceEnum.fromByteArray(byteArray),
    );
  }
}
