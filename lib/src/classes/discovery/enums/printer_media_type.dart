import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum PrinterMediaType {
  continuous,
  blackMark,
  gap,
}

final printerMediaTypeEnum = EnumBase(
  defaultEnum: PrinterMediaType.gap,
  values: [
    EnumData(PrinterMediaType.continuous, 0, "Continuous"),
    EnumData(PrinterMediaType.blackMark, 1, "Black Mark"),
    EnumData(PrinterMediaType.gap, 2, "Gap"),
  ],
);
