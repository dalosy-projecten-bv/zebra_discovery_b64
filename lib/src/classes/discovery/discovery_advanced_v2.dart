import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'discovery_advanced_v2.g.dart';

@MyJsonSerializable()
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
  List<ValueBase> get items => <ValueBase>[
        ...super.items,
        jsonPort,
        linkOsMajorVer,
        linkOsMinorVer,
      ];

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV2ToJson(this);
}
