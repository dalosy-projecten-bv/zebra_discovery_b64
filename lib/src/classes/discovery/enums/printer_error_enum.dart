import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value_with_segment.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values_with_segment.dart';

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

final printerErrorEnum = ValuesWithSegment<EnumValues>(
  values: {
    ValueWithSegment(EnumValues.none, 0, 0, "None"),
    ValueWithSegment(EnumValues.mediaOut, 2, 1, "Paper Out"),
    ValueWithSegment(EnumValues.ribbonOut, 2, 2, "Ribbon Out"),
    ValueWithSegment(EnumValues.headOpen, 2, 4, "Head Open"),
    ValueWithSegment(EnumValues.printheadShutdown, 2, 16, "Printhead Shutdown"),
    ValueWithSegment(EnumValues.motorOvertemp, 2, 32, "Motor Overtemp"),
    ValueWithSegment(EnumValues.invalidHead, 2, 128, "Invalid Head"),
    ValueWithSegment(EnumValues.thermistorFault, 2, 512, "Thermistor Fault"),
    ValueWithSegment(EnumValues.paperFeedError, 2, 16384, "Paper Feed"),
    ValueWithSegment(EnumValues.paused, 2, 65536, "Paused"),
    ValueWithSegment(
        EnumValues.basicRuntimeError, 2, 1048576, "Basic Runtime Error"),
    ValueWithSegment(EnumValues.basicForced, 2, 2097152, "Basic Forced"),
  },
);
