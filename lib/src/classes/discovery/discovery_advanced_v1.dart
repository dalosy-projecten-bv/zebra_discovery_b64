import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV1 extends DiscoveryAdvancedV0 {
  DiscoveryAdvancedV1(BytesSplitter b, Uint8List byteArray) : super(b, byteArray) {
    printHeadWidth = IntValue.fromPositions(byteArray, 396, 2);
  }

  late final IntValue printHeadWidth;
}
