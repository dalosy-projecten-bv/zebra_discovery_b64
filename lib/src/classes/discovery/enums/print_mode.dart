import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum PrintMode {
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
  defaultEnum: PrintMode.rewind,
  values: [
    EnumData(PrintMode.rewind, 0, "Rewind"),
    EnumData(PrintMode.tearOff, 1, "Tear Off"),
    EnumData(PrintMode.peelOff, 2, "Peel Off"),
    EnumData(PrintMode.pace, 3, "Pace"),
    EnumData(PrintMode.cutter, 4, "Cutter"),
    EnumData(PrintMode.delayedCut, 5, "Delayed Cuts"),
    EnumData(PrintMode.applicator, 6, "Applicator"),
    EnumData(PrintMode.linerlessPeel, 7, "Linerless Peel"),
    EnumData(PrintMode.linerlessRewind, 8, "Linerless Rewind"),
    EnumData(PrintMode.partialCutter, 9, "Partial Cutter"),
    EnumData(PrintMode.rfid, 10, "RFID"),
    EnumData(PrintMode.linerlessTear, 11, "Linerless Tear"),
  ],
);
