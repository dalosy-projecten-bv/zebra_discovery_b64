import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/bool_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('BoolValue tests', () {
    test('bool_value single false', () {
      final list = Uint8List.fromList([0]);
      final value = BoolValue(list, 0, 1);
      expect(value.error, false);
      expect(value.length, 1);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, false);
    });

    test('bool_value single true', () {
      final list = Uint8List.fromList([1]);
      final value = BoolValue(list, 0, 1);
      expect(value.error, false);
      expect(value.length, 1);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, true);
    });

    test('bool_value 0,0,0 false', () {
      final list = Uint8List.fromList([0, 0, 0]);
      final value = BoolValue(list, 0, 3);
      expect(value.error, false);
      expect(value.length, 3);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, false);
    });

    test('bool_value array 0,0,1 true', () {
      final list = Uint8List.fromList([0, 0, 1]);
      final value = BoolValue(list, 0, 3);
      expect(value.error, false);
      expect(value.length, 3);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, true);
    });

    test('bool_value array 0,1,0 true', () {
      final list = Uint8List.fromList([0, 1, 0]);
      final value = BoolValue(list, 0, 3);
      expect(value.error, false);
      expect(value.length, 3);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, true);
    });

    test('bool_value array 1,0,0 true', () {
      final list = Uint8List.fromList([1, 0, 0]);
      final value = BoolValue(list, 0, 3);
      expect(value.error, false);
      expect(value.length, 3);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, true);
    });

    test('bool_value array 1,1,1 true', () {
      final list = Uint8List.fromList([1, 1, 1]);
      final value = BoolValue(list, 0, 3);
      expect(value.error, false);
      expect(value.length, 3);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, true);
    });

    test('bool_value invalid', () {
      final list = Uint8List.fromList([0, 1, 0]);
      final value = BoolValue(list, 1, 3);
      expect(value.error, true);
      expect(value.length, 3);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(1)),
        true,
      );
      expect(value.value, null);
    });
  });
}
