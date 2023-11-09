import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_method.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_media_type.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_port_status.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/zbi_state.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/bool_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_combined_segmented_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'discovery_advanced_v0.g.dart';

@MyJsonSerializable()
class DiscoveryAdvancedV0 extends Discovery {
  DiscoveryAdvancedV0(super.byteArray)
      : advancedPacketFormat = ByteValue(byteArray, 4, 1),
        notUsed2 = NotUsedValue(byteArray, 5, 3),
        companyAbbreviation = StringValue(byteArray, 8, 5),
        systemName = StringValue(byteArray, 13, 63),
        productName = StringValue(byteArray, 76, 32),
        fwVersion = StringValue(byteArray, 108, 16),
        location = StringValue(byteArray, 124, 36),
        errors = ListCombinedSegmentedEnumValue([
          ListSegmentedEnumValue(
            0,
            byteArray,
            160,
            4,
            printerErrorEnum,
          ),
          ListSegmentedEnumValue(
            1,
            byteArray,
            164,
            4,
            printerErrorEnum,
          ),
          ListSegmentedEnumValue(
            2,
            byteArray,
            168,
            4,
            printerErrorEnum,
          ),
        ]),
        warnings = ListCombinedSegmentedEnumValue([
          ListSegmentedEnumValue(
            0,
            byteArray,
            172,
            4,
            printerWarningEnum,
          ),
          ListSegmentedEnumValue(
            1,
            byteArray,
            176,
            4,
            printerWarningEnum,
          ),
          ListSegmentedEnumValue(
            2,
            byteArray,
            180,
            4,
            printerWarningEnum,
          ),
        ]),
        availableInterfacesBitfield = ListEnumValue(
          byteArray,
          184,
          4,
          printerInterfaceEnum,
        ),
        deviceUniqueId = StringValue(byteArray, 188, 32),
        dnsDomain = StringValue(byteArray, 220, 100),
        activeInterface = EnumValue(
          byteArray,
          320,
          4,
          printerInterfaceEnum,
        ),
        macAddress = HexValue(byteArray, 324, 6),
        ipAcquisitionProto = EnumValue(
          byteArray,
          330,
          2,
          ipAcquisitionProtocolEnum,
        ),
        ipAddress = AddressValue(byteArray, 332, 4),
        subnetMask = AddressValue(byteArray, 336, 4),
        gatewayMask = AddressValue(byteArray, 340, 4),
        port = IntValue(byteArray, 344, 2),
        availableProtocols = ListEnumValue(
          byteArray,
          346,
          2,
          networkProtocolEnum,
        ),
        primaryLanguage = EnumValue(
          byteArray,
          348,
          4,
          discoveredPrinterLanguagesEnum,
        ),
        availableLanguagesBitfield = ListEnumValue(
          byteArray,
          352,
          4,
          discoveredPrinterLanguagesEnum,
        ),
        availableSecondaryLanguagesBitfield = ListEnumValue(
          byteArray,
          356,
          4,
          secondaryPrinterLanguageEnum,
        ),
        dotsPerMm = IntValue(byteArray, 360, 2),
        dotsPerDotRow = IntValue(byteArray, 362, 2),
        labelLength = IntValue(byteArray, 364, 2),
        labelWidth = IntValue(byteArray, 366, 2),
        darkness = IntValue(byteArray, 368, 2),
        mediaType = EnumValue(byteArray, 370, 2, printerMediaTypeEnum),
        printMethod = EnumValue(byteArray, 372, 2, printMethodEnum),
        printMode = EnumValue(byteArray, 374, 2, printModeEnum),
        odometerTotal = IntValue(byteArray, 376, 4),
        odometerMarkerOne = IntValue(byteArray, 380, 4),
        odometerMarkerTwo = IntValue(byteArray, 384, 4),
        numOfLabelsInBatch = IntValue(byteArray, 388, 2),
        labelsQueued = IntValue(byteArray, 390, 2),
        zbiEnabled = BoolValue(byteArray, 392, 1),
        zbiState = EnumValue(byteArray, 393, 1, zbiStateEnum),
        zbiMajorVersion = IntValue(byteArray, 394, 1),
        zbiMinorVersion = IntValue(byteArray, 395, 1) {
    initMap();
  }

  final ByteValue advancedPacketFormat;
  final NotUsedValue notUsed2;
  final StringValue companyAbbreviation;
  final StringValue systemName;
  final StringValue productName;
  final StringValue fwVersion;
  final StringValue location;
  final ListCombinedSegmentedEnumValue<PrinterError> errors;
  final ListCombinedSegmentedEnumValue<PrinterWarning> warnings;
  final ListEnumValue<PrinterInterface> availableInterfacesBitfield;
  final StringValue deviceUniqueId;
  final StringValue dnsDomain;
  final EnumValue<PrinterInterface> activeInterface;
  final HexValue macAddress;
  final EnumValue<IpAcquisitionProtocol> ipAcquisitionProto;
  final AddressValue ipAddress;
  final AddressValue subnetMask;
  final AddressValue gatewayMask;
  final IntValue port;
  final ListEnumValue<NetworkProtocol> availableProtocols;
  final EnumValue<DiscoveredPrinterLanguage> primaryLanguage;
  final ListEnumValue<DiscoveredPrinterLanguage> availableLanguagesBitfield;
  final ListEnumValue<SecondaryPrinterLanguage>
      availableSecondaryLanguagesBitfield;
  final IntValue dotsPerMm;
  final IntValue dotsPerDotRow;
  final IntValue labelLength;
  final IntValue labelWidth;
  final IntValue darkness;
  final EnumValue<PrinterMediaType> mediaType;
  final EnumValue<PrintMethod> printMethod;
  final EnumValue<PrintMode> printMode;
  final IntValue odometerTotal;
  final IntValue odometerMarkerOne;
  final IntValue odometerMarkerTwo;
  final IntValue numOfLabelsInBatch;
  final IntValue labelsQueued;
  final BoolValue zbiEnabled;
  final EnumValue<ZbiState> zbiState;
  final IntValue zbiMajorVersion;
  final IntValue zbiMinorVersion;

  @override
  void initMap() {
    super.initMap();
    map.addEntries(
      {
        MapEntry(
            'ADVANCED_DISCOVERY_VER', advancedPacketFormat.value.toString()),
        MapEntry('COMPANY_ABBREVIATION', companyAbbreviation.value),
        MapEntry('SYSTEM_NAME', systemName.value),
        MapEntry('PRODUCT_NAME', productName.value),
        MapEntry('FIRMWARE_VER', fwVersion.value),
        MapEntry('LOCATION', location.value),
        MapEntry(
          'ERRORS',
          errors.values?.getCommaSeparatedList(),
        ),
        MapEntry(
          'WARNINGS',
          warnings.values?.getCommaSeparatedList(),
        ),
        MapEntry(
          'ACTIVE_NETWORK_INTERFACE',
          activeInterface.value?.enumAsString,
        ),
        MapEntry('SERIAL_NUMBER', deviceUniqueId.value),
        MapEntry('DEVICE_UNIQUE_ID', deviceUniqueId.value),
        MapEntry('DNS_DOMAIN', dnsDomain.value),
        MapEntry('HARDWARE_ADDRESS', macAddress.value),
        MapEntry(
          'USING_NET_PROTOCOL',
          ipAcquisitionProto.value?.enumeration != IpAcquisitionProtocol.static
              ? "true"
              : "false",
        ),
        MapEntry('DNS_NAME', dnsDomain.value),
        MapEntry(
          'IP_ACQUISITION_PROTOCOL',
          ipAcquisitionProto.value?.enumAsString,
        ),
        MapEntry('ADDRESS', ipAddress.value),
        MapEntry('SUBNET_MASK', subnetMask.value),
        MapEntry('GATEWAY', gatewayMask.value),
        MapEntry('PORT_NUMBER', port.value.toString()),
        MapEntry(
          'AVAILABLE_NETWORK_PROTOCOLS',
          availableProtocols.value?.getCommaSeparatedList(),
        ),
        MapEntry('AVAILABLE_INTERFACES',
            availableInterfacesBitfield.value?.getCommaSeparatedList()),
        MapEntry('PRIMARY_LANGUAGE', primaryLanguage.value?.enumAsString),
        MapEntry(
          'AVAILABLE_LANGUAGES',
          availableLanguagesBitfield.value?.getCommaSeparatedList(),
        ),
        MapEntry(
          'SECONDARY_PRINTER_LANGUAGE',
          secondaryPrinterLanguageEnum.values.getCommaSeparatedList(),
        ),
        MapEntry('DOTS_PER_MM', dotsPerMm.value.toString()),
        MapEntry('DOTS_PER_ROW', dotsPerDotRow.value.toString()),
        MapEntry('LABEL_LENGTH', labelLength.value.toString()),
        MapEntry('LABEL_WIDTH', labelWidth.value.toString()),
        MapEntry('DARKNESS', darkness.value.toString()),
        MapEntry('PRINTER_MEDIA_TYPE', mediaType.value?.enumAsString),
        MapEntry('PRINT_METHOD', printMethod.value?.enumAsString),
        MapEntry('PRINT_MODE', printMode.value?.enumAsString),
        MapEntry('ODOMETER_TOTAL_LABEL_COUNT', odometerTotal.value.toString()),
        MapEntry('ODOMETER_MEDIAMARKER_COUNT_ONE',
            odometerMarkerOne.value.toString()),
        MapEntry('ODOMETER_MEDIAMARKER_COUNT_TWO',
            odometerMarkerTwo.value.toString()),
        MapEntry('NUMBER_LABELS_REMAIN_IN_BATCH',
            numOfLabelsInBatch.value.toString()),
        MapEntry('NUMBER_LABELS_QUEUED', labelsQueued.value.toString()),
        MapEntry('ZBI_ENABLED', zbiEnabled.value.toString()),
        MapEntry('ZBI_STATE', zbiState.value?.enumAsString),
        MapEntry('ZBI_MAJOR_VER', zbiMajorVersion.value.toString()),
        MapEntry('ZBI_MINOR_VER', zbiMinorVersion.value.toString()),
        MapEntry('PORT_STATUS', getPortStatus().enumAsString),
        MapEntry('PRODUCT_NUMBER', ''),
        MapEntry('PORT_NAME', ''),
        MapEntry('DATE_CODE', ''),
      },
    );
    // TODO: implement initMap
  }

  PrinterPortStatus getPortStatus() {
    final err =
        errors.values?.map((e) => e.enumeration).toList() ?? <PrinterError>[];

    return err.contains(PrinterError.headOpen)
        ? PrinterPortStatus.doorOpen
        : err.contains(PrinterError.mediaOut)
            ? PrinterPortStatus.paperOut
            : err.contains(PrinterError.paperFeedError)
                ? PrinterPortStatus.paperJammed
                : err.isEmpty
                    ? PrinterPortStatus.online
                    : PrinterPortStatus.printerError;
  }

  @override
  Map<String, dynamic> toJson() => _$DiscoveryAdvancedV0ToJson(this);
}
