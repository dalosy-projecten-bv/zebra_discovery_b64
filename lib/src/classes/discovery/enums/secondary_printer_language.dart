import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'secondary_printer_language.g.dart';

@JsonEnum(alwaysCreate: true)
enum SecondaryPrinterLanguage implements Serializable {
  unknown(0, "Unknown"),
  sgd(1, "SGD"),
  snmp(2, "SNMP");

  const SecondaryPrinterLanguage(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$SecondaryPrinterLanguageEnumMap[this]!;
}

final secondaryPrinterLanguageEnum = EnumBase(
  defaultEnum: SecondaryPrinterLanguage.unknown,
  values: SecondaryPrinterLanguage.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
