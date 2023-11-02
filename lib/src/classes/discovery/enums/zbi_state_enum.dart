import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  disabled,
  stopped,
  running,
}

final zbiStateEnum = Values<EnumValues>(
  defaultValue: EnumValues.stopped,
  values: {
    Value(EnumValues.disabled, 0, "Disabled"),
    Value(EnumValues.stopped, 1, "Stopped"),
    Value(EnumValues.running, 2, "Running"),
  },
);
