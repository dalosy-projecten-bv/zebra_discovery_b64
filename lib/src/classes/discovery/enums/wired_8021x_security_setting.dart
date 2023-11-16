import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'wired_8021x_security_setting.g.dart';

/// The discovered wired 8021x security
@JsonEnum(alwaysCreate: true)
enum Wired8021xSecuritySetting implements Serializable {
  none(0, "None"),
  peap(1, "PEAP"),
  eapTls(2, "EAP-TLS"),
  eapTtls(3, "EAP-TTLS");

  const Wired8021xSecuritySetting(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;

  @override
  String toJson() => _$Wired8021xSecuritySettingEnumMap[this]!;
}

final wired8021xSecuritySettingEnum = EnumBase(
  defaultEnum: Wired8021xSecuritySetting.none,
  values: Wired8021xSecuritySetting.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
