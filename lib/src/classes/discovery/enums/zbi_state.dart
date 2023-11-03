import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'zbi_state.g.dart';

@JsonEnum(alwaysCreate: true)
enum ZbiState implements Serializable {
  disabled(0, "Disabled"),
  stopped(1, "Stopped"),
  running(2, "Running");

  const ZbiState(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$ZbiStateEnumMap[this]!;
}

final zbiStateEnum = EnumBase(
  defaultEnum: ZbiState.stopped,
  values: ZbiState.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
