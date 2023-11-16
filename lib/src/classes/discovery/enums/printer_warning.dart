import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'printer_warning.g.dart';

/// The discovered printer warnings
@JsonEnum(alwaysCreate: true)
enum PrinterWarning implements Serializable {
  none(0, 0, "None"),
  headUnderTemp(2, 4096, "Head Cold"),
  ribbonIn(2, 8192, "Ribbon In"),
  batteryLow(2, 16384, "Battery Low"),
  rfidError(2, 32768, "RFID Error");

  const PrinterWarning(this.segment, this.bitfieldValue, this.enumAsString);

  final int segment;
  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$PrinterWarningEnumMap[this]!;
}

final printerWarningEnum = SegmentedEnumBase(
  values: PrinterWarning.values,
  segment: (enumeration) => enumeration.segment,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
