import 'dart:typed_data';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

import 'helpers/helpers.dart';

void main() {
  group('Helpers tests', () {
    final list = Uint8List.fromList([0, 1, 2, 4, 8, 16, 32, 64, 128, 255]);
    // 00000000
    // 00000001
    // 00000010
    // 00000100
    // 00001000
    // 00010000
    // 00100000
    // 01000000
    // 10000000
    // 11111111

    test('sublistSafe start position too small', () {
      final subList = list.sublistSafe(-1);
      expect(subList.error, true);
      expect(subList.byteArray.length, 0);
    });

    test('sublistSafe start position too large', () {
      final subList = list.sublistSafe(list.length);
      expect(subList.error, true);
      expect(subList.byteArray.length, 0);
    });

    test('sublistSafe end position too big)', () {
      final subList = list.sublistSafe(0, list.length + 1);
      expect(subList.error, true);
      expect(uint8ListEquals(subList.byteArray, list), true);
    });

    test('sublistSafe get all', () {
      final subList = list.sublistSafe(0);
      expect(subList.error, false);
      expect(uint8ListEquals(subList.byteArray, list), true);
    });

    test('sublistSafe get empty list', () {
      final subList = list.sublistSafe(0, 0);
      expect(subList.error, false);
      expect(subList.byteArray.length, 0);
    });

    test('sublistSafe get position 0', () {
      final subList = list.sublistSafe(0, 1);
      expect(subList.error, false);
      expect(uint8ListEquals(subList.byteArray, Uint8List.fromList([0])), true);
    });

    test('sublistSafe get position 5', () {
      final subList = list.sublistSafe(5, 6);
      expect(subList.error, false);
      expect(
          uint8ListEquals(subList.byteArray, Uint8List.fromList([16])), true);
    });

    test('sublistSafe get position 9', () {
      final subList = list.sublistSafe(9, 10);
      expect(subList.error, false);
      expect(
          uint8ListEquals(subList.byteArray, Uint8List.fromList([255])), true);
    });

    test('sublistSafe get first half', () {
      final subList = list.sublistSafe(0, 5);
      expect(subList.error, false);
      expect(
          uint8ListEquals(
              subList.byteArray, Uint8List.fromList([0, 1, 2, 4, 8])),
          true);
    });

    test('sublistSafe get last half', () {
      final subList = list.sublistSafe(5, 10);
      expect(subList.error, false);
      expect(
          uint8ListEquals(
              subList.byteArray, Uint8List.fromList([16, 32, 64, 128, 255])),
          true);
    });
  });
}
