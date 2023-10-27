import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV0 extends Discovery {
  DiscoveryAdvancedV0(BytesSplitter bytesSplitter) : super(bytesSplitter) {
    advancedDiscoveryVer = bytesSplitter.getNextBytes(1);
    notUsed2 = bytesSplitter.getNextBytes(3);
    companyAbbreviation = bytesSplitter.getNextBytes(5);
    systemName = bytesSplitter.getNextBytes(63);
    productName = bytesSplitter.getNextBytes(32);
    firmwareVer = bytesSplitter.getNextBytes(16);
    location = bytesSplitter.getNextBytes(36);
    errorsSegment0 = bytesSplitter.getNextBytes(4);
    errorsSegment1 = bytesSplitter.getNextBytes(4);
    errorsSegment2 = bytesSplitter.getNextBytes(4);
    warningsSegment0 = bytesSplitter.getNextBytes(4);
    warningsSegment1 = bytesSplitter.getNextBytes(4);
    warningsSegment2 = bytesSplitter.getNextBytes(4);
    activeNetworkInterface = bytesSplitter.getNextBytes(4);
    serialNumber = bytesSplitter.getNextBytes(3);
    dnsDomain = bytesSplitter.getNextBytes(3);
    activeInterface = bytesSplitter.getNextBytes(3);
    macAddress = bytesSplitter.getNextBytes(3);
    ipAcquisitionProto = bytesSplitter.getNextBytes(3);
    ipAddress = bytesSplitter.getNextBytes(3);
    subnetMask = bytesSplitter.getNextBytes(3);
    gatewayMask = bytesSplitter.getNextBytes(3);
    port = bytesSplitter.getNextBytes(3);
    availableProtocols = bytesSplitter.getNextBytes(3);
    primaryLanguage = bytesSplitter.getNextBytes(3);
    availableLanguagesBitfield = bytesSplitter.getNextBytes(3);
    availableSecondaryLanguagesBitfield = bytesSplitter.getNextBytes(3);
    dotsPerMm = bytesSplitter.getNextBytes(3);
    dotsPerDotRowO = bytesSplitter.getNextBytes(3);
    labelLength = bytesSplitter.getNextBytes(3);
    labelWidth = bytesSplitter.getNextBytes(3);
    darkness = bytesSplitter.getNextBytes(3);
    mediaType = bytesSplitter.getNextBytes(3);
    printMethod = bytesSplitter.getNextBytes(3);
    printMode = bytesSplitter.getNextBytes(3);
    odometerTotal = bytesSplitter.getNextBytes(3);
    odometerMarkerOne = bytesSplitter.getNextBytes(3);
    odometerMarkerTwo = bytesSplitter.getNextBytes(3);
    numOfLabelsInBatch = bytesSplitter.getNextBytes(3);
    labelsQueued = bytesSplitter.getNextBytes(3);
    zbiEnabled = bytesSplitter.getNextBytes(3);
    zbiState = bytesSplitter.getNextBytes(3);
    zbiMajorVersion = bytesSplitter.getNextBytes(3);
    zbiMinorVersion = bytesSplitter.getNextBytes(3);
    initMap();
  }

  late final Uint8List advancedDiscoveryVer;
  late final Uint8List notUsed2;
  late final Uint8List companyAbbreviation;
  late final Uint8List systemName;
  late final Uint8List productName;
  late final Uint8List firmwareVer;
  late final Uint8List location;
  late final Uint8List errorsSegment0;
  late final Uint8List errorsSegment1;
  late final Uint8List errorsSegment2;
  late final Uint8List warningsSegment0;
  late final Uint8List warningsSegment1;
  late final Uint8List warningsSegment2;
  late final Uint8List activeNetworkInterface;
  late final Uint8List serialNumber;
  late final Uint8List dnsDomain;
  late final Uint8List activeInterface;
  late final Uint8List macAddress;
  late final Uint8List ipAcquisitionProto;
  late final Uint8List ipAddress;
  late final Uint8List subnetMask;
  late final Uint8List gatewayMask;
  late final Uint8List port;
  late final Uint8List availableProtocols;
  late final Uint8List primaryLanguage;
  late final Uint8List availableLanguagesBitfield;
  late final Uint8List availableSecondaryLanguagesBitfield;
  late final Uint8List dotsPerMm;
  late final Uint8List dotsPerDotRowO;
  late final Uint8List labelLength;
  late final Uint8List labelWidth;
  late final Uint8List darkness;
  late final Uint8List mediaType;
  late final Uint8List printMethod;
  late final Uint8List printMode;
  late final Uint8List odometerTotal;
  late final Uint8List odometerMarkerOne;
  late final Uint8List odometerMarkerTwo;
  late final Uint8List numOfLabelsInBatch;
  late final Uint8List labelsQueued;
  late final Uint8List zbiEnabled;
  late final Uint8List zbiState;
  late final Uint8List zbiMajorVersion;
  late final Uint8List zbiMinorVersion;

  @override
  void initMap() {
    map.addEntries(
      {
        MapEntry('DISCOVERY_VER', convertByteToString(discoveryVersion)),
        MapEntry('ADVANCED_DISCOVERY_VER',
            convertByteToString(advancedDiscoveryVer)),
        MapEntry('COMPANY_ABBREVIATION',
            convertByteArrayToString(companyAbbreviation)),
        MapEntry('SYSTEM_NAME', convertByteArrayToString(systemName)),
        MapEntry('PRODUCT_NAME', convertByteArrayToString(productName)),
        MapEntry('FIRMWARE_VER', convertByteArrayToString(firmwareVer)),
        MapEntry('LOCATION', convertByteArrayToString(location)),
        MapEntry('LOCATION', convertByteArrayToString(location)),
        MapEntry(
          "ERRORS",
          getErrors(
            errorsSegment0: errorsSegment0,
            errorsSegment1: errorsSegment1,
            errorsSegment2: errorsSegment2,
          ),
        ),
        MapEntry(
          "WARNINGS",
          getWarnings(
            warningsSegment0: warningsSegment0,
            warningsSegment1: warningsSegment1,
            warningsSegment2: warningsSegment2,
          ),
        ),
        MapEntry(
          "ACTIVE_NETWORK_INTERFACE",
          getActiveNetworkInterface(activeNetworkInterface),
        ),
      },
    );
    // TODO: implement initMap
  }
}
