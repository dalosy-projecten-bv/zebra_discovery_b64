import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('Uint8ListExtension tests', () {
    final list = Uint8List.fromList([127, 0, 0, 1]);

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
  });
}
