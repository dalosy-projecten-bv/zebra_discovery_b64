import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';

enum PrinterError {
  none,
  mediaOut,
  ribbonOut,
  headOpen,
  printheadShutdown,
  motorOvertemp,
  invalidHead,
  thermistorFault,
  paperFeedError,
  paused,
  basicRuntimeError,
  basicForced,
}

final printerErrorEnum = SegmentedEnumBase(
  values: [
    SegmentedEnumData(PrinterError.none, 0, 0, "None"),
    SegmentedEnumData(PrinterError.mediaOut, 2, 1, "Paper Out"),
    SegmentedEnumData(PrinterError.ribbonOut, 2, 2, "Ribbon Out"),
    SegmentedEnumData(PrinterError.headOpen, 2, 4, "Head Open"),
    SegmentedEnumData(
        PrinterError.printheadShutdown, 2, 16, "Printhead Shutdown"),
    SegmentedEnumData(PrinterError.motorOvertemp, 2, 32, "Motor Overtemp"),
    SegmentedEnumData(PrinterError.invalidHead, 2, 128, "Invalid Head"),
    SegmentedEnumData(PrinterError.thermistorFault, 2, 512, "Thermistor Fault"),
    SegmentedEnumData(PrinterError.paperFeedError, 2, 16384, "Paper Feed"),
    SegmentedEnumData(PrinterError.paused, 2, 65536, "Paused"),
    SegmentedEnumData(
        PrinterError.basicRuntimeError, 2, 1048576, "Basic Runtime Error"),
    SegmentedEnumData(PrinterError.basicForced, 2, 2097152, "Basic Forced"),
  ],
);
