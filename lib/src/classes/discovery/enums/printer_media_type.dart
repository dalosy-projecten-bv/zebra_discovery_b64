import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum PrinterMediaType {
  continuous(0, "Continuous"),
  blackMark(1, "Black Mark"),
  gap(2, "Gap");

  const PrinterMediaType(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final printerMediaTypeEnum = EnumBase(
  defaultEnum: PrinterMediaType.gap,
  values: PrinterMediaType.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
