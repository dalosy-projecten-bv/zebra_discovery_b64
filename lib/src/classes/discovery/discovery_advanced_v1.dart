import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'discovery_advanced_v1.g.dart';

@MyJsonSerializable()
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

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV1ToJson(this);
}
