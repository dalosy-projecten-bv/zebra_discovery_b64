import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/zbi_state.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/enum_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('EnumValue tests', () {
    test('enum_value ZbiState.disabled', () {
      final list = Uint8List.fromList([0]);
      final value = EnumValue(list, 0, 1, zbiStateEnum);
      expect(value.error, false);
      expect(value.length, 1);
      expect(value.value!.enumeration, ZbiState.disabled);
    });

    test('enum_value ZbiState.stopped', () {
      final list = Uint8List.fromList([1]);
      final value = EnumValue(list, 0, 1, zbiStateEnum);
      expect(value.error, false);
      expect(value.length, 1);
      expect(value.value!.enumeration, ZbiState.stopped);
    });

    test('enum_value ZbiState.running', () {
      final list = Uint8List.fromList([2]);
      final value = EnumValue(list, 0, 1, zbiStateEnum);
      expect(value.error, false);
      expect(value.length, 1);
      expect(value.value!.enumeration, ZbiState.running);
    });

    test('enum_value ZbiState.running 2', () {
      final list = Uint8List.fromList([0, 2]);
      final value = EnumValue(list, 0, 2, zbiStateEnum);
      expect(value.error, false);
      expect(value.length, 2);
      expect(value.value!.enumeration, ZbiState.running);
    });

    test('enum_value unknown -> default', () {
      final list = Uint8List.fromList([3]);
      final value = EnumValue(list, 0, 1, zbiStateEnum);
      expect(value.error, false);
      expect(value.length, 1);
      expect(value.value!.enumeration, ZbiState.stopped);
    });

    test('enum_value invalid', () {
      final list = Uint8List.fromList([2]);
      final value = EnumValue(list, 0, 2, zbiStateEnum);
      expect(value.error, true);
      expect(value.length, 2);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(0, 1)),
        true,
      );
      expect(value.value, null);
    });
  });
}
