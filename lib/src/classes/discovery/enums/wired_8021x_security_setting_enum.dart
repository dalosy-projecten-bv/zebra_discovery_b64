import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum Wired8021xSecuritySetting {
  none,
  peap,
  eapTls,
  eapTtls,
}

final wired8021xSecuritySettingEnum = EnumBase(
  defaultEnum: Wired8021xSecuritySetting.none,
  values: {
    EnumData(Wired8021xSecuritySetting.none, 0, "None"),
    EnumData(Wired8021xSecuritySetting.peap, 1, "PEAP"),
    EnumData(Wired8021xSecuritySetting.eapTls, 2, "EAP-TLS"),
    EnumData(Wired8021xSecuritySetting.eapTtls, 3, "EAP-TTLS"),
  },
);
