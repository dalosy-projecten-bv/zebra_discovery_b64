import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum SecondaryPrinterLanguage {
  unknown,
  sgd,
  snmp,
}

final secondaryPrinterLanguage = EnumBase(
  defaultEnum: SecondaryPrinterLanguage.unknown,
  values: {
    EnumData(SecondaryPrinterLanguage.unknown, 0, "Unknown"),
    EnumData(SecondaryPrinterLanguage.sgd, 1, "SGD"),
    EnumData(SecondaryPrinterLanguage.snmp, 2, "SNMP"),
  },
);
