import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class EnumListValue<T> extends Value<List<T>> {
  EnumListValue(super.byteArray, super.value);

  static EnumListValue<T> enumWithSegments<T>({
    required int segment,
    required Uint8List byteArray,
  }) {
    if (T == PrinterError) {
      return EnumListValue<T>(
        byteArray,
        PrinterError.listFromByteArray(segment, byteArray) as List<T>,
      );
    }
    if (T == PrinterWarning) {
      return EnumListValue<T>(
        byteArray,
        PrinterWarning.listFromByteArray(segment, byteArray) as List<T>,
      );
    }
    throw Exception('Unknown type');
  }

  static EnumListValue<T> fromByteArray<T>(Uint8List byteArray) {
    if (T == DiscoveredPrinterLanguage) {
      return EnumListValue<T>(
        byteArray,
        DiscoveredPrinterLanguage.listFromByteArray(byteArray) as List<T>,
      );
    }
    if (T == NetworkProtocol) {
      return EnumListValue<T>(
        byteArray,
        NetworkProtocol.listFromByteArray(byteArray) as List<T>,
      );
    }
    if (T == PrinterInterface) {
      return EnumListValue<T>(
        byteArray,
        PrinterInterface.listFromByteArray(byteArray) as List<T>,
      );
    }
    if (T == SecondaryPrinterLanguage) {
      return EnumListValue<T>(
        byteArray,
        SecondaryPrinterLanguage.listFromByteArray(byteArray) as List<T>,
      );
    }
    throw Exception('Unknown type');
  }
}
