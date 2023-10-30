import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ListNetworkProtocol extends ValueBase<List<NetworkProtocolEnum>> {
  ListNetworkProtocol(super.byteArray, super.value);

  factory ListNetworkProtocol.fromByteArray(Uint8List byteArray) {
    return ListNetworkProtocol(
      byteArray,
      NetworkProtocolEnum.listFromByteArray(byteArray),
    );
  }
}
