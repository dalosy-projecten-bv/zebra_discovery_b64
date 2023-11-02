import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';

enum EnumValues {
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
  values: {
    SegmentedEnumData(EnumValues.none, 0, 0, "None"),
    SegmentedEnumData(EnumValues.mediaOut, 2, 1, "Paper Out"),
    SegmentedEnumData(EnumValues.ribbonOut, 2, 2, "Ribbon Out"),
    SegmentedEnumData(EnumValues.headOpen, 2, 4, "Head Open"),
    SegmentedEnumData(
        EnumValues.printheadShutdown, 2, 16, "Printhead Shutdown"),
    SegmentedEnumData(EnumValues.motorOvertemp, 2, 32, "Motor Overtemp"),
    SegmentedEnumData(EnumValues.invalidHead, 2, 128, "Invalid Head"),
    SegmentedEnumData(EnumValues.thermistorFault, 2, 512, "Thermistor Fault"),
    SegmentedEnumData(EnumValues.paperFeedError, 2, 16384, "Paper Feed"),
    SegmentedEnumData(EnumValues.paused, 2, 65536, "Paused"),
    SegmentedEnumData(
        EnumValues.basicRuntimeError, 2, 1048576, "Basic Runtime Error"),
    SegmentedEnumData(EnumValues.basicForced, 2, 2097152, "Basic Forced"),
  },
);
