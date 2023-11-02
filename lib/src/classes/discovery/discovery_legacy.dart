import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryLegacy extends Discovery {
  DiscoveryLegacy(BytesSplitter b) : super(b) {
    productNumber = StringValue.fromByteArray(b.next(8));
    productName = StringValue.fromByteArray(b.next(20));
    dateCode = StringValue.fromByteArray(b.next(7));
    fwVersion = StringValue.fromByteArray(b.next(10));
    companyAbbreviation = StringValue.fromByteArray(b.next(5));
    hwAddress = HexValue.fromByteArray(b.next(6));
    serialNum = StringValue.fromByteArray(b.next(10));
    usingNetProtocol =
        EnumValue.fromByteArray(ipAcquisitionProtocolEnum, b.next(2));
    ipAddress = AddressValue.fromByteArray(b.next(4));
    subnetMask = AddressValue.fromByteArray(b.next(4));
    defaultGateway = AddressValue.fromByteArray(b.next(4));
    systemName = StringValue.fromByteArray(b.next(25));
    notUsed2 = NotUsedValue.fromByteArray(b.next(103));
    getCommunityName = HexValue.fromByteArray(b.next(32));
    setCommunityName = HexValue.fromByteArray(b.next(32));
    notUsed3 = NotUsedValue.fromByteArray(b.next(82));
    portStatus = EnumValue.fromByteArray(printerPortStatusEnum, b.next(1));
    portName = StringValue.fromByteArray(b.next(16));
  }

  late final StringValue productNumber;
  late final StringValue productName;
  late final StringValue dateCode;
  late final StringValue fwVersion;
  late final StringValue companyAbbreviation;
  late final HexValue hwAddress;
  late final StringValue serialNum;
  late final EnumValue<IpAcquisitionProtocol> usingNetProtocol;
  late final AddressValue ipAddress;
  late final AddressValue subnetMask;
  late final AddressValue defaultGateway;
  late final StringValue systemName;
  late final NotUsedValue notUsed2;
  late final HexValue getCommunityName;
  late final HexValue setCommunityName;
  late final NotUsedValue notUsed3;
  late final EnumValue<PrinterPortStatus> portStatus;
  late final StringValue portName;

  @override
  void initMap() {
    // TODO: implement initMap
  }
}
