import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum IpAcquisitionProtocolEnum {
  all(bitfieldValue: 0, enumAsString: "All"),
  glean(bitfieldValue: 1, enumAsString: "Glean"),
  rarp(bitfieldValue: 2, enumAsString: "RARP"),
  bootp(bitfieldValue: 3, enumAsString: "Bootp"),
  dhcp(bitfieldValue: 4, enumAsString: "DHCP"),
  dhcpAndBootp(bitfieldValue: 5, enumAsString: "DHCP and Bootp"),
  static(bitfieldValue: 6, enumAsString: "Static");

  const IpAcquisitionProtocolEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static IpAcquisitionProtocolEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => IpAcquisitionProtocolEnum.all,
    ));
  }
}
