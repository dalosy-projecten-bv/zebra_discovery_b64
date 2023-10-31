import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/values.dart';

enum EnumValues {
  all,
  glean,
  rarp,
  bootp,
  dhcp,
  dhcpAndBootp,
  static,
}

final ipAcquisitionProtocolEnum = Values<EnumValues>(
  defaultValue: EnumValues.all,
  values: {
    Value(EnumValues.all, 0, 'All'),
    Value(EnumValues.glean, 1, 'Glean'),
    Value(EnumValues.rarp, 2, 'RARP'),
    Value(EnumValues.bootp, 3, 'Bootp'),
    Value(EnumValues.dhcp, 4, 'DHCP'),
    Value(EnumValues.dhcpAndBootp, 5, 'DHCP and Bootp'),
    Value(EnumValues.static, 6, 'Static'),
  },
);
