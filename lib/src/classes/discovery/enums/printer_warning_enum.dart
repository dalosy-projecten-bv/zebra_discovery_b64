import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';

enum EnumValues {
  none,
  headUnderTemp,
  ribbonIn,
  batteryLow,
  rfidError,
}

final printerWarningEnum = SegmentedEnumBase(
  values: {
    SegmentedEnumData(EnumValues.none, 0, 0, "None"),
    SegmentedEnumData(EnumValues.headUnderTemp, 2, 4096, "Head Cold"),
    SegmentedEnumData(EnumValues.ribbonIn, 2, 8192, "Ribbon In"),
    SegmentedEnumData(EnumValues.batteryLow, 2, 16384, "Battery Low"),
    SegmentedEnumData(EnumValues.rfidError, 2, 32768, "RFID Error"),
  },
);
