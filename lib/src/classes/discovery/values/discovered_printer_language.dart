import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class DiscoveredPrinterLanguage extends ValueBase<Value<EnumValues>> {
  DiscoveredPrinterLanguage(super.byteArray, super.value);

  factory DiscoveredPrinterLanguage.fromByteArray(Uint8List byteArray) {
    return DiscoveredPrinterLanguage(
      byteArray,
      discoveredPrinterLanguageEnum.fromByteArray(byteArray),
    );
  }
}
