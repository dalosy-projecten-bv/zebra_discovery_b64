import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'discovered_printer_language.g.dart';

/// The discovered printer language
@JsonEnum(alwaysCreate: true)
enum DiscoveredPrinterLanguage implements Serializable {
  unknown(0, 'unknown'),
  zpl(1, 'ZPL'),
  cpcl(2, 'CPCL'),
  epl(4, 'EPL');

  const DiscoveredPrinterLanguage(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$DiscoveredPrinterLanguageEnumMap[this]!;
}

final discoveredPrinterLanguagesEnum = EnumBase(
  defaultEnum: DiscoveredPrinterLanguage.unknown,
  values: DiscoveredPrinterLanguage.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
