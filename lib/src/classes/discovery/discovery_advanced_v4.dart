import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/wired_8021x_security_setting.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(BytesSplitter b) : super(b) {
    processorId = HexValue.fromByteArray(b.next(8));
    tlsRawPort = IntValue.fromByteArray(b.next(2));
    tlsJsonPort = IntValue.fromByteArray(b.next(2));
    wired8021XSecuritySetting =
        Wired8021xSecuritySetting.fromByteArray(b.next(1));
  }

  late final HexValue processorId;
  late final IntValue tlsRawPort;
  late final IntValue tlsJsonPort;
  late final Wired8021xSecuritySetting wired8021XSecuritySetting;
}
