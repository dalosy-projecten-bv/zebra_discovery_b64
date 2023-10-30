import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ListPrinterInterface extends ValueBase<List<PrinterInterfaceEnum>> {
  ListPrinterInterface(super.byteArray, super.value);

  factory ListPrinterInterface.fromByteArray(Uint8List byteArray) {
    return ListPrinterInterface(
      byteArray,
      PrinterInterfaceEnum.listFromByteArray(byteArray),
    );
  }
}
