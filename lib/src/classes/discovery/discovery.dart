import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v2.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v4.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_legacy.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_version.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';

abstract class Discovery {
  Discovery(this.byteArray)
      : notUsed1 = NotUsedValue(byteArray, 0, 3),
        discoveryVersion = ByteValue(byteArray, 3, 1) {
    initMap();
  }

  final Uint8List byteArray;
  final NotUsedValue notUsed1;
  final ByteValue discoveryVersion;
  final discoveryDataMap = <String, dynamic>{};

  List<ValueBase> get items => <ValueBase>[
        notUsed1,
        discoveryVersion,
      ];

  bool get error => items.firstWhereOrNull((e) => e.error) != null;

  //This attribute is removed, so we don't need a dependency on the meta package
  // @mustCallSuper
  void initMap() {
    discoveryDataMap.addEntries({
      MapEntry('DISCOVERY_VER', discoveryVersion.value.toString()),
    });
  }

  factory Discovery.fromDiscoveryB64(String discoveryB64) {
    //Strip all after the first :
    if (discoveryB64.contains(':')) {
      discoveryB64 = discoveryB64.substring(0, discoveryB64.indexOf(':'));
    }

    //decode the base64 string to an array of bytes
    final byteArray = base64Decode(discoveryB64);

    final discoveryVersion = DiscoveryVersion(byteArray);

    switch (discoveryVersion.version) {
      case 3:
        return DiscoveryLegacy(byteArray);
      case 4:
        switch (discoveryVersion.advancedVersion) {
          case 0:
            return DiscoveryAdvancedV0(byteArray);
          case 1:
            return DiscoveryAdvancedV1(byteArray);
          case 2:
            return DiscoveryAdvancedV2(byteArray);
          case 3:
            return DiscoveryAdvancedV3(byteArray);
          case >= 4:
            return DiscoveryAdvancedV4(byteArray);
          default:
            throw FormatException(
                "The message contains an unknown advanced version (${discoveryVersion.advancedVersion})");
        }
      default:
        throw FormatException(
            "The message contains an unknown version (${discoveryVersion.version})");
    }
  }

  Map<String, dynamic> toJson();
}
