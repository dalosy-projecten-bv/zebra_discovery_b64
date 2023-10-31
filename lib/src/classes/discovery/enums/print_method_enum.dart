import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  directThermal,
  thermalTransfer,
}

final printMethodEnum =
    Values<EnumValues>(defaultValue: EnumValues.directThermal, values: {
  Value(EnumValues.directThermal, 0, 'Direct Thermal'),
  Value(EnumValues.thermalTransfer, 1, 'Thermal Transfer'),
});
