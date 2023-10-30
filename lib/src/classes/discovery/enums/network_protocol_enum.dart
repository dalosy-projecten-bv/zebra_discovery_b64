import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum NetworkProtocolEnum {
  none(bitfieldValue: 0, enumAsString: "None"),
  ftp(bitfieldValue: 1, enumAsString: "FTP"),
  lpd(bitfieldValue: 2, enumAsString: "LPD"),
  tcpRaw(bitfieldValue: 4, enumAsString: "TCP"),
  udpRaw(bitfieldValue: 8, enumAsString: "UDP"),
  http(bitfieldValue: 16, enumAsString: "HTTP"),
  smtp(bitfieldValue: 32, enumAsString: "SMTP"),
  pop3(bitfieldValue: 64, enumAsString: "POP3"),
  snmp(bitfieldValue: 128, enumAsString: "SNMP"),
  telnet(bitfieldValue: 256, enumAsString: "Telnet"),
  weblink(bitfieldValue: 512, enumAsString: "Weblink"),
  tls(bitfieldValue: 1024, enumAsString: "TLS"),
  https(bitfieldValue: 2048, enumAsString: "HTTPS");

  const NetworkProtocolEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static List<NetworkProtocolEnum> listFromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    final list = <NetworkProtocolEnum>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
