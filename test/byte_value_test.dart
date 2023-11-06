import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('ByteValue tests', () {
    test('byte_value single value 0', () {
      final list = Uint8List.fromList([0]);
      final value = ByteValue(list, 0, 1);
      expect(value.error, false);
      expect(value.length, 1);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 0);
    });

    test('byte_value single value 255', () {
      final list = Uint8List.fromList([255]);
      final value = ByteValue(list, 0, 1);
      expect(value.error, false);
      expect(value.length, 1);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 255);
    });

    test('byte_value multiple values 0,0', () {
      final list = Uint8List.fromList([0, 0]);
      final value = ByteValue(list, 0, 2);
      expect(value.error, false);
      expect(value.length, 2);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 0);
    });

    test('byte_value multiple values 0,255', () {
      final list = Uint8List.fromList([0, 0]);
      final value = ByteValue(list, 0, 2);
      expect(value.error, false);
      expect(value.length, 2);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 0);
    });

    test('byte_value multiple values 255,0', () {
      final list = Uint8List.fromList([255, 0]);
      final value = ByteValue(list, 0, 2);
      expect(value.error, false);
      expect(value.length, 2);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 255);
    });

    test('byte_value multiple values 255,255', () {
      final list = Uint8List.fromList([255, 255]);
      final value = ByteValue(list, 0, 2);
      expect(value.error, false);
      expect(value.length, 2);
      expect(uint8ListEquals(value.byteArray, list), true);
      expect(value.value, 255);
    });

    test('byte_value invalid', () {
      final list = Uint8List.fromList([0, 255]);
      final value = ByteValue(list, 1, 2);
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
