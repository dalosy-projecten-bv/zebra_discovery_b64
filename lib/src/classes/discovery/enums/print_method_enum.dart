import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  directThermal,
  thermalTransfer,
}

final printMethodEnum = EnumBase(
  defaultEnum: EnumValues.directThermal,
  values: {
    EnumData(EnumValues.directThermal, 0, 'Direct Thermal'),
    EnumData(EnumValues.thermalTransfer, 1, 'Thermal Transfer'),
  },
);
