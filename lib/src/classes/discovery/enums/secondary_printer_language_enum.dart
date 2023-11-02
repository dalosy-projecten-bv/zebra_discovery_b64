import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  unknown,
  sgd,
  snmp,
}

final secondaryPrinterLanguageEnum = Values<EnumValues>(
  defaultValue: EnumValues.unknown,
  values: {
    Value(EnumValues.unknown, 0, "Unknown"),
    Value(EnumValues.sgd, 1, "SGD"),
    Value(EnumValues.snmp, 2, "SNMP"),
  },
);
