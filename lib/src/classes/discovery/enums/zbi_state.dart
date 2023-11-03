import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum ZbiState {
  disabled(0, "Disabled"),
  stopped(1, "Stopped"),
  running(2, "Running");

  const ZbiState(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final zbiStateEnum = EnumBase(
  defaultEnum: ZbiState.stopped,
  values: ZbiState.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
