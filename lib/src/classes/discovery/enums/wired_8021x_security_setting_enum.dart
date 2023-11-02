import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  none,
  peap,
  eapTls,
  eapTtls,
}

final wired8021xSecuritySettingEnum = Values<EnumValues>(
  defaultValue: EnumValues.none,
  values: {
    Value(EnumValues.none, 0, "None"),
    Value(EnumValues.peap, 1, "PEAP"),
    Value(EnumValues.eapTls, 2, "EAP-TLS"),
    Value(EnumValues.eapTtls, 3, "EAP-TTLS"),
  },
);
