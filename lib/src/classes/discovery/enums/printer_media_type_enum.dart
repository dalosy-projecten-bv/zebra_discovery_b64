import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  continuous,
  blackMark,
  gap,
}

final printerMediaTypeEnum = EnumBase(
  defaultEnum: EnumValues.gap,
  values: {
    EnumData(EnumValues.continuous, 0, "Continuous"),
    EnumData(EnumValues.blackMark, 1, "Black Mark"),
    EnumData(EnumValues.gap, 2, "Gap"),
  },
);
