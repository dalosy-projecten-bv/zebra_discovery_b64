import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ListDiscoveredPrinterLanguage extends ValueBase<List<Value<EnumValues>>> {
  ListDiscoveredPrinterLanguage(super.byteArray, super.value);

  factory ListDiscoveredPrinterLanguage.fromByteArray(Uint8List byteArray) {
    return ListDiscoveredPrinterLanguage(
      byteArray,
      discoveredPrinterLanguageEnum.listFromByteArray(byteArray),
    );
  }
}
