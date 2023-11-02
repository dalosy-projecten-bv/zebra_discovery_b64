import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

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

final printModeEnum = EnumBase(
  defaultEnum: EnumValues.rewind,
  values: {
    EnumData(EnumValues.rewind, 0, "Rewind"),
    EnumData(EnumValues.tearOff, 1, "Tear Off"),
    EnumData(EnumValues.peelOff, 2, "Peel Off"),
    EnumData(EnumValues.pace, 3, "Pace"),
    EnumData(EnumValues.cutter, 4, "Cutter"),
    EnumData(EnumValues.delayedCut, 5, "Delayed Cuts"),
    EnumData(EnumValues.applicator, 6, "Applicator"),
    EnumData(EnumValues.linerlessPeel, 7, "Linerless Peel"),
    EnumData(EnumValues.linerlessRewind, 8, "Linerless Rewind"),
    EnumData(EnumValues.partialCutter, 9, "Partial Cutter"),
    EnumData(EnumValues.rfid, 10, "RFID"),
    EnumData(EnumValues.linerlessTear, 11, "Linerless Tear"),
  },
);
