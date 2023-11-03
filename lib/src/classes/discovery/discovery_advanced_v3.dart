import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v2.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';

part 'discovery_advanced_v3.g.dart';

@JsonSerializable(createFactory: false)
class DiscoveryAdvancedV3 extends DiscoveryAdvancedV2 {
  DiscoveryAdvancedV3(super.byteArray)
      : avsIniVersion = StringValue(byteArray, 402, 6);

  final StringValue avsIniVersion;

  @override
  void initMap() {
    super.initMap();
    map.addEntries({
      MapEntry('AVS_INI_VER', avsIniVersion.value),
    });
  }

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV3ToJson(this);
}
