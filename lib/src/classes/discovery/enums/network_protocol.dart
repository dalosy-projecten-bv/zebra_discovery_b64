import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum NetworkProtocol {
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
  defaultEnum: NetworkProtocol.none,
  values: {
    EnumData(NetworkProtocol.none, 0, 'None'),
    EnumData(NetworkProtocol.ftp, 1, 'FTP'),
    EnumData(NetworkProtocol.lpd, 2, 'LPD'),
    EnumData(NetworkProtocol.tcpRaw, 4, 'TCP'),
    EnumData(NetworkProtocol.udpRaw, 8, 'UDP'),
    EnumData(NetworkProtocol.http, 16, 'HTTP'),
    EnumData(NetworkProtocol.smtp, 32, 'SMTP'),
    EnumData(NetworkProtocol.pop3, 64, 'POP3'),
    EnumData(NetworkProtocol.snmp, 128, 'SNMP'),
    EnumData(NetworkProtocol.telnet, 256, 'Telnet'),
    EnumData(NetworkProtocol.weblink, 512, 'Weblink'),
    EnumData(NetworkProtocol.tls, 1024, 'TLS'),
    EnumData(NetworkProtocol.https, 2048, 'HTTPS'),
  },
);
