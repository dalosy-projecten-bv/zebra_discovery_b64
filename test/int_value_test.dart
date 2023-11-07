import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('IntValue tests', () {
    test('int_value 0, 0, 0 ,0', () {
      final list = Uint8List.fromList([0, 0, 0, 0]);
      final value = IntValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 0);
    });

    test('int_value 255, 255, 255 ,255', () {
      final list = Uint8List.fromList([255, 255, 255, 255]);
      final value = IntValue(list, 0, 4);
      expect(value.error, false);
      expect(value.length, 4);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 4294967295);
    });

    test('int_value int64.max', () {
      final list = Uint8List.fromList([
        127,
        255,
        255,
        255,
        255,
        255,
        255,
        255,
      ]);
      final value = IntValue(list, 0, 8);
      expect(value.error, false);
      expect(value.length, 8);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 9223372036854775807);
    });

    test('int_value invalid', () {
      final list = Uint8List.fromList([255, 255, 255, 255]);
      final value = IntValue(list, 1, 4);
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
