import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';

class DiscoveryAdvancedV1 extends DiscoveryAdvancedV0 {
  DiscoveryAdvancedV1(super.byteArray)
      : printHeadWidth = IntValue(byteArray, 396, 2);

  final IntValue printHeadWidth;

  @override
  void initMap() {
    super.initMap();
    map.addEntries({
      MapEntry('PRINT_HEAD_WIDTH', printHeadWidth.value.toString()),
    });
  }
}
