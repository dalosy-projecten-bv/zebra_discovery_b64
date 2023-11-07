import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('AddressValue tests', () {
    final list = Uint8List.fromList([127, 0, 0, 1]);
    final list5Values = Uint8List.fromList([127, 0, 0, 1, 255]);

    test('address_value', () {
      final value = AddressValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, '127.0.0.1');
    });

    test('address_value invalid', () {
      final value = AddressValue(list, 1, 4);
      expect(value.error, true);
      expect(value.length, 4);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(1)),
        true,
      );
      expect(value.value, null);
    });

    test('address_value empty', () {
      final value = AddressValue(list, 0, 0);
      expect(value.error, false);
      expect(value.length, 0);
      expect(
        uint8ListEquals(value.byteArray, Uint8List(0)),
        true,
      );
      expect(value.value, '');
    });

    test('address_value 1 value', () {
      final value = AddressValue(list, 0, 1);
      expect(value.error, false);
      expect(value.length, 1);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(0, 1)),
        true,
      );
      expect(value.value, '127');
    });

    test('address_value 5 values', () {
      final value = AddressValue(list5Values, 0, 5);
      expect(value.error, false);
      expect(value.length, 5);
      expect(
        uint8ListEquals(value.byteArray, list5Values),
        true,
      );
      expect(value.value, '127.0.0.1.255');
    });
  });
}
