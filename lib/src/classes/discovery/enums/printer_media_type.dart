import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'printer_media_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum PrinterMediaType implements Serializable {
  continuous(0, "Continuous"),
  blackMark(1, "Black Mark"),
  gap(2, "Gap");

  const PrinterMediaType(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$PrinterMediaTypeEnumMap[this]!;
}

final printerMediaTypeEnum = EnumBase(
  defaultEnum: PrinterMediaType.gap,
  values: PrinterMediaType.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
