import 'dart:typed_data';

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
  DiscoveryLegacy(BytesSplitter b, Uint8List byteArray) : super(b, byteArray) {
    productNumber = StringValue.fromPositions(byteArray, 4, 8);
    productName = StringValue.fromPositions(byteArray, 12, 20);
    dateCode = StringValue.fromPositions(byteArray, 32, 7);
    fwVersion = StringValue.fromPositions(byteArray, 39, 10);
    companyAbbreviation = StringValue.fromPositions(byteArray, 49, 5);
    hwAddress = HexValue.fromPositions(byteArray, 54, 6);
    serialNum = StringValue.fromPositions(byteArray, 60, 10);
    usingNetProtocol =
        EnumValue.fromByteArray(ipAcquisitionProtocolEnum, b.next(2));
    ipAddress = AddressValue.fromPositions(byteArray, 72, 4);
    subnetMask = AddressValue.fromPositions(byteArray, 76, 4);
    defaultGateway = AddressValue.fromPositions(byteArray, 80, 4);
    systemName = StringValue.fromPositions(byteArray, 84, 25);
    notUsed2 = NotUsedValue.fromPositions(byteArray, 109, 103);
    getCommunityName = HexValue.fromPositions(byteArray, 212, 32);
    setCommunityName = HexValue.fromPositions(byteArray, 244, 32);
    notUsed3 = NotUsedValue.fromPositions(byteArray, 276, 82);
    portStatus = EnumValue.fromByteArray(printerPortStatusEnum, b.next(1));
    portName = StringValue.fromPositions(byteArray, 359, 16);
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
