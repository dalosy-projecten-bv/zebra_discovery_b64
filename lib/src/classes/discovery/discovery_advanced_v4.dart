import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/wired_8021x_security_setting.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'discovery_advanced_v4.g.dart';

/// This class is used for discovery_b64 advanced structures with version >=4
@MyJsonSerializable()
class DiscoveryAdvancedV4 extends DiscoveryAdvancedV3 {
  DiscoveryAdvancedV4(super.byteArray)
      : processorId = HexValue(byteArray, 408, 8),
        tlsRawPort = IntValue(byteArray, 416, 2),
        tlsJsonPort = IntValue(byteArray, 418, 2),
        wired8021XSecuritySetting = EnumValue(
          byteArray,
          420,
          1,
          wired8021xSecuritySettingEnum,
        );

  final HexValue processorId;
  final IntValue tlsRawPort;
  final IntValue tlsJsonPort;
  final EnumValue<Wired8021xSecuritySetting> wired8021XSecuritySetting;

  @override
  void initMap() {
    super.initMap();
    discoveryDataMap.addEntries({
      MapEntry('PROCESSOR_ID', processorId.value),
      MapEntry('TLS_RAW_PORT_NUMBER', tlsRawPort.value.toString()),
      MapEntry('TLS_JSON_PORT_NUMBER', tlsJsonPort.value.toString()),
      MapEntry('WIRED_8021X_SECURITY_SETTING',
          wired8021XSecuritySetting.value?.enumAsString),
    });
  }

  @override
  List<ValueBase> get items => <ValueBase>[
        ...super.items,
        processorId,
        tlsRawPort,
        tlsJsonPort,
        wired8021XSecuritySetting,
      ];

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV4ToJson(this);
}
