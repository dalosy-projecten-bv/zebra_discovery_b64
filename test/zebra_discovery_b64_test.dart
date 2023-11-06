import 'dart:convert';
import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v4.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

import 'helpers/helpers.dart';

void main() {
  final String discoveryB64AdvancedV4 =
      "OiwuBAUBAAFaQlIAAEQzSjE5MzIwNjcyMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFpUQyBaRDYyMC0yMDNkcGkgWlBMAAAAAAAAAAAAAAAAVjg0LjIwLjIzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG1EM0oxOTMyMDY3MjIAAAAAAAAAAAAAAAAAAAAAAAAAAGhvbWUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAdNnRgUAADAqAFM////AMCoAQEX1Q7/AAAAAQAAAAUAAAADAAgR8ATQA0AAZAACAAAAAQAAAPsAAA/lAAAP5QAAAAABAAIBA0Aj8AYEMC4xMwAAGykIAALSsBojtyQbAAA=:c0cb";

  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Decode an advancedV4 message', () {
      final discovery = Discovery.fromDiscoveryB64(discoveryB64AdvancedV4);
      expect(discovery, isA<DiscoveryAdvancedV4>());
      final json = discovery.toJson();
      JsonEncoder encoder = JsonEncoder.withIndent('  ');
      String prettyprint = encoder.convert(json);
      print(prettyprint);

      expect(discovery.map['DISCOVERY_VER'], '4');
      expect(discovery.map['ADVANCED_DISCOVERY_VER'], '5');
      expect(discovery.map['COMPANY_ABBREVIATION'], 'ZBR');
      expect(discovery.map['SYSTEM_NAME'], 'D3J193206722');
      expect(
          discovery.map['PRODUCT_NAME'],
          'ZTC ZD620-20'
          '3dpi ZPL');
      expect(discovery.map['FIRMWARE_VER'], 'V84.20.23');
      expect(discovery.map['LOCATION'], '');
      expect(discovery.map['ERRORS'], '');
      expect(discovery.map['WARNINGS'], '');
      expect(discovery.map['ACTIVE_NETWORK_INTERFACE'], 'Internal Wired');
      expect(discovery.map['SERIAL_NUMBER'], 'D3J193206722');
      expect(discovery.map['DEVICE_UNIQUE_ID'], 'D3J193206722');
      expect(discovery.map['DNS_DOMAIN'], 'home');
      expect(discovery.map['HARDWARE_ADDRESS'], '00704D9D1814');

      // expect(discovery.map['USING_NET_PROTOCOL'], 'TODO');
      // expect(discovery.map['DNS_NAME'], 'TODO');

      expect(discovery.map['IP_ACQUISITION_PROTOCOL'], 'All');
      expect(discovery.map['ADDRESS'], '192.168.1.76');
      expect(discovery.map['SUBNET_MASK'], '255.255.255.0');
      expect(discovery.map['GATEWAY'], '192.168.1.1');
      expect(discovery.map['PORT_NUMBER'], '6101');
      expect(discovery.map['AVAILABLE_NETWORK_PROTOCOLS'],
          'FTP,LPD,TCP,UDP,HTTP,SMTP,POP3,SNMP,Weblink,TLS,HTTPS');

      expect(discovery.map.length, 51);
    });

    test('Test error codes', () {
      final errorsSegment0 = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
      ]);
      final errorsSegment1 = Uint8List.fromList([
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
      ]);
      final errorsSegment2 = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0011 0001'.removeSpaces(), radix: 2),
        int.parse('0100 0010'.removeSpaces(), radix: 2),
        int.parse('1011 0111'.removeSpaces(), radix: 2),
      ]);
      final result = getErrors(
        errorsSegment0: errorsSegment0,
        errorsSegment1: errorsSegment1,
        errorsSegment2: errorsSegment2,
      );
      expect(result,
          'Paper Out,Ribbon Out,Head Open,Printhead Shutdown,Motor Overtemp,Invalid Head,Thermistor Fault,Paper Feed,Paused,Basic Runtime Error,Basic Forced');
    });

    test('Test warning codes', () {
      final warningsSegment0 = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
      ]);
      final warningsSegment1 = Uint8List.fromList([
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
      ]);
      final warningsSegment2 = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('1111 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
      ]);
      final result = getWarnings(
        warningsSegment0: warningsSegment0,
        warningsSegment1: warningsSegment1,
        warningsSegment2: warningsSegment2,
      );
      expect(result, 'Head Cold,Ribbon In,Battery Low,RFID Error');
    });

    test('Test active network interface codes', () {
      final byteArray = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0001'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
      ]);
      final result = getNetworkInterfaces(byteArray);
      expect(result,
          'Internal Wired,External Wired,Wireless,Bluetooth,Parallel,Serial,USB,SD Card,Battery');
    });

    test('Test parseIntegerZeros', () {
      String byte1 = '0000 0000'.removeSpaces();
      String byte2 = '0000 0000'.removeSpaces();
      String byte3 = '0000 0000'.removeSpaces();
      String byte4 = '0000 0000'.removeSpaces();
      final byteArray = Uint8List.fromList([
        int.parse(byte1, radix: 2),
        int.parse(byte2, radix: 2),
        int.parse(byte3, radix: 2),
        int.parse(byte4, radix: 2),
      ]);
      final result = parseInteger(byteArray);
      printAsBinary32(result);
      expect(result, int.parse('$byte1$byte2$byte3$byte4', radix: 2));
    });

    test('Test parseInteger1234', () {
      String byte1 = '0000 0001'.removeSpaces();
      String byte2 = '0000 0010'.removeSpaces();
      String byte3 = '0000 0011'.removeSpaces();
      String byte4 = '0000 0100'.removeSpaces();
      final byteArray = Uint8List.fromList([
        int.parse(byte1, radix: 2),
        int.parse(byte2, radix: 2),
        int.parse(byte3, radix: 2),
        int.parse(byte4, radix: 2),
      ]);
      final result = parseInteger(byteArray);
      printAsBinary32(result);
      expect(result, int.parse('$byte1$byte2$byte3$byte4', radix: 2));
    });

    test('Test parseIntegerOnes', () {
      String byte1 = '1111 1111'.removeSpaces();
      String byte2 = '1111 1111'.removeSpaces();
      String byte3 = '1111 1111'.removeSpaces();
      String byte4 = '1111 1111'.removeSpaces();
      final byteArray = Uint8List.fromList([
        int.parse(byte1, radix: 2),
        int.parse(byte2, radix: 2),
        int.parse(byte3, radix: 2),
        int.parse(byte4, radix: 2),
      ]);
      final result = parseInteger(byteArray);
      printAsBinary32(result);
      expect(result, int.parse('$byte1$byte2$byte3$byte4', radix: 2));
    });

    test('Test parseIntegerOnes', () {
      String byte1 = '1111 1111'.removeSpaces();
      String byte2 = '1111 1111'.removeSpaces();
      String byte3 = '1111 1111'.removeSpaces();
      String byte4 = '1111 1111'.removeSpaces();
      final byteArray = Uint8List.fromList([
        int.parse(byte1, radix: 2),
        int.parse(byte2, radix: 2),
        int.parse(byte3, radix: 2),
        int.parse(byte4, radix: 2),
      ]);
      final result = parseInteger(byteArray);
      printAsBinary32(result);
      expect(result, int.parse('$byte1$byte2$byte3$byte4', radix: 2));
    });

    test('Test serial number decode', () {
      final serial = 'ABCDEFGHIJKLMNOP';
      final byteArray = Uint8List.fromList(utf8.encode(serial));
      final result = StringValue(byteArray, 0, 16);
      expect(result.value, serial);
    });

    test('Test null terminated serial number', () {
      final serial = 'ABC';
      final bytesBuilder = BytesBuilder();
      bytesBuilder.add(Uint8List.fromList(utf8.encode(serial)));
      bytesBuilder.add(Uint8List.fromList(
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      ));
      final result = StringValue(bytesBuilder.toBytes(),0, 13);
      expect(result.value, serial);
    });
  });
}
