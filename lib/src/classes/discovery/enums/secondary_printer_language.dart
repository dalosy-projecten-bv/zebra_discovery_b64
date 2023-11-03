import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum SecondaryPrinterLanguage {
  unknown(0, "Unknown"),
  sgd(1, "SGD"),
  snmp(2, "SNMP");

  const SecondaryPrinterLanguage(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final secondaryPrinterLanguageEnum = EnumBase(
  defaultEnum: SecondaryPrinterLanguage.unknown,
  values: SecondaryPrinterLanguage.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
