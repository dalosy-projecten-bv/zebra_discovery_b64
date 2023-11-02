import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/wired_8021x_security_setting.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(super.byteArray) {
    processorId = HexValue(byteArray.get(408, 8));
    tlsRawPort = IntValue(byteArray.get(416, 2));
    tlsJsonPort = IntValue(byteArray.get(418, 2));
    wired8021XSecuritySetting =
        EnumValue(byteArray.get(420, 1), wired8021xSecuritySettingEnum);
  }

  late final HexValue processorId;
  late final IntValue tlsRawPort;
  late final IntValue tlsJsonPort;
  late final EnumValue<Wired8021xSecuritySetting> wired8021XSecuritySetting;
}
