import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

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

final printerPortStatusEnum = Values<EnumValues>(
  defaultValue: EnumValues.unknown,
  values: {
    Value(EnumValues.none, 0, "None"),
    Value(EnumValues.online, 1, "Online"),
    Value(EnumValues.offline, 2, "Offline"),
    Value(EnumValues.tonerLow, 3, "Toner Low"),
    Value(EnumValues.paperOut, 4, "Paper Out"),
    Value(EnumValues.paperJammed, 5, "Paper Jammed"),
    Value(EnumValues.doorOpen, 6, "Door Open"),
    Value(EnumValues.printerError, 7, "Printer Error"),
    Value(EnumValues.unknown, 8, "Unknown"),
  },
);
