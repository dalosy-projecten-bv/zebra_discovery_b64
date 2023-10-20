import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';

class DiscoveryLegacy implements Discovery {
  DiscoveryLegacy();

  factory DiscoveryLegacy.fromBytes(Uint8List discoveryAsBytes) {
    return DiscoveryLegacy();
  }
}
