import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';

enum IpAcquisitionProtocol {
  all(0, 'All'),
  glean(1, 'Glean'),
  rarp(2, 'RARP'),
  bootp(3, 'Bootp'),
  dhcp(4, 'DHCP'),
  dhcpAndBootp(5, 'DHCP and Bootp'),
  static(6, 'Static');

  const IpAcquisitionProtocol(this.bitfieldValue, this.enumAsString);

  final int bitfieldValue;
  final String enumAsString;
}

final ipAcquisitionProtocolEnum = EnumBase(
  defaultEnum: IpAcquisitionProtocol.all,
  values: IpAcquisitionProtocol.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
