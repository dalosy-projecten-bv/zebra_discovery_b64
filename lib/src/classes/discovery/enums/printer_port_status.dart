import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum PrinterPortStatus {
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
  defaultEnum: PrinterPortStatus.unknown,
  values: [
    EnumData(PrinterPortStatus.none, 0, "None"),
    EnumData(PrinterPortStatus.online, 1, "Online"),
    EnumData(PrinterPortStatus.offline, 2, "Offline"),
    EnumData(PrinterPortStatus.tonerLow, 3, "Toner Low"),
    EnumData(PrinterPortStatus.paperOut, 4, "Paper Out"),
    EnumData(PrinterPortStatus.paperJammed, 5, "Paper Jammed"),
    EnumData(PrinterPortStatus.doorOpen, 6, "Door Open"),
    EnumData(PrinterPortStatus.printerError, 7, "Printer Error"),
    EnumData(PrinterPortStatus.unknown, 8, "Unknown"),
  ],
);
