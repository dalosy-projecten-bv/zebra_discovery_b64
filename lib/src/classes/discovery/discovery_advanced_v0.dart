import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_media_type.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/zbi_state.dart';
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
  DiscoveryAdvancedV0(super.byteArray) {
    advancedPacketFormat = ByteValue(byteArray.get(4, 1));
    notUsed2 = NotUsedValue(byteArray.get(5, 3));
    companyAbbreviation = StringValue(byteArray.get(8, 5));
    systemName = StringValue(byteArray.get(13, 63));
    productName = StringValue(byteArray.get(76, 32));
    fwVersion = StringValue(byteArray.get(108, 16));
    location = StringValue(byteArray.get(124, 36));
    errorsSegment0 =
        ListSegmentedEnumValue(0, byteArray.get(160, 4), printerErrorEnum);
    errorsSegment1 =
        ListSegmentedEnumValue(1, byteArray.get(164, 4), printerErrorEnum);
    errorsSegment2 =
        ListSegmentedEnumValue(2, byteArray.get(168, 4), printerErrorEnum);
    warningsSegment0 =
        ListSegmentedEnumValue(0, byteArray.get(172, 4), printerWarningEnum);
    warningsSegment1 =
        ListSegmentedEnumValue(1, byteArray.get(176, 4), printerWarningEnum);
    warningsSegment2 =
        ListSegmentedEnumValue(2, byteArray.get(180, 4), printerWarningEnum);
    availableInterfacesBitfield =
        ListEnumValue(byteArray.get(184, 4), printerInterfaceEnum);
    deviceUniqueId = StringValue(byteArray.get(188, 32));
    dnsDomain = StringValue(byteArray.get(220, 100));
    activeInterface = EnumValue(byteArray.get(320, 4), printerInterfaceEnum);
    macAddress = HexValue(byteArray.get(324, 6));
    ipAcquisitionProto =
        EnumValue(byteArray.get(330, 2), ipAcquisitionProtocolEnum);
    ipAddress = AddressValue(byteArray.get(332, 4));
    subnetMask = AddressValue(byteArray.get(336, 4));
    gatewayMask = AddressValue(byteArray.get(340, 4));
    port = IntValue(byteArray.get(344, 2));
    availableProtocols =
        ListEnumValue(byteArray.get(346, 2), networkProtocolEnum);
    primaryLanguage =
        EnumValue(byteArray.get(348, 4), discoveredPrinterLanguagesEnum);
    availableLanguagesBitfield =
        EnumValue(byteArray.get(352, 4), discoveredPrinterLanguagesEnum);
    availableSecondaryLanguagesBitfield =
        ListEnumValue(byteArray.get(356, 4), secondaryPrinterLanguageEnum);
    dotsPerMm = IntValue(byteArray.get(360, 2));
    dotsPerDotRow = IntValue(byteArray.get(362, 2));
    labelLength = IntValue(byteArray.get(364, 2));
    labelWidth = IntValue(byteArray.get(366, 2));
    darkness = IntValue(byteArray.get(368, 2));
    mediaType = EnumValue(byteArray.get(370, 2), printerMediaTypeEnum);
    printMethod = EnumValue(byteArray.get(372, 2), printMethodEnum);
    printMode = EnumValue(byteArray.get(374, 2), printModeEnum);
    odometerTotal = IntValue(byteArray.get(376, 4));
    odometerMarkerOne = IntValue(byteArray.get(380, 4));
    odometerMarkerTwo = IntValue(byteArray.get(384, 4));
    numOfLabelsInBatch = IntValue(byteArray.get(388, 2));
    labelsQueued = IntValue(byteArray.get(390, 2));
    zbiEnabled = BoolValue(byteArray.get(392, 1));
    zbiState = EnumValue(byteArray.get(393, 1), zbiStateEnum);
    zbiMajorVersion = IntValue(byteArray.get(394, 1));
    zbiMinorVersion = IntValue(byteArray.get(395, 1));
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
