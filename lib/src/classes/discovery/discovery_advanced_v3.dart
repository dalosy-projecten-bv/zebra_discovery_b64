import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v2.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV3 extends DiscoveryAdvancedV2 {
  DiscoveryAdvancedV3(BytesSplitter b, Uint8List byteArray)
      : super(b, byteArray) {
    avsIniVersion = StringValue.fromByteArray(b.next(6));
  }

  late final StringValue avsIniVersion;
}
