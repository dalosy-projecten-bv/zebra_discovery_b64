import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  unknown,
  sgd,
  snmp,
}

final secondaryPrinterLanguageEnum = EnumBase(
  defaultEnum: EnumValues.unknown,
  values: {
    EnumData(EnumValues.unknown, 0, "Unknown"),
    EnumData(EnumValues.sgd, 1, "SGD"),
    EnumData(EnumValues.snmp, 2, "SNMP"),
  },
);
