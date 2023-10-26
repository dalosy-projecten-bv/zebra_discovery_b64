import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/src/classes/split_by_length.dart';

class DiscoveryAdvancedV1 extends DiscoveryAdvancedV0 {
  DiscoveryAdvancedV1({
    required DiscoveryAdvancedV0 discoveryAdvancedV0,
    required this.printHeadWidth,
  }) : super.fromBytes()
  );

  // DiscoveryAdvancedV1({
  //   required DiscoveryAdvancedV0 discoveryAdvancedV0,
  //   required this.printHeadWidth,
  // }) : super(
  //         notUsed1: discoveryAdvancedV0.notUsed1,
  //         discoveryVer: discoveryAdvancedV0.discoveryVer,
  //         advancedDiscoveryVer: discoveryAdvancedV0.advancedDiscoveryVer,
  //         companyAbbreviation: discoveryAdvancedV0.companyAbbreviation,
  //         systemName: discoveryAdvancedV0.systemName,
  //         productName: discoveryAdvancedV0.productName,
  //         firmwareVer: discoveryAdvancedV0.firmwareVer,
  //         location: discoveryAdvancedV0.location,
  //         errors: discoveryAdvancedV0.errors,
  //         errorsSegment1: discoveryAdvancedV0.errorsSegment1,
  //         errorsSegment2: discoveryAdvancedV0.errorsSegment2,
  //         warnings: discoveryAdvancedV0.warnings,
  //         warningsSegment1: discoveryAdvancedV0.warningsSegment1,
  //         warningsSegment2: discoveryAdvancedV0.warningsSegment2,
  //         activeNetworkInterface: discoveryAdvancedV0.activeInterface,
  //         serialNumber: discoveryAdvancedV0.serialNumber,
  //         dnsDomain: discoveryAdvancedV0.dnsDomain,
  //         activeInterface: discoveryAdvancedV0.activeInterface,
  //         macAddress: discoveryAdvancedV0.macAddress,
  //         ipAcquisitionProto: discoveryAdvancedV0.ipAcquisitionProto,
  //         ipAddress: discoveryAdvancedV0.ipAddress,
  //         subnetMask: discoveryAdvancedV0.subnetMask,
  //         gatewayMask: discoveryAdvancedV0.gatewayMask,
  //         port: discoveryAdvancedV0.port,
  //         availableProtocols: discoveryAdvancedV0.availableProtocols,
  //         primaryLanguage: discoveryAdvancedV0.primaryLanguage,
  //         availableLanguagesBitfield:
  //             discoveryAdvancedV0.availableSecondaryLanguagesBitfield,
  //         availableSecondaryLanguagesBitfield:
  //             discoveryAdvancedV0.availableSecondaryLanguagesBitfield,
  //         dotsPerMm: discoveryAdvancedV0.dotsPerMm,
  //         dotsPerDotRowO: discoveryAdvancedV0.dotsPerDotRowO,
  //         labelLength: discoveryAdvancedV0.labelLength,
  //         labelWidth: discoveryAdvancedV0.labelWidth,
  //         darkness: discoveryAdvancedV0.darkness,
  //         mediaType: discoveryAdvancedV0.mediaType,
  //         printMethod: discoveryAdvancedV0.printMethod,
  //         printMode: discoveryAdvancedV0.printMode,
  //         odometerTotal: discoveryAdvancedV0.odometerTotal,
  //         odometerMarkerOne: discoveryAdvancedV0.odometerMarkerOne,
  //         odometerMarkerTwo: discoveryAdvancedV0.odometerMarkerTwo,
  //         numOfLabelsInBatch: discoveryAdvancedV0.numOfLabelsInBatch,
  //         labelsQueued: discoveryAdvancedV0.labelsQueued,
  //         zbiEnabled: discoveryAdvancedV0.zbiEnabled,
  //         zbiState: discoveryAdvancedV0.zbiState,
  //         zbiMajorVersion: discoveryAdvancedV0.zbiMajorVersion,
  //         zbiMinorVersion: discoveryAdvancedV0.zbiMinorVersion,
  //       );

  factory DiscoveryAdvancedV1.fromBytes(BytesSplitter bytesSplitter) {
    final discoveryAdvancedV0 = DiscoveryAdvancedV0.fromBytes(bytesSplitter);
    return DiscoveryAdvancedV1(
      discoveryAdvancedV0: discoveryAdvancedV0,
      printHeadWidth: bytesSplitter.getNextBytes(1),
    );
  }

  final Uint8List printHeadWidth;
}
