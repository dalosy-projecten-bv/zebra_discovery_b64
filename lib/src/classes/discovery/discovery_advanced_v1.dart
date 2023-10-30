import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV1 extends DiscoveryAdvancedV0 {
  DiscoveryAdvancedV1(BytesSplitter b) : super(b) {
    printHeadWidth = IntValue.fromByteArray(b.next(2));
  }

  late final IntValue printHeadWidth;
}
