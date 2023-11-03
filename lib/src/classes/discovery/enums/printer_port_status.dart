import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'printer_port_status.g.dart';

@JsonEnum(alwaysCreate: true)
enum PrinterPortStatus implements Serializable {
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

  @override
  String toJson() => _$PrinterPortStatusEnumMap[this]!;
}

final printerPortStatusEnum = EnumBase(
  defaultEnum: PrinterPortStatus.unknown,
  values: PrinterPortStatus.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
