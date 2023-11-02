import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/wired_8021x_security_setting_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(BytesSplitter b, Uint8List byteArray)
      : super(b, byteArray) {
    processorId = HexValue.fromPositions(byteArray, 408, 8);
    tlsRawPort = IntValue.fromPositions(byteArray, 416, 2);
    tlsJsonPort = IntValue.fromPositions(byteArray, 418, 2);
    wired8021XSecuritySetting =
        EnumValue.fromByteArray(wired8021xSecuritySettingEnum, b.next(1));
  }

  late final HexValue processorId;
  late final IntValue tlsRawPort;
  late final IntValue tlsJsonPort;
  late final EnumValue<Wired8021xSecuritySetting> wired8021XSecuritySetting;
}
