import 'dart:convert';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

import 'helpers/helpers.dart';

void main() {
  //This is a real string, received from an actual device, only the version is changed to 0
  final String discoveryB64AdvancedV0 =
      "OiwuBAABAAFaQlIAAEQzSjE5MzIwNjcyMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFpUQyBaRDYyMC0yMDNkcGkgWlBMAAAAAAAAAAAAAAAAVjg0LjIwLjIzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1EM0oxOTMyMDY3MjIAAAAAAAAAAAAAAAAAAAAAAAAAAGhvbWUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAdNnRgUAADAqAFM////AMCoAQEX1Q7/AAAAAQAAAAUAAAADAAgR8ATQA0AAZAACAAAAAQAAAPsAAA/lAAAP5QAAAAABAAIBA0Aj8AYEMC4xMwAAGykIAALSsBojtyQbAAA=:c0cb";

  final String discoveryB64V4Short = "OiwuBA==";

  group('Test advancedV0', () {
    test('Decode an advancedV0 message', () {
      final discovery = Discovery.fromDiscoveryB64(discoveryB64AdvancedV0);

      expect(discovery, isA<DiscoveryAdvancedV0>());

      expect(discovery.discoveryDataMap['DISCOVERY_VER'], '4');
      expect(discovery.discoveryDataMap['ADVANCED_DISCOVERY_VER'], '0');
      expect(discovery.discoveryDataMap['COMPANY_ABBREVIATION'], 'ZBR');
      expect(discovery.discoveryDataMap['SYSTEM_NAME'], 'D3J193206722');
      expect(discovery.discoveryDataMap['PRODUCT_NAME'], 'ZTC ZD620-203dpi ZPL');
      expect(discovery.discoveryDataMap['FIRMWARE_VER'], 'V84.20.23');
      expect(discovery.discoveryDataMap['LOCATION'], '');
      expect(discovery.discoveryDataMap['ERRORS'], '');
      expect(discovery.discoveryDataMap['WARNINGS'], '');
      expect(discovery.discoveryDataMap['ACTIVE_NETWORK_INTERFACE'], 'Internal Wired');
      expect(discovery.discoveryDataMap['SERIAL_NUMBER'], 'D3J193206722');
      expect(discovery.discoveryDataMap['DEVICE_UNIQUE_ID'], 'D3J193206722');
      expect(discovery.discoveryDataMap['DNS_DOMAIN'], 'home');
      expect(discovery.discoveryDataMap['HARDWARE_ADDRESS'], '00704D9D1814');
      expect(discovery.discoveryDataMap['USING_NET_PROTOCOL'], 'true');
      expect(discovery.discoveryDataMap['DNS_NAME'], 'home');
      expect(discovery.discoveryDataMap['IP_ACQUISITION_PROTOCOL'], 'All');
      expect(discovery.discoveryDataMap['ADDRESS'], '192.168.1.76');
      expect(discovery.discoveryDataMap['SUBNET_MASK'], '255.255.255.0');
      expect(discovery.discoveryDataMap['GATEWAY'], '192.168.1.1');
      expect(discovery.discoveryDataMap['PORT_NUMBER'], '6101');
      expect(discovery.discoveryDataMap['AVAILABLE_NETWORK_PROTOCOLS'],
          'FTP,LPD,TCP,UDP,HTTP,SMTP,POP3,SNMP,Weblink,TLS,HTTPS');
      expect(discovery.discoveryDataMap['AVAILABLE_INTERFACES'],
          'Internal Wired,Wireless,Bluetooth,Serial,USB');
      expect(discovery.discoveryDataMap['PRIMARY_LANGUAGE'], 'ZPL');
      expect(discovery.discoveryDataMap['AVAILABLE_LANGUAGES'], 'ZPL,EPL');
      expect(discovery.discoveryDataMap['SECONDARY_PRINTER_LANGUAGE'], 'Unknown,SGD,SNMP');
      expect(discovery.discoveryDataMap['DOTS_PER_MM'], '8');
      expect(discovery.discoveryDataMap['DOTS_PER_ROW'], '4592');
      expect(discovery.discoveryDataMap['LABEL_LENGTH'], '1232');
      expect(discovery.discoveryDataMap['LABEL_WIDTH'], '832');
      expect(discovery.discoveryDataMap['DARKNESS'], '100');
      expect(discovery.discoveryDataMap['PRINTER_MEDIA_TYPE'], 'Gap');
      expect(discovery.discoveryDataMap['PRINT_METHOD'], 'Direct Thermal');
      expect(discovery.discoveryDataMap['PRINT_MODE'], 'Tear Off');
      expect(discovery.discoveryDataMap['ODOMETER_TOTAL_LABEL_COUNT'], '251');
      expect(discovery.discoveryDataMap['ODOMETER_MEDIAMARKER_COUNT_ONE'], '4069');
      expect(discovery.discoveryDataMap['ODOMETER_MEDIAMARKER_COUNT_TWO'], '4069');
      expect(discovery.discoveryDataMap['NUMBER_LABELS_REMAIN_IN_BATCH'], '0');
      expect(discovery.discoveryDataMap['NUMBER_LABELS_QUEUED'], '0');
      expect(discovery.discoveryDataMap['ZBI_ENABLED'], 'true');
      expect(discovery.discoveryDataMap['ZBI_STATE'], 'Disabled');
      expect(discovery.discoveryDataMap['ZBI_MAJOR_VER'], '2');
      expect(discovery.discoveryDataMap['ZBI_MINOR_VER'], '1');
      expect(discovery.discoveryDataMap['PORT_STATUS'], 'Online');
      expect(discovery.discoveryDataMap['PRODUCT_NUMBER'], '');
      expect(discovery.discoveryDataMap['PORT_NAME'], '');
      expect(discovery.discoveryDataMap['DATE_CODE'], '');
      expect(discovery.discoveryDataMap.length, 47);
      expect(discovery.items.length, 46);
      expect(discovery.error, false);

      final json = discovery.toJson();
      final jsonExpected = jsonDecode(
        testResources('discovery_advanced_v0.json'),
      );
      expect(eq(json, jsonExpected), true);
    });

    test('Decode a too short advanced message', () {
      expect(
          () => Discovery.fromDiscoveryB64(discoveryB64V4Short),
          throwsA(predicate((e) =>
              e is FormatException &&
              e.message ==
                  'The message contains an unknown advanced version (-1)')));
    });
  });
}
