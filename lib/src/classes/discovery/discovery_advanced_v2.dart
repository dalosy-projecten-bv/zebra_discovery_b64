import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';

part 'discovery_advanced_v2.g.dart';

@JsonSerializable(createFactory: false)
class DiscoveryAdvancedV2 extends DiscoveryAdvancedV1 {
  DiscoveryAdvancedV2(super.byteArray)
      : jsonPort = IntValue(byteArray, 398, 2),
        linkOsMajorVer = ByteValue(byteArray, 400, 1),
        linkOsMinorVer = ByteValue(byteArray, 401, 1);

  final IntValue jsonPort;
  final ByteValue linkOsMajorVer;
  final ByteValue linkOsMinorVer;

  @override
  void initMap() {
    super.initMap();
    map.addEntries({
      MapEntry('JSON_PORT_NUMBER', jsonPort.value.toString()),
      MapEntry('LINK_OS_MAJOR_VER', linkOsMajorVer.value.toString()),
      MapEntry('LINK_OS_MINOR_VER', linkOsMinorVer.value.toString()),
    });
  }

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV2ToJson(this);
}
