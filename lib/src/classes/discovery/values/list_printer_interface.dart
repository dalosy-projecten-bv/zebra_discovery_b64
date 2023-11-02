import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ListPrinterInterface extends ValueBase<List<EnumData<EnumValues>>> {
  ListPrinterInterface(super.byteArray, super.value);

  factory ListPrinterInterface.fromByteArray(Uint8List byteArray) {
    return ListPrinterInterface(
      byteArray,
      printerInterfaceEnum.listFromByteArray(byteArray),
    );
  }
}
