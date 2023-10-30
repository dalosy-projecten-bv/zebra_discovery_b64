import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_list_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV0 extends Discovery {
  DiscoveryAdvancedV0(BytesSplitter b) : super(b) {
    advancedPacketFormat = StringValue.byteToString(b.next(1));
    notUsed2 = StringValue.notDecoded(b.next(3));
    companyAbbreviation = StringValue.byteArrayToString(b.next(5));
    systemName = StringValue.byteArrayToString(b.next(63));
    productName = StringValue.byteArrayToString(b.next(32));
    fwVersion = StringValue.byteArrayToString(b.next(16));
    location = StringValue.byteArrayToString(b.next(36));
    errorsSegment0 = EnumListValue.enumWithSegments<PrinterError>(
      segment: 0,
      byteArray: b.next(4),
    );
    errorsSegment1 = EnumListValue.enumWithSegments<PrinterError>(
      segment: 1,
      byteArray: b.next(4),
    );
    errorsSegment2 = EnumListValue.enumWithSegments<PrinterError>(
      segment: 2,
      byteArray: b.next(4),
    );
    warningsSegment0 = EnumListValue.enumWithSegments<PrinterWarning>(
      segment: 0,
      byteArray: b.next(4),
    );
    warningsSegment1 = EnumListValue.enumWithSegments<PrinterWarning>(
      segment: 1,
      byteArray: b.next(4),
    );
    warningsSegment2 = EnumListValue.enumWithSegments<PrinterWarning>(
      segment: 2,
      byteArray: b.next(4),
    );
    availableInterfacesBitfield =
        EnumListValue.enumeration<PrinterInterface>(b.next(4));
    deviceUniqueId = StringValue.byteArrayToString(b.next(32));
    dnsDomain = StringValue.byteArrayToString(b.next(100));
    activeInterface = EnumValue.enumeration<PrinterInterface>(b.next(4));
    macAddress = StringValue.byteArrayToHexString(b.next(6));
    ipAcquisitionProto = EnumValue.enumeration<IpAcquisitionProtocol>(
      b.next(2),
    );
    ipAddress = StringValue.byteArrayToAddressString(b.next(4));
    subnetMask = StringValue.byteArrayToAddressString(b.next(4));
    gatewayMask = StringValue.byteArrayToAddressString(b.next(4));
    port = IntValue.byteArrayToInt(b.next(2));
    availableProtocols = EnumListValue.enumeration<NetworkProtocol>(b.next(2));
    primaryLanguage =
        EnumValue.enumeration<DiscoveredPrinterLanguage>(b.next(4));
    availableLanguagesBitfield =
        EnumListValue.enumeration<DiscoveredPrinterLanguage>(b.next(4));
    availableSecondaryLanguagesBitfield =
        EnumListValue.enumeration<SecondaryPrinterLanguage>(b.next(4));
    dotsPerMm = IntValue.byteArrayToInt(b.next(2));
    dotsPerDotRow = IntValue.byteArrayToInt(b.next(2));
    labelLength = IntValue.byteArrayToInt(b.next(2));
    labelWidth = IntValue.byteArrayToInt(b.next(2));
    darkness = IntValue.byteArrayToInt(b.next(2));
    mediaType = b.next(2);
    printMethod = b.next(2);
    printMode = b.next(2);
    odometerTotal = b.next(4);
    odometerMarkerOne = b.next(4);
    odometerMarkerTwo = b.next(4);
    numOfLabelsInBatch = b.next(2);
    labelsQueued = b.next(2);
    zbiEnabled = b.next(1);
    zbiState = b.next(1);
    zbiMajorVersion = b.next(1);
    zbiMinorVersion = b.next(1);
    initMap();
  }

  late final StringValue advancedPacketFormat;
  late final StringValue notUsed2;
  late final StringValue companyAbbreviation;
  late final StringValue systemName;
  late final StringValue productName;
  late final StringValue fwVersion;
  late final StringValue location;
  late final EnumListValue<PrinterError> errorsSegment0;
  late final EnumListValue<PrinterError> errorsSegment1;
  late final EnumListValue<PrinterError> errorsSegment2;
  late final EnumListValue<PrinterWarning> warningsSegment0;
  late final EnumListValue<PrinterWarning> warningsSegment1;
  late final EnumListValue<PrinterWarning> warningsSegment2;
  late final EnumListValue<PrinterInterface> availableInterfacesBitfield;
  late final StringValue deviceUniqueId;
  late final StringValue dnsDomain;
  late final EnumValue<PrinterInterface> activeInterface;
  late final StringValue macAddress;
  late final EnumValue<IpAcquisitionProtocol> ipAcquisitionProto;
  late final StringValue ipAddress;
  late final StringValue subnetMask;
  late final StringValue gatewayMask;
  late final IntValue port;
  late final EnumListValue<NetworkProtocol> availableProtocols;
  late final EnumValue<DiscoveredPrinterLanguage> primaryLanguage;
  late final EnumListValue<DiscoveredPrinterLanguage>
      availableLanguagesBitfield;
  late final EnumListValue<SecondaryPrinterLanguage>
      availableSecondaryLanguagesBitfield;
  late final IntValue dotsPerMm;
  late final IntValue dotsPerDotRow;
  late final IntValue labelLength;
  late final IntValue labelWidth;
  late final IntValue darkness;
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
        MapEntry('DISCOVERY_VER', discoveryVersion.value),
        MapEntry('ADVANCED_DISCOVERY_VER', advancedPacketFormat.value),
        MapEntry('COMPANY_ABBREVIATION', companyAbbreviation.value),
        MapEntry('SYSTEM_NAME', systemName.value),
        MapEntry('PRODUCT_NAME', productName.value),
        MapEntry('FIRMWARE_VER', fwVersion.value),
        MapEntry('LOCATION', location.value),
        MapEntry(
          "ERRORS",
          [
            ...errorsSegment0.value,
            ...errorsSegment1.value,
            ...errorsSegment2.value,
          ].map((e) => e.enumAsString).join(','),
        ),
        MapEntry(
          "WARNINGS",
          [
            ...warningsSegment0.value,
            ...warningsSegment1.value,
            ...warningsSegment2.value,
          ].map((e) => e.enumAsString).join(','),
        ),
        MapEntry(
            "ACTIVE_NETWORK_INTERFACE", activeInterface.value.enumAsString),
        MapEntry("SERIAL_NUMBER", deviceUniqueId.value),
        MapEntry("DEVICE_UNIQUE_ID", deviceUniqueId.value),
        MapEntry("DNS_DOMAIN", dnsDomain.value),
        MapEntry("HARDWARE_ADDRESS", macAddress.value),
        //MapEntry("DNS_NAME",)
        MapEntry(
          "IP_ACQUISITION_PROTOCOL",
          ipAcquisitionProto.value.enumAsString,
        ),
        MapEntry("ADDRESS", ipAddress.value),
        MapEntry("SUBNET_MASK", subnetMask.value),
        MapEntry("GATEWAY", gatewayMask.value),
        MapEntry("PORT_NUMBER", port.value.toString()),
        MapEntry(
            "AVAILABLE_NETWORK_PROTOCOLS",
            availableProtocols.value
                .map((e) => e.enumAsString)
                .toList()
                .join(',')),
        // MapEntry(
        //   "AVAILABLE_INTERFACES",
        //   ava,
        // ),
      },
    );
    // TODO: implement initMap
  }
}
