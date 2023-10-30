import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    processorId = bytesSplitter.next(8);
    tlsRawPort = bytesSplitter.next(2);
    tlsJsonPort = bytesSplitter.next(2);
    wired8021XSecuritySetting = bytesSplitter.next(1);
  }

  late final Uint8List processorId;
  late final Uint8List tlsRawPort;
  late final Uint8List tlsJsonPort;
  late final Uint8List wired8021XSecuritySetting;

}
