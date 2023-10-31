import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  rewind,
  tearOff,
  peelOff,
  pace,
  cutter,
  delayedCut,
  applicator,
  linerlessPeel,
  linerlessRewind,
  partialCutter,
  rfid,
  linerlessTear,
}

final printModeEnum = Values<EnumValues>(
  defaultValue: EnumValues.rewind,
  values: {
    Value(EnumValues.rewind, 0, "Rewind"),
    Value(EnumValues.tearOff, 1, "Tear Off"),
    Value(EnumValues.peelOff, 2, "Peel Off"),
    Value(EnumValues.pace, 3, "Pace"),
    Value(EnumValues.cutter, 4, "Cutter"),
    Value(EnumValues.delayedCut, 5, "Delayed Cuts"),
    Value(EnumValues.applicator, 6, "Applicator"),
    Value(EnumValues.linerlessPeel, 7, "Linerless Peel"),
    Value(EnumValues.linerlessRewind, 8, "Linerless Rewind"),
    Value(EnumValues.partialCutter, 9, "Partial Cutter"),
    Value(EnumValues.rfid, 10, "RFID"),
    Value(EnumValues.linerlessTear, 11, "Linerless Tear"),
  },
);
