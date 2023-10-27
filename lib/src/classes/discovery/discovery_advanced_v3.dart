import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v2.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV3 extends DiscoveryAdvancedV2 {
  DiscoveryAdvancedV3(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    avsIniVersion = bytesSplitter.getNextBytes(6);
  }

  late final Uint8List avsIniVersion;

  @override
  void initMap() {
    super.initMap();
    // TODO: implement initMap
  }
}
