import 'dart:convert';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/discovery_legacy.dart';
import 'package:zebra_discovery_b64/zebra_discovery_b64.dart';

import 'helpers/helpers.dart';

void main() {
  //This is a crafted by hand for testing purposes
  final String discoveryB64Legacy =
      "OiwuAzEyMzQ1Njc4MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3MTIzNDU2Nzg5MDEyMzQ1AP8A/wD/MTIzNDU2Nzg5MAABwKgBOP///wDAqAEBMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjMA/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wCqAKoAqgCqAKoAqgCqAKoAqgCqAKoAqgCqAKoAqgCqMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMgUxMjM0NTY3ODkwMTIzNDU2";

  final String discoveryB64LegacyShort =
      "OiwuAzEyMzQ1Njc4MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3MTIzNDU2Nzg5MDEyMzQ1AP8A/wD/MTIzNDU2Nzg5MAABwKgBOP///wDAqAEBMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjMA/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wD/AP8A/wCqAKoAqgCqAKoAqgCqAKoAqgCqAKoAqgCqAKoAqgCqMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMgUxMjM0NTY3ODkw";

  final String discoveryB64V2 = "OiwuAg==";

  final String discoveryB64Short = "Oiwu";

  group('Test legacy', () {
    test('Decode an legacy message', () {
      final discovery = Discovery.fromDiscoveryB64(discoveryB64Legacy);

      expect(discovery, isA<DiscoveryLegacy>());

      expect(discovery.map['DISCOVERY_VER'], '3');
      expect(discovery.map['PRODUCT_NUMBER'], '12345678');
      expect(discovery.map['PRODUCT_NAME'], '12345678901234567890');
      expect(discovery.map['DATE_CODE'], '1234567');
      expect(discovery.map['FIRMWARE_VER'], '1234567890');
      expect(discovery.map['COMPANY_ABBREVIATION'], '12345');
      expect(discovery.map['HARDWARE_ADDRESS'], '00FF00FF00FF');
      expect(discovery.map['SERIAL_NUMBER'], '1234567890');
      expect(discovery.map['USING_NET_PROTOCOL'], 'true');
      expect(discovery.map['ADDRESS'], '192.168.1.56');
      expect(discovery.map['SUBNET_MASK'], '255.255.255.0');
      expect(discovery.map['GATEWAY'], '192.168.1.1');
      expect(discovery.map['SYSTEM_NAME'], '1234567890123456789012345');
      expect(discovery.map['ENCRYPTED_GET_COMMUNITY_NAME'],
          '00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF');
      expect(discovery.map['ENCRYPTED_SET_COMMUNITY_NAME'],
          '00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA00AA');
      expect(discovery.map['PORT_STATUS'], 'Paper Jammed');
      expect(discovery.map['PORT_NAME'], '1234567890123456');
      expect(discovery.map['PORT_NUMBER'], '9100');
      expect(discovery.map['DNS_NAME'], '1234567890123456789012345');
      expect(discovery.map.length, 19);
      expect(discovery.items.length, 20);
      expect(discovery.error, false);

      final json = discovery.toJson();
      final jsonExpected = jsonDecode(
        testResources('discovery_legacy.json'),
      );
      expect(eq(json, jsonExpected), true);
    });

    test('Decode an legacy message', () {
      final discovery = Discovery.fromDiscoveryB64(discoveryB64LegacyShort);
      expect(discovery.error, true);
    });

    test('Decode a legacy message with unknown version', () {
      expect(
          () => Discovery.fromDiscoveryB64(discoveryB64V2),
          throwsA(predicate((e) =>
              e is FormatException &&
              e.message == 'The message contains an unknown version (2)')));
    });

    test('Decode a too short legacy message', () {
      expect(
          () => Discovery.fromDiscoveryB64(discoveryB64Short),
          throwsA(predicate((e) =>
              e is FormatException &&
              e.message == 'The message contains an unknown version (-1)')));
    });
  });
}
