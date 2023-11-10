// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'discovery_advanced_v1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DiscoveryAdvancedV1ToJson(
        DiscoveryAdvancedV1 instance) =>
    <String, dynamic>{
      'byteArray': const Uint8ListConverter().toJson(instance.byteArray),
      'notUsed1': instance.notUsed1.toJson(),
      'discoveryVersion': instance.discoveryVersion.toJson(),
      'map': instance.discoveryDataMap,
      'advancedPacketFormat': instance.advancedPacketFormat.toJson(),
      'notUsed2': instance.notUsed2.toJson(),
      'companyAbbreviation': instance.companyAbbreviation.toJson(),
      'systemName': instance.systemName.toJson(),
      'productName': instance.productName.toJson(),
      'fwVersion': instance.fwVersion.toJson(),
      'location': instance.location.toJson(),
      'errors': instance.errors.toJson(),
      'warnings': instance.warnings.toJson(),
      'availableInterfacesBitfield':
          instance.availableInterfacesBitfield.toJson(),
      'deviceUniqueId': instance.deviceUniqueId.toJson(),
      'dnsDomain': instance.dnsDomain.toJson(),
      'activeInterface': instance.activeInterface.toJson(),
      'macAddress': instance.macAddress.toJson(),
      'ipAcquisitionProto': instance.ipAcquisitionProto.toJson(),
      'ipAddress': instance.ipAddress.toJson(),
      'subnetMask': instance.subnetMask.toJson(),
      'gatewayMask': instance.gatewayMask.toJson(),
      'port': instance.port.toJson(),
      'availableProtocols': instance.availableProtocols.toJson(),
      'primaryLanguage': instance.primaryLanguage.toJson(),
      'availableLanguagesBitfield':
          instance.availableLanguagesBitfield.toJson(),
      'availableSecondaryLanguagesBitfield':
          instance.availableSecondaryLanguagesBitfield.toJson(),
      'dotsPerMm': instance.dotsPerMm.toJson(),
      'dotsPerDotRow': instance.dotsPerDotRow.toJson(),
      'labelLength': instance.labelLength.toJson(),
      'labelWidth': instance.labelWidth.toJson(),
      'darkness': instance.darkness.toJson(),
      'mediaType': instance.mediaType.toJson(),
      'printMethod': instance.printMethod.toJson(),
      'printMode': instance.printMode.toJson(),
      'odometerTotal': instance.odometerTotal.toJson(),
      'odometerMarkerOne': instance.odometerMarkerOne.toJson(),
      'odometerMarkerTwo': instance.odometerMarkerTwo.toJson(),
      'numOfLabelsInBatch': instance.numOfLabelsInBatch.toJson(),
      'labelsQueued': instance.labelsQueued.toJson(),
      'zbiEnabled': instance.zbiEnabled.toJson(),
      'zbiState': instance.zbiState.toJson(),
      'zbiMajorVersion': instance.zbiMajorVersion.toJson(),
      'zbiMinorVersion': instance.zbiMinorVersion.toJson(),
      'printHeadWidth': instance.printHeadWidth.toJson(),
    };
