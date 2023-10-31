import 'package:zebra_discovery_b64/src/classes/discovery/discovery.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/bool_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/ip_acquisition_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_discovered_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_secondary_printer_language.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/print_method.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/print_mode.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/printer_media_type.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/zbi_state.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV0 extends Discovery {
  DiscoveryAdvancedV0(BytesSplitter b) : super(b) {
    advancedPacketFormat = ByteValue.fromByteArray(b.next(1));
    notUsed2 = NotUsedValue.fromByteArray(b.next(3));
    companyAbbreviation = StringValue.fromByteArray(b.next(5));
    systemName = StringValue.fromByteArray(b.next(63));
    productName = StringValue.fromByteArray(b.next(32));
    fwVersion = StringValue.fromByteArray(b.next(16));
    location = StringValue.fromByteArray(b.next(36));
    errorsSegment0 = ListPrinterError.fromByteArray(0, b.next(4));
    errorsSegment1 = ListPrinterError.fromByteArray(1, b.next(4));
    errorsSegment2 = ListPrinterError.fromByteArray(2, b.next(4));
    warningsSegment0 = ListPrinterWarning.fromByteArray(0, b.next(4));
    warningsSegment1 = ListPrinterWarning.fromByteArray(1, b.next(4));
    warningsSegment2 = ListPrinterWarning.fromByteArray(2, b.next(4));
    availableInterfacesBitfield = ListPrinterInterface.fromByteArray(b.next(4));
    deviceUniqueId = StringValue.fromByteArray(b.next(32));
    dnsDomain = StringValue.fromByteArray(b.next(100));
    activeInterface = PrinterInterface.fromByteArray(b.next(4));
    macAddress = HexValue.fromByteArray(b.next(6));
    ipAcquisitionProto = IpAcquisitionProtocol.fromByteArray(b.next(2));
    ipAddress = AddressValue.fromByteArray(b.next(4));
    subnetMask = AddressValue.fromByteArray(b.next(4));
    gatewayMask = AddressValue.fromByteArray(b.next(4));
    port = IntValue.fromByteArray(b.next(2));
    availableProtocols = ListNetworkProtocol.fromByteArray(b.next(2));
    primaryLanguage = DiscoveredPrinterLanguage.fromByteArray(b.next(4));
    availableLanguagesBitfield =
        ListDiscoveredPrinterLanguage.fromByteArray(b.next(4));
    availableSecondaryLanguagesBitfield =
        ListSecondaryPrinterLanguage.fromByteArray(b.next(4));
    dotsPerMm = IntValue.fromByteArray(b.next(2));
    dotsPerDotRow = IntValue.fromByteArray(b.next(2));
    labelLength = IntValue.fromByteArray(b.next(2));
    labelWidth = IntValue.fromByteArray(b.next(2));
    darkness = IntValue.fromByteArray(b.next(2));
    mediaType = PrinterMediaType.fromByteArray(b.next(2));
    printMethod = PrintMethod.fromByteArray(b.next(2));
    printMode = PrintMode.fromByteArray(b.next(2));
    odometerTotal = IntValue.fromByteArray(b.next(4));
    odometerMarkerOne = IntValue.fromByteArray(b.next(4));
    odometerMarkerTwo = IntValue.fromByteArray(b.next(4));
    numOfLabelsInBatch = IntValue.fromByteArray(b.next(2));
    labelsQueued = IntValue.fromByteArray(b.next(2));
    zbiEnabled = BoolValue.fromByteArray(b.next(1));
    zbiState = ZbiState.fromByteArray(b.next(1));
    zbiMajorVersion = IntValue.fromByteArray(b.next(1));
    zbiMinorVersion = IntValue.fromByteArray(b.next(1));
    initMap();
  }

  late final ByteValue advancedPacketFormat;
  late final NotUsedValue notUsed2;
  late final StringValue companyAbbreviation;
  late final StringValue systemName;
  late final StringValue productName;
  late final StringValue fwVersion;
  late final StringValue location;
  late final ListPrinterError errorsSegment0;
  late final ListPrinterError errorsSegment1;
  late final ListPrinterError errorsSegment2;
  late final ListPrinterWarning warningsSegment0;
  late final ListPrinterWarning warningsSegment1;
  late final ListPrinterWarning warningsSegment2;
  late final ListPrinterInterface availableInterfacesBitfield;
  late final StringValue deviceUniqueId;
  late final StringValue dnsDomain;
  late final PrinterInterface activeInterface;
  late final HexValue macAddress;
  late final IpAcquisitionProtocol ipAcquisitionProto;
  late final AddressValue ipAddress;
  late final AddressValue subnetMask;
  late final AddressValue gatewayMask;
  late final IntValue port;
  late final ListNetworkProtocol availableProtocols;
  late final DiscoveredPrinterLanguage primaryLanguage;
  late final ListDiscoveredPrinterLanguage availableLanguagesBitfield;
  late final ListSecondaryPrinterLanguage availableSecondaryLanguagesBitfield;
  late final IntValue dotsPerMm;
  late final IntValue dotsPerDotRow;
  late final IntValue labelLength;
  late final IntValue labelWidth;
  late final IntValue darkness;
  late final PrinterMediaType mediaType;
  late final PrintMethod printMethod;
  late final PrintMode printMode;
  late final IntValue odometerTotal;
  late final IntValue odometerMarkerOne;
  late final IntValue odometerMarkerTwo;
  late final IntValue numOfLabelsInBatch;
  late final IntValue labelsQueued;
  late final BoolValue zbiEnabled;
  late final ZbiState zbiState;
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
          ipAcquisitionProto.value != IpAcquisitionProtocolEnum.static
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
