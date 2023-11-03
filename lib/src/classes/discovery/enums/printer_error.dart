import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'printer_error.g.dart';

@JsonEnum(alwaysCreate: true)
enum PrinterError implements Serializable {
  none(0, 0, "None"),
  mediaOut(2, 1, "Paper Out"),
  ribbonOut(2, 2, "Ribbon Out"),
  headOpen(2, 4, "Head Open"),
  printheadShutdown(2, 16, "Printhead Shutdown"),
  motorOvertemp(2, 32, "Motor Overtemp"),
  invalidHead(2, 128, "Invalid Head"),
  thermistorFault(2, 512, "Thermistor Fault"),
  paperFeedError(2, 16384, "Paper Feed"),
  paused(2, 65536, "Paused"),
  basicRuntimeError(2, 1048576, "Basic Runtime Error"),
  basicForced(2, 2097152, "Basic Forced");

  const PrinterError(this.segment, this.bitfieldValue, this.enumAsString);

  final int segment;
  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$PrinterErrorEnumMap[this]!;
}

final printerErrorEnum = SegmentedEnumBase(
  values: PrinterError.values,
  segment: (enumeration) => enumeration.segment,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
