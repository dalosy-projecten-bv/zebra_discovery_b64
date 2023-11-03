import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'ip_acquisition_protocol.g.dart';

@JsonEnum(alwaysCreate: true)
enum IpAcquisitionProtocol implements Serializable {
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

  @override
  String toJson() => _$IpAcquisitionProtocolEnumMap[this]!;
}

final ipAcquisitionProtocolEnum = EnumBase(
  defaultEnum: IpAcquisitionProtocol.all,
  values: IpAcquisitionProtocol.values,
  bitfieldValue: (enumeration) => enumeration.bitfieldValue,
  enumAsString: (enumeration) => enumeration.enumAsString,
);
