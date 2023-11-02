import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';

enum PrinterWarning {
  none,
  headUnderTemp,
  ribbonIn,
  batteryLow,
  rfidError,
}

final printerWarningEnum = SegmentedEnumBase(
  values: [
    SegmentedEnumData(PrinterWarning.none, 0, 0, "None"),
    SegmentedEnumData(PrinterWarning.headUnderTemp, 2, 4096, "Head Cold"),
    SegmentedEnumData(PrinterWarning.ribbonIn, 2, 8192, "Ribbon In"),
    SegmentedEnumData(PrinterWarning.batteryLow, 2, 16384, "Battery Low"),
    SegmentedEnumData(PrinterWarning.rfidError, 2, 32768, "RFID Error"),
  ],
);
