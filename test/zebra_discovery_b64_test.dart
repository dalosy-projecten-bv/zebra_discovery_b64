import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v4.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

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
      expect(discovery.map['DISCOVERY_VER'], '4');
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
      expect(discovery.map['ACTIVE_NETWORK_INTERFACE'], 'Internal Wired,Wireless,Bluetooth,Serial,USB');
      expect(discovery.map.length, 10);
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
      expect(result,
          'Head Cold,Ribbon In,Battery Low,RFID Error');
    });

    test('Test active network interface codes', () {
      final byteArray = Uint8List.fromList([
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0000'.removeSpaces(), radix: 2),
        int.parse('0000 0001'.removeSpaces(), radix: 2),
        int.parse('1111 1111'.removeSpaces(), radix: 2),
      ]);
      final result = getActiveNetworkInterface(byteArray);
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
  });
}
