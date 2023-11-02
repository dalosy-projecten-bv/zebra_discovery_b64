import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum ZbiState {
  disabled,
  stopped,
  running,
}

final zbiStateEnum = EnumBase(
  defaultEnum: ZbiState.stopped,
  values: [
    EnumData(ZbiState.disabled, 0, "Disabled"),
    EnumData(ZbiState.stopped, 1, "Stopped"),
    EnumData(ZbiState.running, 2, "Running"),
  ],
);
