import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    processorId = bytesSplitter.getNextBytes(8);
    tlsRawPort = bytesSplitter.getNextBytes(2);
    tlsJsonPort = bytesSplitter.getNextBytes(2);
    wired8021XSecuritySetting = bytesSplitter.getNextBytes(1);
  }

  late final Uint8List processorId;
  late final Uint8List tlsRawPort;
  late final Uint8List tlsJsonPort;
  late final Uint8List wired8021XSecuritySetting;

  @override
  void initMap() {
    super.initMap();
    // TODO: implement initMap
  }
}
