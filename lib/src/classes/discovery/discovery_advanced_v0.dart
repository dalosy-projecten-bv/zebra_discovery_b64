import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/split_by_length.dart';

class DiscoveryAdvancedV0 implements Discovery {
  DiscoveryAdvancedV0({
    required this.notUsed1,
    required this.discoveryVer,
    required this.advancedDiscoveryVer,
    required this.companyAbbreviation,
    required this.systemName,
    required this.productName,
    required this.firmwareVer,
    required this.location,
    required this.errors,
    required this.errorsSegment1,
    required this.errorsSegment2,
    required this.warnings,
    required this.warningsSegment1,
    required this.warningsSegment2,
    required this.activeNetworkInterface,
    required this.serialNumber,
    required this.dnsDomain,
    required this.activeInterface,
    required this.macAddress,
    required this.ipAcquisitionProto,
    required this.ipAddress,
    required this.subnetMask,
    required this.gatewayMask,
    required this.port,
    required this.availableProtocols,
    required this.primaryLanguage,
    required this.availableLanguagesBitfield,
    required this.availableSecondaryLanguagesBitfield,
    required this.dotsPerMm,
    required this.dotsPerDotRowO,
    required this.labelLength,
    required this.labelWidth,
    required this.darkness,
    required this.mediaType,
    required this.printMethod,
    required this.printMode,
    required this.odometerTotal,
    required this.odometerMarkerOne,
    required this.odometerMarkerTwo,
    required this.numOfLabelsInBatch,
    required this.labelsQueued,
    required this.zbiEnabled,
    required this.zbiState,
    required this.zbiMajorVersion,
    required this.zbiMinorVersion,
    // required this.printHeadWidth,
    // required this.jsonPort,
    // required this.linkOsMajorVer,
    // required this.linkOsMinorVer,
    // required this.avsIniVersion,
    // required this.processorId,
    // required this.tlsRawPort,
    // required this.tlsJsonPort,
    // required this.wired8021XSecuritySetting,
  });

  factory DiscoveryAdvancedV0.fromBytes(BytesSplitter bytesSplitter) {
    return DiscoveryAdvancedV0(
      notUsed1: bytesSplitter.getNextBytes(3),
      discoveryVer: bytesSplitter.getNextBytes(1),
      advancedDiscoveryVer: bytesSplitter.getNextBytes(3),
      companyAbbreviation: bytesSplitter.getNextBytes(3),
      systemName: bytesSplitter.getNextBytes(3),
      productName: bytesSplitter.getNextBytes(3),
      firmwareVer: bytesSplitter.getNextBytes(3),
      location: bytesSplitter.getNextBytes(3),
      errors: bytesSplitter.getNextBytes(3),
      errorsSegment1: bytesSplitter.getNextBytes(3),
      errorsSegment2: bytesSplitter.getNextBytes(3),
      warnings: bytesSplitter.getNextBytes(3),
      warningsSegment1: bytesSplitter.getNextBytes(3),
      warningsSegment2: bytesSplitter.getNextBytes(3),
      activeNetworkInterface: bytesSplitter.getNextBytes(3),
      serialNumber: bytesSplitter.getNextBytes(3),
      dnsDomain: bytesSplitter.getNextBytes(3),
      activeInterface: bytesSplitter.getNextBytes(3),
      macAddress: bytesSplitter.getNextBytes(3),
      ipAcquisitionProto: bytesSplitter.getNextBytes(3),
      ipAddress: bytesSplitter.getNextBytes(3),
      subnetMask: bytesSplitter.getNextBytes(3),
      gatewayMask: bytesSplitter.getNextBytes(3),
      port: bytesSplitter.getNextBytes(3),
      availableProtocols: bytesSplitter.getNextBytes(3),
      primaryLanguage: bytesSplitter.getNextBytes(3),
      availableLanguagesBitfield: bytesSplitter.getNextBytes(3),
      availableSecondaryLanguagesBitfield: bytesSplitter.getNextBytes(3),
      dotsPerMm: bytesSplitter.getNextBytes(3),
      dotsPerDotRowO: bytesSplitter.getNextBytes(3),
      labelLength: bytesSplitter.getNextBytes(3),
      labelWidth: bytesSplitter.getNextBytes(3),
      darkness: bytesSplitter.getNextBytes(3),
      mediaType: bytesSplitter.getNextBytes(3),
      printMethod: bytesSplitter.getNextBytes(3),
      printMode: bytesSplitter.getNextBytes(3),
      odometerTotal: bytesSplitter.getNextBytes(3),
      odometerMarkerOne: bytesSplitter.getNextBytes(3),
      odometerMarkerTwo: bytesSplitter.getNextBytes(3),
      numOfLabelsInBatch: bytesSplitter.getNextBytes(3),
      labelsQueued: bytesSplitter.getNextBytes(3),
      zbiEnabled: bytesSplitter.getNextBytes(3),
      zbiState: bytesSplitter.getNextBytes(3),
      zbiMajorVersion: bytesSplitter.getNextBytes(3),
      zbiMinorVersion: bytesSplitter.getNextBytes(3),
      // printHeadWidth: bytesSplitter.getNextBytes(3),
      // jsonPort: bytesSplitter.getNextBytes(3),
      // linkOsMajorVer: bytesSplitter.getNextBytes(3),
      // linkOsMinorVer: bytesSplitter.getNextBytes(3),
      // avsIniVersion: bytesSplitter.getNextBytes(3),
      // processorId: bytesSplitter.getNextBytes(3),
      // tlsRawPort: bytesSplitter.getNextBytes(3),
      // tlsJsonPort: bytesSplitter.getNextBytes(3),
      // wired8021XSecuritySetting: bytesSplitter.getNextBytes(3),
    );
  }

  final Uint8List notUsed1;
  final Uint8List discoveryVer;
  final Uint8List advancedDiscoveryVer;
  final Uint8List companyAbbreviation;
  final Uint8List systemName;
  final Uint8List productName;
  final Uint8List firmwareVer;
  final Uint8List location;
  final Uint8List errors;
  final Uint8List errorsSegment1;
  final Uint8List errorsSegment2;
  final Uint8List warnings;
  final Uint8List warningsSegment1;
  final Uint8List warningsSegment2;
  final Uint8List activeNetworkInterface;
  final Uint8List serialNumber;
  final Uint8List dnsDomain;
  final Uint8List activeInterface;
  final Uint8List macAddress;
  final Uint8List ipAcquisitionProto;
  final Uint8List ipAddress;
  final Uint8List subnetMask;
  final Uint8List gatewayMask;
  final Uint8List port;
  final Uint8List availableProtocols;
  final Uint8List primaryLanguage;
  final Uint8List availableLanguagesBitfield;
  final Uint8List availableSecondaryLanguagesBitfield;
  final Uint8List dotsPerMm;
  final Uint8List dotsPerDotRowO;
  final Uint8List labelLength;
  final Uint8List labelWidth;
  final Uint8List darkness;
  final Uint8List mediaType;
  final Uint8List printMethod;
  final Uint8List printMode;
  final Uint8List odometerTotal;
  final Uint8List odometerMarkerOne;
  final Uint8List odometerMarkerTwo;
  final Uint8List numOfLabelsInBatch;
  final Uint8List labelsQueued;
  final Uint8List zbiEnabled;
  final Uint8List zbiState;
  final Uint8List zbiMajorVersion;
  final Uint8List zbiMinorVersion;
// final Uint8List printHeadWidth;
// final Uint8List jsonPort;
// final Uint8List linkOsMajorVer;
// final Uint8List linkOsMinorVer;
// final Uint8List avsIniVersion;
// final Uint8List processorId;
// final Uint8List tlsRawPort;
// final Uint8List tlsJsonPort;
// final Uint8List wired8021XSecuritySetting;

// final Value discoveryVersionOffset = 3;
// final Value advancedPacketFormatOffseT = 4;
// final Value companyAbberviationOffset = 8;
// final Value companyAbberviationSize = 5;
// final Value systemNameOffset = 13;
// final Value systemNameSize = 63;
// final Value productNameOffset = 76;
// final Value productNameSize = 32;
// final Value fwVersionOffset = 108;
// final Value fwVersionSize = 16;
// final Value locationOffset = 124;
// final Value locationSize = 36;
// final Value errorsSegment0Offset = 160;
// final Value errorsSegment0Size = 4;
// final Value errorsSegment1Offset = 164;
// final Value errorsSegment1Size = 4;
// final Value errorsSegment2Offset = 168;
// final Value errorsSegment2Size = 4;
// final Value warningsSegment0Offset = 172;
// final Value warningsSegment0Size = 4;
// final Value warningsSegment1Offset = 176;
// final Value warningsSegment1Size = 4;
// final Value warningsSegment2Offset = 180;
// final Value warningsSegment2Size = 4;
// final Value availableInterfacesBitfielD_OFFSET = 184;
// final Value availableInterfacesBitfielD_SIZE = 4;
// final Value deviceUniqueIdOffset = 188;
// final Value deviceUniqueIdSize = 32;
// final Value dnsDomainOffset = 220;
// final Value dnsDomainSize = 100;
// final Value activeInterfaceOffset = 320;
// final Value activeInterfaceSize = 4;
// final Value macAddressOffset = 324;
// final Value macAddressSize = 6;
// final Value ipAcquisitionProtoOffset = 330;
// final Value ipAcquisitionProtoSize = 2;
// final Value ipAddressOffset = 332;
// final Value ipAddressSize = 4;
// final Value subnetMaskOffset = 336;
// final Value subnetMaskSize = 4;
// final Value gatewayMaskOffset = 340;
// final Value gatewayMaskSize = 4;
// final Value portOffset = 344;
// final Value portSize = 2;
// final Value availableProtocolsOffset = 346;
// final Value availableProtocolsSize = 2;
// final Value primaryLanguageOffset = 348;
// final Value primaryLanguageSize = 4;
// final Value availableLanguagesBitfield_OFFSET = 352;
// final Value availableLanguagesBitfield_SIZE = 4;
// final Value availableSecondaryLanguageS_BITFIELD_OFFSET = 356;
// final Value availableSecondaryLanguageS_BITFIELD_SIZE = 4;
// final Value dotsPerMmOffset = 360;
// final Value dotsPerMmSize = 2;
// final Value dotsPerDotRowOffset = 362;
// final Value dotsPerDotRowSize = 2;
// final Value labelLengthOffset = 364;
// final Value labelLengthSize = 2;
// final Value labelWidthOffset = 366;
// final Value labelWidthSize = 2;
// final Value darknessOffset = 368;
// final Value darknessSize = 2;
// final Value mediaTypeOffset = 370;
// final Value mediaTypeSize = 2;
// final Value printMethodOffset = 372;
// final Value printMethodSize = 2;
// final Value printModeOffset = 374;
// final Value printModeSize = 2;
// final Value odometerTotalOffset = 376;
// final Value odometerTotalSize = 4;
// final Value odometerMarkerOneOffset = 380;
// final Value odometerMarkerOneSize = 4;
// final Value odometerMarkerTwoOffset = 384;
// final Value odometerMarkerTwoSize = 4;
// final Value numOfLabelsInBatchOffseT = 388;
// final Value numOfLabelsInBatchSize = 2;
// final Value labelsQueuedOffset = 390;
// final Value labelsQueuedSize = 2;
// final Value zbiEnabledOffset = 392;
// final Value zbiEnabledSize = 1;
// final Value zbiStateOffset = 393;
// final Value zbiStateSize = 1;
// final Value zbiMajorVersionOffset = 394;
// final Value zbiMinorVersionOffset = 395;
// final Value printHeadWidthOffset = 396;
// final Value printHeadWidthSize = 2;
// final Value jsonPortOffset = 398;
// final Value jsonPortSize = 2;
// final Value linkOsMajorVerOffset = 400;
// final Value linkOsMinorVerOffset = 401;
// final Value avsIniVersionOffset = 402;
// final Value avsIniVersionSize = 6;
// final Value processorIdOffset = 408;
// final Value processorIdSize = 8;
// final Value tlsRawPortOffset = 416;
// final Value tlsRawPortSize = 2;
// final Value tlsJsonPortOffset = 418;
// final Value tlsJsonPortSize = 2;
// final Value wired8021XSecuritySetting_OFFSET = 420;
// final Value wired8021XSecuritySetting_SIZE = 1;
// final Value minPacketSize = 395;
}
