import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum Wired8021xSecuritySettingEnum {
  none(bitfieldValue: 0, enumAsString: "None"),
  peap(bitfieldValue: 1, enumAsString: "PEAP"),
  eapTls(bitfieldValue: 2, enumAsString: "EAP-TLS"),
  eapTtls(bitfieldValue: 3, enumAsString: "EAP-TTLS");

  const Wired8021xSecuritySettingEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static Wired8021xSecuritySettingEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => Wired8021xSecuritySettingEnum.none,
    ));
  }
}
