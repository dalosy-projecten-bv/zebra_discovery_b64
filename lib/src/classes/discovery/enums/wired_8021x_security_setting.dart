import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum Wired8021xSecuritySetting {
  none(0, "None"),
  peap(1, "PEAP"),
  eapTls(2, "EAP-TLS"),
  eapTtls(3, "EAP-TTLS");

  const Wired8021xSecuritySetting(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final wired8021xSecuritySettingEnum = EnumBase(
  defaultEnum: Wired8021xSecuritySetting.none,
  values: Wired8021xSecuritySetting.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
