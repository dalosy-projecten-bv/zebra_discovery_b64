import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_enum_value.dart';

import 'helpers/helpers.dart';

final equals = ListEquality().equals;

void main() {
  group('ListEnumValue tests', () {
    test('list_enum_value first value', () {
      final byteValue1 = int.parse('0000 0000'.removeSpaces(), radix: 2);
      final byteValue2 = int.parse('0000 0001'.removeSpaces(), radix: 2);

      final list = Uint8List.fromList([byteValue1, byteValue2]);
      final value = ListEnumValue(list, 0, 2, networkProtocolEnum);
      expect(value.error, false);
      expect(value.length, 2);
      expect(
        equals(
          value.value!.map((e) => e.enumeration).toList(),
          [NetworkProtocol.ftp],
        ),
        true,
      );
    });

    test('list_enum_value last value', () {
      final byteValue1 = int.parse('0001 0000'.removeSpaces(), radix: 2);
      final byteValue2 = int.parse('0000 0000'.removeSpaces(), radix: 2);

      final list = Uint8List.fromList([byteValue1, byteValue2]);
      final value = ListEnumValue(list, 0, 2, networkProtocolEnum);
      expect(value.error, false);
      expect(value.length, 2);
      expect(
        equals(
          value.value!.map((e) => e.enumeration).toList(),
          [
            NetworkProtocol.https,
          ],
        ),
        true,
      );
    });

    //Almost all, except NetworkProtocol.none, which can not be encoded, because
    //there is no bitfieldValue 0
    test('list_enum_value all values', () {
      final byteValue1 = int.parse('0001 1111'.removeSpaces(), radix: 2);
      final byteValue2 = int.parse('1111 1111'.removeSpaces(), radix: 2);

      final list = Uint8List.fromList([byteValue1, byteValue2]);
      final value = ListEnumValue(list, 0, 2, networkProtocolEnum);
      expect(value.error, false);
      expect(value.length, 2);
      expect(
        equals(
          value.value!.map((e) => e.enumeration).toList(),
          [
            NetworkProtocol.ftp,
            NetworkProtocol.lpd,
            NetworkProtocol.tcpRaw,
            NetworkProtocol.udpRaw,
            NetworkProtocol.http,
            NetworkProtocol.smtp,
            NetworkProtocol.pop3,
            NetworkProtocol.snmp,
            NetworkProtocol.telnet,
            NetworkProtocol.weblink,
            NetworkProtocol.tls,
            NetworkProtocol.https,
          ],
        ),
        true,
      );
    });

    test('list_enum_value no values', () {
      final byteValue1 = int.parse('0000 0000'.removeSpaces(), radix: 2);
      final byteValue2 = int.parse('0000 0000'.removeSpaces(), radix: 2);

      final list = Uint8List.fromList([byteValue1, byteValue2]);
      final value = ListEnumValue(list, 0, 2, networkProtocolEnum);
      expect(value.error, false);
      expect(value.length, 2);
      expect(value.value!.length, 0);
    });

    test('list_enum_value invalid', () {
      final byteValue1 = int.parse('0001 1111'.removeSpaces(), radix: 2);
      final byteValue2 = int.parse('1111 1111'.removeSpaces(), radix: 2);
      final list = Uint8List.fromList([byteValue1, byteValue2]);
      final value = ListEnumValue(list, 1, 2, networkProtocolEnum);
      expect(value.error, true);
      expect(value.length, 2);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(1)),
        true,
      );
      expect(value.value, null);
    });
  });
}
