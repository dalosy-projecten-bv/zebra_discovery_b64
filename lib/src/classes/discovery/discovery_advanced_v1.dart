import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV1 extends DiscoveryAdvancedV0 {
  DiscoveryAdvancedV1(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    printHeadWidth = bytesSplitter.next(2);
  }

  late final Uint8List printHeadWidth;

}
