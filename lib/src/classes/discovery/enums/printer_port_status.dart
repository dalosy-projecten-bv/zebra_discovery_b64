import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum PrinterPortStatus {
  none(0, "None"),
  online(1, "Online"),
  offline(2, "Offline"),
  tonerLow(3, "Toner Low"),
  paperOut(4, "Paper Out"),
  paperJammed(5, "Paper Jammed"),
  doorOpen(6, "Door Open"),
  printerError(7, "Printer Error"),
  unknown(8, "Unknown");

  const PrinterPortStatus(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final printerPortStatusEnum = EnumBase(
  defaultEnum: PrinterPortStatus.unknown,
  values: PrinterPortStatus.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
