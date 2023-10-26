import 'dart:convert';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_legacy.dart';

abstract class Discovery {
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
    switch (version) {
      case 3:
        return DiscoveryLegacy.fromBytes(discoveryAsBytes);
      case 4:
        if (discoveryAsBytes.length <= 4) {
          throw Exception(
            "The advanced version can not be detected because the length of the message is too short (${discoveryAsBytes.length}).",
          );
        }
        final advancedVersion = discoveryAsBytes[4];
        switch(advancedVersion) {
          case 0:
            break;
          case 1:
            break;
          case 2:
            break;
          case 4:
            break;
          default:
            throw Exception("The message contains an unknown advanced version ($version)");
        }
        return DiscoveryAdvanced.fromBytes(discoveryAsBytes);
      default:
        throw Exception("The message contains an unknown version ($version)");
    }
  }
}
