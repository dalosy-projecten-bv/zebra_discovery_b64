import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryLegacy extends Discovery {
  DiscoveryLegacy(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    productNumber = bytesSplitter.getNextBytes(8);
    productName = bytesSplitter.getNextBytes(20);
    dateCode = bytesSplitter.getNextBytes(7);
    fwVersion = bytesSplitter.getNextBytes(10);
    companyAbbreviation = bytesSplitter.getNextBytes(5);
    hwAddress = bytesSplitter.getNextBytes(6);
    serialNum = bytesSplitter.getNextBytes(10);
    usingNetProtocol = bytesSplitter.getNextBytes(2);
    ipAddress = bytesSplitter.getNextBytes(4);
    subnetMask = bytesSplitter.getNextBytes(4);
    defaultGateway = bytesSplitter.getNextBytes(4);
    systemName = bytesSplitter.getNextBytes(25);
    notUsed2 = bytesSplitter.getNextBytes(103);
    getCommunityName = bytesSplitter.getNextBytes(32);
    setCommunityName = bytesSplitter.getNextBytes(32);
    notUsed3 = bytesSplitter.getNextBytes(82);
    portStatus = bytesSplitter.getNextBytes(1);
    portName = bytesSplitter.getNextBytes(16);
  }

  late final Uint8List productNumber;
  late final Uint8List productName;
  late final Uint8List dateCode;
  late final Uint8List fwVersion;
  late final Uint8List companyAbbreviation;
  late final Uint8List hwAddress;
  late final Uint8List serialNum;
  late final Uint8List usingNetProtocol;
  late final Uint8List ipAddress;
  late final Uint8List subnetMask;
  late final Uint8List defaultGateway;
  late final Uint8List systemName;
  late final Uint8List notUsed2;
  late final Uint8List getCommunityName;
  late final Uint8List setCommunityName;
  late final Uint8List notUsed3;
  late final Uint8List portStatus;
  late final Uint8List portName;

  @override
  void initMap() {
    // TODO: implement initMap
  }
}
