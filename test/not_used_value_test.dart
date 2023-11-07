import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/not_used_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('NotUsedValue tests', () {
    final list = Uint8List.fromList([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);

    test('not_used_value', () {
      final value = NotUsedValue(list, 0, 10);
      expect(value.error, false);
      expect(value.length, 10);
      expect(value.value, null);
    });

    test('not_used_value invalid', () {
      final value = NotUsedValue(list, 1, 10);
      expect(value.error, true);
      expect(value.length, 10);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(1)),
        true,
      );
      expect(value.value, null);
    });

    test('not_used_value empty', () {
      final value = NotUsedValue(list, 0, 0);
      expect(value.error, false);
      expect(value.length, 0);
      expect(value.byteArray.length, 0);
      expect(value.value, null);
    });
  });
}
