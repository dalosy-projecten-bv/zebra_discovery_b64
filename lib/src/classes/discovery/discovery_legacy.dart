import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryLegacy extends Discovery {
  DiscoveryLegacy(BytesSplitter b, Uint8List byteArray) : super(b, byteArray) {
    productNumber = StringValue(byteArray.fromPositions(4, 8));
    productName = StringValue(byteArray.fromPositions(12, 20));
    dateCode = StringValue(byteArray.fromPositions(32, 7));
    fwVersion = StringValue(byteArray.fromPositions(39, 10));
    companyAbbreviation = StringValue(byteArray.fromPositions(49, 5));
    hwAddress = HexValue(byteArray.fromPositions(54, 6));
    serialNum = StringValue(byteArray.fromPositions(60, 10));
    usingNetProtocol =
        EnumValue(byteArray.fromPositions(70, 2), ipAcquisitionProtocolEnum);
    ipAddress = AddressValue(byteArray.fromPositions(72, 4));
    subnetMask = AddressValue(byteArray.fromPositions(76, 4));
    defaultGateway = AddressValue(byteArray.fromPositions(80, 4));
    systemName = StringValue(byteArray.fromPositions(84, 25));
    notUsed2 = NotUsedValue(byteArray.fromPositions(109, 103));
    getCommunityName = HexValue(byteArray.fromPositions(212, 32));
    setCommunityName = HexValue(byteArray.fromPositions(244, 32));
    notUsed3 = NotUsedValue(byteArray.fromPositions(276, 82));
    portStatus =
        EnumValue(byteArray.fromPositions(358, 1), printerPortStatusEnum);
    portName = StringValue(byteArray.fromPositions(359, 16));
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
