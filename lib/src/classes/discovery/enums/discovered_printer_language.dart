import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum DiscoveredPrinterLanguage {
  unknown(0, 'unknown'),
  zpl(1, 'ZPL'),
  cpcl(2, 'CPCL'),
  epl(4, 'EPL');

  const DiscoveredPrinterLanguage(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final discoveredPrinterLanguagesEnum = EnumBase(
  defaultEnum: DiscoveredPrinterLanguage.unknown,
  values: DiscoveredPrinterLanguage.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
