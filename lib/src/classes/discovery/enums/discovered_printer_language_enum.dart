import 'package:zebra_discovery_b64/src/classes/discovery/enums/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/values.dart';

enum EnumValues {
  unknown,
  zpl,
  cpcl,
  epl,
}

typedef ValueType = Value<EnumValues>;

final discoveredPrinterLanguage = Values<EnumValues, ValueType>(
  values: {
    Value(EnumValues.unknown, 0, 'unknown'),
    Value(EnumValues.zpl, 1, 'ZPL'),
    Value(EnumValues.cpcl, 2, 'CPCL'),
    Value(EnumValues.epl, 4, 'EPL'),
  },
  defaultValue: EnumValues.unknown,
);
