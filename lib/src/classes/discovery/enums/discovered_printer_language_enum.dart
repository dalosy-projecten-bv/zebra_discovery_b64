import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  unknown,
  zpl,
  cpcl,
  epl,
}

final discoveredPrinterLanguageEnum = Values<EnumValues>(
  defaultValue: EnumValues.unknown,
  values: {
    Value(EnumValues.unknown, 0, 'unknown'),
    Value(EnumValues.zpl, 1, 'ZPL'),
    Value(EnumValues.cpcl, 2, 'CPCL'),
    Value(EnumValues.epl, 4, 'EPL'),
  },
);
