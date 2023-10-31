import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  none,
  ftp,
  lpd,
  tcpRaw,
  udpRaw,
  http,
  smtp,
  pop3,
  snmp,
  telnet,
  weblink,
  tls,
  https,
}

final networkProtocolEnum = Values<EnumValues>(
  defaultValue: EnumValues.none,
  values: {
    Value(EnumValues.none, 0, 'None'),
    Value(EnumValues.ftp, 1, 'FTP'),
    Value(EnumValues.lpd, 2, 'LPD'),
    Value(EnumValues.tcpRaw, 4, 'TCP'),
    Value(EnumValues.udpRaw, 8, 'UDP'),
    Value(EnumValues.http, 16, 'HTTP'),
    Value(EnumValues.smtp, 32, 'SMTP'),
    Value(EnumValues.pop3, 64, 'POP3'),
    Value(EnumValues.snmp, 128, 'SNMP'),
    Value(EnumValues.telnet, 256, 'Telnet'),
    Value(EnumValues.weblink, 512, 'Weblink'),
    Value(EnumValues.tls, 1024, 'TLS'),
    Value(EnumValues.https, 2048, 'HTTPS'),
  },
);
