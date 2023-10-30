import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV2 extends DiscoveryAdvancedV1 {
  DiscoveryAdvancedV2(BytesSplitter b) : super(b) {
    jsonPort = IntValue.fromByteArray(b.next(2));
    linkOsMajorVer = ByteValue.fromByteArray(b.next(1));
    linkOsMinorVer = ByteValue.fromByteArray(b.next(1));
  }

  late final IntValue jsonPort;
  late final ByteValue linkOsMajorVer;
  late final ByteValue linkOsMinorVer;
}
