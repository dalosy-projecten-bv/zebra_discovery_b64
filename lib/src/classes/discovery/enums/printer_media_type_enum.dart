import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  continuous,
  blackMark,
  gap,
}

final printerMediaTypeEnum = Values<EnumValues>(
  defaultValue: EnumValues.gap,
  values: {
    Value(EnumValues.continuous, 0, "Continuous"),
    Value(EnumValues.blackMark, 1, "Black Mark"),
    Value(EnumValues.gap, 2, "Gap"),
  },
);
