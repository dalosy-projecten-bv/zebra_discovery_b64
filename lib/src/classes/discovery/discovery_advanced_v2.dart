import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV2 extends DiscoveryAdvancedV1 {
  DiscoveryAdvancedV2(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    jsonPort = bytesSplitter.next(2);
    linkOsMajorVer = bytesSplitter.next(1);
    linkOsMinorVer = bytesSplitter.next(1);
  }

  late final Uint8List jsonPort;
  late final Uint8List linkOsMajorVer;
  late final Uint8List linkOsMinorVer;
}
