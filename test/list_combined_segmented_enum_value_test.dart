import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_combined_segmented_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';

import 'helpers/helpers.dart';

final equals = ListEquality().equals;

void main() {
  group('ListCombinedSegmentedEnumValue tests', () {
    test('list_segmented_enum_value no values', () {
      final segment0 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment1 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment2 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();

      final list = Uint8List.fromList([...segment0, ...segment1, ...segment2]);
      final value = ListCombinedSegmentedEnumValue([
        ListSegmentedEnumValue(0, list, 0, 4, printerWarningEnum),
        ListSegmentedEnumValue(1, list, 4, 4, printerWarningEnum),
        ListSegmentedEnumValue(2, list, 8, 4, printerWarningEnum),
      ]);
      expect(value.error, false);
      expect(value.values?.length, 0);
    });

    test('list_segmented_enum_value first value', () {
      final segment0 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment1 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment2 = [
        '0000 0000',
        '0000 0000',
        '0001 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();

      final list = Uint8List.fromList([...segment0, ...segment1, ...segment2]);
      final value = ListCombinedSegmentedEnumValue([
        ListSegmentedEnumValue(0, list, 0, 4, printerWarningEnum),
        ListSegmentedEnumValue(1, list, 4, 4, printerWarningEnum),
        ListSegmentedEnumValue(2, list, 8, 4, printerWarningEnum),
      ]);
      expect(value.error, false);
      expect(value.values?.length, 1);
      expect(
        equals(
          value.values!.map((e) => e.enumeration).toList(),
          [
            PrinterWarning.headUnderTemp,
          ],
        ),
        true,
      );
    });

    test('list_segmented_enum_value last value', () {
      final segment0 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment1 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment2 = [
        '0000 0000',
        '0000 0000',
        '1000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();

      final list = Uint8List.fromList([...segment0, ...segment1, ...segment2]);
      final value = ListCombinedSegmentedEnumValue([
        ListSegmentedEnumValue(0, list, 0, 4, printerWarningEnum),
        ListSegmentedEnumValue(1, list, 4, 4, printerWarningEnum),
        ListSegmentedEnumValue(2, list, 8, 4, printerWarningEnum),
      ]);
      expect(value.error, false);
      expect(value.values?.length, 1);
      expect(
        equals(
          value.values!.map((e) => e.enumeration).toList(),
          [
            PrinterWarning.rfidError,
          ],
        ),
        true,
      );
    });

    test('list_segmented_enum_value all values', () {
      final segment0 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment1 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment2 = [
        '0000 0000',
        '0000 0000',
        '1111 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();

      final list = Uint8List.fromList([...segment0, ...segment1, ...segment2]);
      final value = ListCombinedSegmentedEnumValue([
        ListSegmentedEnumValue(0, list, 0, 4, printerWarningEnum),
        ListSegmentedEnumValue(1, list, 4, 4, printerWarningEnum),
        ListSegmentedEnumValue(2, list, 8, 4, printerWarningEnum),
      ]);
      expect(value.error, false);
      expect(value.values?.length, 4);
      expect(
        equals(
          value.values!.map((e) => e.enumeration).toList(),
          [
            PrinterWarning.headUnderTemp,
            PrinterWarning.ribbonIn,
            PrinterWarning.batteryLow,
            PrinterWarning.rfidError,
          ],
        ),
        true,
      );
    });

    test('list_enum_value invalid', () {
      final segment0 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment1 = [
        '0000 0000',
        '0000 0000',
        '0000 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();
      final segment2 = [
        '0000 0000',
        '0000 0000',
        '1111 0000',
        '0000 0000',
      ].map((element) => int.parse(element.removeSpaces(), radix: 2)).toList();

      final list = Uint8List.fromList([...segment0, ...segment1, ...segment2]);
      final value = ListCombinedSegmentedEnumValue([
        ListSegmentedEnumValue(0, list, 0, 4, printerWarningEnum),
        ListSegmentedEnumValue(1, list, 4, 4, printerWarningEnum),
        ListSegmentedEnumValue(2, list, 9, 4, printerWarningEnum),
      ]);
      expect(value.error, true);
      expect(value.values, null);
    });
  });
}
