import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_media_type.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class EnumValue<T> extends Value<T> {
  EnumValue(super.byteArray, super.value);

  static EnumValue<T> fromByteArray<T>(Uint8List byteArray) {
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
    if (T == PrinterMediaType) {
      return EnumValue<T>(
        byteArray,
        PrinterMediaType.fromByteArray(byteArray) as T,
      );
    }
    if (T == PrintMethod) {
      return EnumValue<T>(
        byteArray,
        PrintMethod.fromByteArray(byteArray) as T,
      );
    }
    if (T == PrintMode) {
      return EnumValue<T>(
        byteArray,
        PrintMode.fromByteArray(byteArray) as T,
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
