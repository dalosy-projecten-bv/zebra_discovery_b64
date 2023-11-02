import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  none,
  online,
  offline,
  tonerLow,
  paperOut,
  paperJammed,
  doorOpen,
  printerError,
  unknown,
}

final printerPortStatusEnum = EnumBase(
  defaultEnum: EnumValues.unknown,
  values: {
    EnumData(EnumValues.none, 0, "None"),
    EnumData(EnumValues.online, 1, "Online"),
    EnumData(EnumValues.offline, 2, "Offline"),
    EnumData(EnumValues.tonerLow, 3, "Toner Low"),
    EnumData(EnumValues.paperOut, 4, "Paper Out"),
    EnumData(EnumValues.paperJammed, 5, "Paper Jammed"),
    EnumData(EnumValues.doorOpen, 6, "Door Open"),
    EnumData(EnumValues.printerError, 7, "Printer Error"),
    EnumData(EnumValues.unknown, 8, "Unknown"),
  },
);
