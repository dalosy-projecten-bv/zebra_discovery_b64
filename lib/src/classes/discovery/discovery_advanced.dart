import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';

class DiscoveryAdvanced implements Discovery {
  DiscoveryAdvanced();

  factory DiscoveryAdvanced.fromBytes(Uint8List discoveryAsBytes) {
    return DiscoveryAdvanced();
  }
}
