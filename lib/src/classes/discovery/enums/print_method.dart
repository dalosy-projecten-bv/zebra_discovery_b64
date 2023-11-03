import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum PrintMethod {
  directThermal(0, 'Direct Thermal'),
  thermalTransfer(1, 'Thermal Transfer');

  const PrintMethod(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final printMethodEnum = EnumBase(
  defaultEnum: PrintMethod.directThermal,
  values: PrintMethod.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
