import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class SegmentedEnumBase<T extends Enum> {
  SegmentedEnumBase({
    required List<T> values,
    required this.segment,
    required this.bitfieldValue,
    required this.enumAsString,
  }) : values = values
            .map((e) => SegmentedEnumData(
                  e,
                  segment(e),
                  bitfieldValue(e),
                  enumAsString(e),
                ))
            .toList();

  final List<SegmentedEnumData<T>> values;
  final int Function(T enumeration) segment;
  final int Function(T enumeration) bitfieldValue;
  final String Function(T enumeration) enumAsString;

  List<SegmentedEnumData<T>> listFromByteArray(
    int segment,
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <SegmentedEnumData<T>>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
