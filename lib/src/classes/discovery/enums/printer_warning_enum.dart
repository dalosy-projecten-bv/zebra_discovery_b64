import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value_with_segment.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values_with_segment.dart';

enum EnumValues {
  none,
  headUnderTemp,
  ribbonIn,
  batteryLow,
  rfidError,
}

final printerWarningEnum = ValuesWithSegment<EnumValues>(
  values: {
    ValueWithSegment(EnumValues.none, 0, 0, "None"),
    ValueWithSegment(EnumValues.headUnderTemp, 2, 4096, "Head Cold"),
    ValueWithSegment(EnumValues.ribbonIn, 2, 8192, "Ribbon In"),
    ValueWithSegment(EnumValues.batteryLow, 2, 16384, "Battery Low"),
    ValueWithSegment(EnumValues.rfidError, 2, 32768, "RFID Error"),
  },
);
