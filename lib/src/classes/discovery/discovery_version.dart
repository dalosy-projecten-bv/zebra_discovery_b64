import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';

class DiscoveryVersion {
  DiscoveryVersion(Uint8List byteArray) {
    version = ByteValue(byteArray, 3, 1).value ?? -1;
    advancedVersion =
        version == 4 ? ByteValue(byteArray, 4, 1).value ?? -1 : -1;
  }

  late final int version;
  late final int advancedVersion;
}
