import 'dart:convert';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v2.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v3.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v4.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_legacy.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

abstract class Discovery {
  Discovery(BytesSplitter b) {
    notUsed1 = NotUsedValue.fromByteArray(b.next(3));
    discoveryVersion = ByteValue.fromByteArray(b.next(1));
  }

  late final NotUsedValue notUsed1;
  late final ByteValue discoveryVersion;
  final map = <String, dynamic>{};

  void initMap();

  factory Discovery.fromDiscoveryB64(String discoveryB64) {
    //Strip all after the first :
    if (discoveryB64.contains(':')) {
      discoveryB64 = discoveryB64.substring(0, discoveryB64.indexOf(':'));
    }

    //decode the base64 string to an array of bytes
    final discoveryAsBytes = base64Decode(discoveryB64);

    //Try to determine the version of the discovery message
    if (discoveryAsBytes.length <= 3) {
      throw Exception(
        "The version can not be detected because the length of the message is too short (${discoveryAsBytes.length}).",
      );
    }

    //Use the version to return the right discovery class
    final version = discoveryAsBytes[3];
    final bytesSplitter = BytesSplitter(discoveryAsBytes);
    switch (version) {
      case 3:
        return DiscoveryLegacy(bytesSplitter);
      case 4:
        if (discoveryAsBytes.length <= 4) {
          throw Exception(
            "The advanced version can not be detected because the length of the message is too short (${discoveryAsBytes.length}).",
          );
        }
        final advancedVersion = discoveryAsBytes[4];
        switch (advancedVersion) {
          case 0:
            return DiscoveryAdvancedV0(bytesSplitter);
          case 1:
            return DiscoveryAdvancedV1(bytesSplitter);
          case 2:
            return DiscoveryAdvancedV2(bytesSplitter);
          case 3:
            return DiscoveryAdvancedV3(bytesSplitter);
          case >= 4:
            return DiscoveryAdvancedV4(bytesSplitter);
          default:
            throw Exception(
                "The message contains an unknown advanced version ($version)");
        }
      default:
        throw Exception("The message contains an unknown version ($version)");
    }
  }
}
