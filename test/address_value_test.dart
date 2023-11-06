import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/address_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('Uint8ListExtension tests', () {
    final list = Uint8List.fromList([127, 0, 0, 1]);

    test('address_value', () {
      final address = AddressValue(list, 0, 4);
      expect(address.error, false);
      expect(address.length, 4);
      expect(uint8ListEquals(address.byteArray, list), true);
      expect(address.value, '127.0.0.1');
    });

    test('address_value invalid', () {
      final address = AddressValue(list, 1, 4);
      expect(address.error, true);
      expect(address.length, 4);
      expect(
        uint8ListEquals(address.byteArray, list.sublist(1)),
        true,
      );
      expect(address.value, null);
    });
  });
}
