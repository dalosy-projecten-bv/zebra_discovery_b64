import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:test/test.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/string_value.dart';

import 'helpers/helpers.dart';

void main() {
  group('StringValue tests', () {
    final list = Uint8List(95);

    //Put all printable ascii characters in the list
    list.forEachIndexed((index, element) => list[index] = index + 32);

    test('string_value', () {
      final value = StringValue(list, 0, 95);
      expect(value.error, false);
      expect(value.length, 95);
      expect(value.value, printableAscii);
    });

    test('string_value invalid', () {
      final value = StringValue(list, 1, 95);
      expect(value.error, true);
      expect(value.length, 95);
      expect(
        uint8ListEquals(value.byteArray, list.sublist(1)),
        true,
      );
      expect(value.value, null);
    });

    test('StringValue empty', () {
      final value = StringValue(list, 0, 0);
      expect(value.error, false);
      expect(value.length, 0);
      expect(value.byteArray.length, 0);
      expect(value.value, '');
    });
  });
}
