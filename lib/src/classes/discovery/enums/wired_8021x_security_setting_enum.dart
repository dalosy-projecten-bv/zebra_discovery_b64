import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum EnumValues {
  none,
  peap,
  eapTls,
  eapTtls,
}

final wired8021xSecuritySettingEnum = EnumBase(
  defaultEnum: EnumValues.none,
  values: {
    EnumData(EnumValues.none, 0, "None"),
    EnumData(EnumValues.peap, 1, "PEAP"),
    EnumData(EnumValues.eapTls, 2, "EAP-TLS"),
    EnumData(EnumValues.eapTtls, 3, "EAP-TTLS"),
  },
);
