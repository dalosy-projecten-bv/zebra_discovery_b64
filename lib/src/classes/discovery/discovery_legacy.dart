import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryLegacy extends Discovery {
  DiscoveryLegacy(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    productNumber = bytesSplitter.next(8);
    productName = bytesSplitter.next(20);
    dateCode = bytesSplitter.next(7);
    fwVersion = bytesSplitter.next(10);
    companyAbbreviation = bytesSplitter.next(5);
    hwAddress = bytesSplitter.next(6);
    serialNum = bytesSplitter.next(10);
    usingNetProtocol = bytesSplitter.next(2);
    ipAddress = bytesSplitter.next(4);
    subnetMask = bytesSplitter.next(4);
    defaultGateway = bytesSplitter.next(4);
    systemName = bytesSplitter.next(25);
    notUsed2 = bytesSplitter.next(103);
    getCommunityName = bytesSplitter.next(32);
    setCommunityName = bytesSplitter.next(32);
    notUsed3 = bytesSplitter.next(82);
    portStatus = bytesSplitter.next(1);
    portName = bytesSplitter.next(16);
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
