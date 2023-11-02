import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

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

final networkProtocolEnum = EnumBase(
  defaultEnum: EnumValues.none,
  values: {
    EnumData(EnumValues.none, 0, 'None'),
    EnumData(EnumValues.ftp, 1, 'FTP'),
    EnumData(EnumValues.lpd, 2, 'LPD'),
    EnumData(EnumValues.tcpRaw, 4, 'TCP'),
    EnumData(EnumValues.udpRaw, 8, 'UDP'),
    EnumData(EnumValues.http, 16, 'HTTP'),
    EnumData(EnumValues.smtp, 32, 'SMTP'),
    EnumData(EnumValues.pop3, 64, 'POP3'),
    EnumData(EnumValues.snmp, 128, 'SNMP'),
    EnumData(EnumValues.telnet, 256, 'Telnet'),
    EnumData(EnumValues.weblink, 512, 'Weblink'),
    EnumData(EnumValues.tls, 1024, 'TLS'),
    EnumData(EnumValues.https, 2048, 'HTTPS'),
  },
);
