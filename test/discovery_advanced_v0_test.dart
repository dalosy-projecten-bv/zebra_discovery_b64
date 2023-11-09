import 'dart:convert';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v0.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

void main() {
  //This is a real string, received from an actual device
  final String discoveryB64AdvancedV0 =
      "OiwuBAABAAFaQlIAAEQzSjE5MzIwNjcyMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFpUQyBaRDYyMC0yMDNkcGkgWlBMAAAAAAAAAAAAAAAAVjg0LjIwLjIzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1EM0oxOTMyMDY3MjIAAAAAAAAAAAAAAAAAAAAAAAAAAGhvbWUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAdNnRgUAADAqAFM////AMCoAQEX1Q7/AAAAAQAAAAUAAAADAAgR8ATQA0AAZAACAAAAAQAAAPsAAA/lAAAP5QAAAAABAAIBA0Aj8AYEMC4xMwAAGykIAALSsBojtyQbAAA=:c0cb";

  final String discoveryB64V4Short = "OiwuBA==";

  group('Test advancedV0', () {
    test('Decode an advancedV0 message', () {
      final discovery = Discovery.fromDiscoveryB64(discoveryB64AdvancedV0);
      expect(discovery, isA<DiscoveryAdvancedV0>());
      final json = discovery.toJson();
      JsonEncoder encoder = JsonEncoder.withIndent('  ');
      String prettyprint = encoder.convert(json);
      print(prettyprint);

      expect(discovery.map['DISCOVERY_VER'], '4');
      expect(discovery.map['ADVANCED_DISCOVERY_VER'], '0');
      expect(discovery.map['COMPANY_ABBREVIATION'], 'ZBR');
      expect(discovery.map['SYSTEM_NAME'], 'D3J193206722');
      expect(discovery.map['PRODUCT_NAME'], 'ZTC ZD620-203dpi ZPL');
      expect(discovery.map['FIRMWARE_VER'], 'V84.20.23');
      expect(discovery.map['LOCATION'], '');
      expect(discovery.map['ERRORS'], '');
      expect(discovery.map['WARNINGS'], '');
      expect(discovery.map['ACTIVE_NETWORK_INTERFACE'], 'Internal Wired');
      expect(discovery.map['SERIAL_NUMBER'], 'D3J193206722');
      expect(discovery.map['DEVICE_UNIQUE_ID'], 'D3J193206722');
      expect(discovery.map['DNS_DOMAIN'], 'home');
      expect(discovery.map['HARDWARE_ADDRESS'], '00704D9D1814');

      expect(discovery.map['USING_NET_PROTOCOL'], 'true');
      expect(discovery.map['DNS_NAME'], 'home');

      expect(discovery.map['IP_ACQUISITION_PROTOCOL'], 'All');
      expect(discovery.map['ADDRESS'], '192.168.1.76');
      expect(discovery.map['SUBNET_MASK'], '255.255.255.0');
      expect(discovery.map['GATEWAY'], '192.168.1.1');
      expect(discovery.map['PORT_NUMBER'], '6101');
      expect(discovery.map['AVAILABLE_NETWORK_PROTOCOLS'],
          'FTP,LPD,TCP,UDP,HTTP,SMTP,POP3,SNMP,Weblink,TLS,HTTPS');

      expect(discovery.map['AVAILABLE_INTERFACES'],
          'Internal Wired,Wireless,Bluetooth,Serial,USB');
      expect(discovery.map['PRIMARY_LANGUAGE'], 'ZPL');
      expect(discovery.map['AVAILABLE_LANGUAGES'], 'ZPL,EPL');
      expect(discovery.map['SECONDARY_PRINTER_LANGUAGE'], 'Unknown,SGD,SNMP');
      expect(discovery.map['DOTS_PER_MM'], '8');
      expect(discovery.map['DOTS_PER_ROW'], '4592');
      expect(discovery.map['LABEL_LENGTH'], '1232');
      expect(discovery.map['LABEL_WIDTH'], '832');
      expect(discovery.map['DARKNESS'], '100');
      expect(discovery.map['PRINTER_MEDIA_TYPE'], 'Gap');
      expect(discovery.map['PRINT_METHOD'], 'Direct Thermal');
      expect(discovery.map['PRINT_MODE'], 'Tear Off');
      expect(discovery.map['ODOMETER_TOTAL_LABEL_COUNT'], '251');
      expect(discovery.map['ODOMETER_MEDIAMARKER_COUNT_ONE'], '4069');
      expect(discovery.map['ODOMETER_MEDIAMARKER_COUNT_TWO'], '4069');
      expect(discovery.map['NUMBER_LABELS_REMAIN_IN_BATCH'], '0');
      expect(discovery.map['NUMBER_LABELS_QUEUED'], '0');
      expect(discovery.map['ZBI_ENABLED'], 'true');
      expect(discovery.map['ZBI_STATE'], 'Disabled');
      expect(discovery.map['ZBI_MAJOR_VER'], '2');
      expect(discovery.map['ZBI_MINOR_VER'], '1');

      expect(discovery.map['PORT_STATUS'], 'Online');
      expect(discovery.map['PRODUCT_NUMBER'], '');
      expect(discovery.map['PORT_NAME'], '');
      expect(discovery.map['DATE_CODE'], '');

      expect(discovery.map.length, 47);
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