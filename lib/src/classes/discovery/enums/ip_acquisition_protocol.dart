import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';

enum IpAcquisitionProtocol {
  all,
  glean,
  rarp,
  bootp,
  dhcp,
  dhcpAndBootp,
  static,
}

final ipAcquisitionProtocolEnum = EnumBase(
  defaultEnum: IpAcquisitionProtocol.all,
  values: {
    EnumData(IpAcquisitionProtocol.all, 0, 'All'),
    EnumData(IpAcquisitionProtocol.glean, 1, 'Glean'),
    EnumData(IpAcquisitionProtocol.rarp, 2, 'RARP'),
    EnumData(IpAcquisitionProtocol.bootp, 3, 'Bootp'),
    EnumData(IpAcquisitionProtocol.dhcp, 4, 'DHCP'),
    EnumData(IpAcquisitionProtocol.dhcpAndBootp, 5, 'DHCP and Bootp'),
    EnumData(IpAcquisitionProtocol.static, 6, 'Static'),
  },
);
