import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum PrintMethod {
  directThermal,
  thermalTransfer,
}

final printMethods = EnumBase(
  defaultEnum: PrintMethod.directThermal,
  values: {
    EnumData(PrintMethod.directThermal, 0, 'Direct Thermal'),
    EnumData(PrintMethod.thermalTransfer, 1, 'Thermal Transfer'),
  },
);
