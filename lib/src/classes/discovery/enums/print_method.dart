import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'print_method.g.dart';

/// The discovered print method
@JsonEnum(alwaysCreate: true)
enum PrintMethod implements Serializable {
  directThermal(0, 'Direct Thermal'),
  thermalTransfer(1, 'Thermal Transfer');

  const PrintMethod(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$PrintMethodEnumMap[this]!;
}

final printMethodEnum = EnumBase(
  defaultEnum: PrintMethod.directThermal,
  values: PrintMethod.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
