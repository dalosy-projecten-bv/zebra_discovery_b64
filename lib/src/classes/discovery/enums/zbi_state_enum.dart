import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  disabled,
  stopped,
  running,
}

final zbiStateEnum = EnumBase(
  defaultEnum: EnumValues.stopped,
  values: {
    EnumData(EnumValues.disabled, 0, "Disabled"),
    EnumData(EnumValues.stopped, 1, "Stopped"),
    EnumData(EnumValues.running, 2, "Running"),
  },
);
