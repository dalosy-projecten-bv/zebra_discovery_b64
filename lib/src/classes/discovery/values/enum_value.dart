import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

String Function()? f;

class EnumValue<T> extends Value<T> {
  EnumValue(super.byteArray, super.value);

  static EnumValue<T> enumeration<T>(Uint8List byteArray) {
    if (T == DiscoveredPrinterLanguage) {
      return EnumValue<T>(
        byteArray,
        DiscoveredPrinterLanguage.fromByteArray(byteArray) as T,
      );
    }
    if (T == PrinterInterface) {
      return EnumValue<T>(
        byteArray,
        PrinterInterface.fromByteArray(byteArray) as T,
      );
    }
    if (T == IpAcquisitionProtocol) {
      return EnumValue<T>(
        byteArray,
        IpAcquisitionProtocol.fromByteArray(byteArray) as T,
      );
    }

    throw Exception('Unknown type');
  }
}
