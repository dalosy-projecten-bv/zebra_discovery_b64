import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_media_type_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/zbi_state_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/bool_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV0 extends Discovery {
  DiscoveryAdvancedV0(BytesSplitter b, Uint8List byteArray)
      : super(b, byteArray) {
    advancedPacketFormat = ByteValue.fromPositions(byteArray, 4, 1);
    notUsed2 = NotUsedValue.fromPositions(byteArray, 5, 3);
    companyAbbreviation = StringValue.fromByteArray(b.next(5));
    systemName = StringValue.fromByteArray(b.next(63));
    productName = StringValue.fromByteArray(b.next(32));
    fwVersion = StringValue.fromByteArray(b.next(16));
    location = StringValue.fromByteArray(b.next(36));
    errorsSegment0 = ListSegmentedEnumValue.fromByteArray(
      0,
      printerErrorEnum,
      b.next(4),
    );
    errorsSegment1 = ListSegmentedEnumValue.fromByteArray(
      1,
      printerErrorEnum,
      b.next(4),
    );
    errorsSegment2 = ListSegmentedEnumValue.fromByteArray(
      2,
      printerErrorEnum,
      b.next(4),
    );
    warningsSegment0 = ListSegmentedEnumValue.fromByteArray(
      0,
      printerWarningEnum,
      b.next(4),
    );
    warningsSegment1 = ListSegmentedEnumValue.fromByteArray(
      1,
      printerWarningEnum,
      b.next(4),
    );
    warningsSegment2 = ListSegmentedEnumValue.fromByteArray(
      2,
      printerWarningEnum,
      b.next(4),
    );
    availableInterfacesBitfield =
        ListEnumValue.fromByteArray(printerInterfaceEnum, b.next(4));
    deviceUniqueId = StringValue.fromByteArray(b.next(32));
    dnsDomain = StringValue.fromByteArray(b.next(100));
    activeInterface = EnumValue.fromByteArray(printerInterfaceEnum, b.next(4));
    macAddress = HexValue.fromPositions(byteArray, 324, 6);
    ipAcquisitionProto =
        EnumValue.fromByteArray(ipAcquisitionProtocolEnum, b.next(2));
    ipAddress = AddressValue.fromPositions(byteArray, 332, 4);
    subnetMask = AddressValue.fromPositions(byteArray, 336, 4);
    gatewayMask = AddressValue.fromPositions(byteArray, 340, 4);
    port = IntValue.fromPositions(byteArray, 344, 2);
    availableProtocols =
        ListEnumValue.fromByteArray(networkProtocolEnum, b.next(2));
    primaryLanguage =
        EnumValue.fromByteArray(discoveredPrinterLanguages, b.next(4));
    availableLanguagesBitfield =
        EnumValue.fromByteArray(discoveredPrinterLanguages, b.next(4));
    availableSecondaryLanguagesBitfield =
        ListEnumValue.fromByteArray(secondaryPrinterLanguage, b.next(4));
    dotsPerMm = IntValue.fromPositions(byteArray, 360, 2);
    dotsPerDotRow = IntValue.fromPositions(byteArray, 362, 2);
    labelLength = IntValue.fromPositions(byteArray, 364, 2);
    labelWidth = IntValue.fromPositions(byteArray, 366, 2);
    darkness = IntValue.fromPositions(byteArray, 368, 2);
    mediaType = EnumValue.fromByteArray(printerMediaTypeEnum, b.next(2));
    printMethod = EnumValue.fromByteArray(printMethods, b.next(2));
    printMode = EnumValue.fromByteArray(printModeEnum, b.next(2));
    odometerTotal = IntValue.fromPositions(byteArray, 376, 4);
    odometerMarkerOne = IntValue.fromPositions(byteArray, 380, 4);
    odometerMarkerTwo = IntValue.fromPositions(byteArray, 384, 4);
    numOfLabelsInBatch = IntValue.fromPositions(byteArray, 388, 2);
    labelsQueued = IntValue.fromPositions(byteArray, 390, 2);
    zbiEnabled = BoolValue.fromPositions(byteArray, 392, 1);
    zbiState = EnumValue.fromByteArray(zbiStateEnum, b.next(1));
    zbiMajorVersion = IntValue.fromPositions(byteArray, 394, 1);
    zbiMinorVersion = IntValue.fromPositions(byteArray, 395, 1);
    initMap();
  }

  late final ByteValue advancedPacketFormat;
  late final NotUsedValue notUsed2;
  late final StringValue companyAbbreviation;
  late final StringValue systemName;
  late final StringValue productName;
  late final StringValue fwVersion;
  late final StringValue location;
  late final ListSegmentedEnumValue<PrinterError> errorsSegment0;
  late final ListSegmentedEnumValue<PrinterError> errorsSegment1;
  late final ListSegmentedEnumValue<PrinterError> errorsSegment2;
  late final ListSegmentedEnumValue<PrinterWarning> warningsSegment0;
  late final ListSegmentedEnumValue<PrinterWarning> warningsSegment1;
  late final ListSegmentedEnumValue<PrinterWarning> warningsSegment2;
  late final ListEnumValue<PrinterInterface> availableInterfacesBitfield;
  late final StringValue deviceUniqueId;
  late final StringValue dnsDomain;
  late final EnumValue<PrinterInterface> activeInterface;
  late final HexValue macAddress;
  late final EnumValue<IpAcquisitionProtocol> ipAcquisitionProto;
  late final AddressValue ipAddress;
  late final AddressValue subnetMask;
  late final AddressValue gatewayMask;
  late final IntValue port;
  late final ListEnumValue<NetworkProtocol> availableProtocols;
  late final EnumValue<DiscoveredPrinterLanguage> primaryLanguage;
  late final EnumValue<DiscoveredPrinterLanguage> availableLanguagesBitfield;
  late final ListEnumValue<SecondaryPrinterLanguage>
      availableSecondaryLanguagesBitfield;
  late final IntValue dotsPerMm;
  late final IntValue dotsPerDotRow;
  late final IntValue labelLength;
  late final IntValue labelWidth;
  late final IntValue darkness;
  late final EnumValue<PrinterMediaType> mediaType;
  late final EnumValue<PrintMethod> printMethod;
  late final EnumValue<PrintMode> printMode;
  late final IntValue odometerTotal;
  late final IntValue odometerMarkerOne;
  late final IntValue odometerMarkerTwo;
  late final IntValue numOfLabelsInBatch;
  late final IntValue labelsQueued;
  late final BoolValue zbiEnabled;
  late final EnumValue<ZbiState> zbiState;
  late final IntValue zbiMajorVersion;
  late final IntValue zbiMinorVersion;

  @override
  void initMap() {
    map.addEntries(
      {
        MapEntry('DISCOVERY_VER', discoveryVersion.value.toString()),
        MapEntry(
            'ADVANCED_DISCOVERY_VER', advancedPacketFormat.value.toString()),
        MapEntry('COMPANY_ABBREVIATION', companyAbbreviation.value),
        MapEntry('SYSTEM_NAME', systemName.value),
        MapEntry('PRODUCT_NAME', productName.value),
        MapEntry('FIRMWARE_VER', fwVersion.value),
        MapEntry('LOCATION', location.value),
        MapEntry(
          'ERRORS',
          [
            ...errorsSegment0.value,
            ...errorsSegment1.value,
            ...errorsSegment2.value,
          ].map((e) => e.enumAsString).join(','),
        ),
        MapEntry(
          'WARNINGS',
          [
            ...warningsSegment0.value,
            ...warningsSegment1.value,
            ...warningsSegment2.value,
          ].map((e) => e.enumAsString).join(','),
        ),
        MapEntry(
          'ACTIVE_NETWORK_INTERFACE',
          activeInterface.value.enumAsString,
        ),
        MapEntry('SERIAL_NUMBER', deviceUniqueId.value),
        MapEntry('DEVICE_UNIQUE_ID', deviceUniqueId.value),
        MapEntry('DNS_DOMAIN', dnsDomain.value),
        MapEntry('HARDWARE_ADDRESS', macAddress.value),
        MapEntry(
          'USING_NET_PROTOCOL',
          ipAcquisitionProto.value.enumeration != IpAcquisitionProtocol.static
              ? "true"
              : "false",
        ),
        MapEntry('DNS_NAME', systemName.value),
        MapEntry(
          'IP_ACQUISITION_PROTOCOL',
          ipAcquisitionProto.value.enumAsString,
        ),
        MapEntry('ADDRESS', ipAddress.value),
        MapEntry('SUBNET_MASK', subnetMask.value),
        MapEntry('GATEWAY', gatewayMask.value),
        MapEntry('PORT_NUMBER', port.value.toString()),
        MapEntry(
          'AVAILABLE_NETWORK_PROTOCOLS',
          availableProtocols.value
              .map((e) => e.enumAsString)
              .toList()
              .join(','),
        ),
        MapEntry(
          'AVAILABLE_INTERFACES',
          availableInterfacesBitfield.value
              .map((e) => e.enumAsString)
              .toList()
              .join(','),
        ),
        MapEntry('PRIMARY_LANGUAGE', primaryLanguage.value.enumAsString),
        MapEntry(
          'AVAILABLE_LANGUAGES',
          availableSecondaryLanguagesBitfield.value
              .map((e) => e.enumAsString)
              .toList()
              .join(','),
        ),
      },
    );
    // TODO: implement initMap
  }
}
