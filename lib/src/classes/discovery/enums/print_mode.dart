import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum PrintMode {
  rewind(0, "Rewind"),
  tearOff(1, "Tear Off"),
  peelOff(2, "Peel Off"),
  pace(3, "Pace"),
  cutter(4, "Cutter"),
  delayedCut(5, "Delayed Cuts"),
  applicator(6, "Applicator"),
  linerlessPeel(7, "Linerless Peel"),
  linerlessRewind(8, "Linerless Rewind"),
  partialCutter(9, "Partial Cutter"),
  rfid(10, "RFID"),
  linerlessTear(11, "Linerless Tear");

  const PrintMode(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final printModeEnum = EnumBase(
  defaultEnum: PrintMode.rewind,
  values: PrintMode.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
