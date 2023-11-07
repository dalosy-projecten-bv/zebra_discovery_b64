import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/hex_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('HexValue tests', () {
    test('hex_value 0, 0, 0 ,0', () {
      final list = Uint8List.fromList([0, 0, 0, 0]);
      final value = HexValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, '00000000');
    });

    test('hex_value FF, 00, FF ,00', () {
      final list = Uint8List.fromList([255, 0, 255, 0]);
      final value = HexValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 'FF00FF00');
    });

    test('hex_value FF, FF, FF ,FF', () {
      final list = Uint8List.fromList([255, 255, 255, 255]);
      final value = HexValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 'FFFFFFFF');
    });

    test('hex_value invalid', () {
      final list = Uint8List.fromList([0, 255, 0, 255]);
      final value = HexValue(list, 1, 4);
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
