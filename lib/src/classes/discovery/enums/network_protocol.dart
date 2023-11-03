import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum NetworkProtocol {
  none(0, 'None'),
  ftp(1, 'FTP'),
  lpd(2, 'LPD'),
  tcpRaw(4, 'TCP'),
  udpRaw(8, 'UDP'),
  http(16, 'HTTP'),
  smtp(32, 'SMTP'),
  pop3(64, 'POP3'),
  snmp(128, 'SNMP'),
  telnet(256, 'Telnet'),
  weblink(512, 'Weblink'),
  tls(1024, 'TLS'),
  https(2048, 'HTTPS');

  const NetworkProtocol(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final networkProtocolEnum = EnumBase(
  defaultEnum: NetworkProtocol.none,
  values: NetworkProtocol.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
