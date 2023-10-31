import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value_with_segment.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class ValuesWithSegment<T extends Enum> {
  ValuesWithSegment({
    required this.values,
  });

  final Set<ValueWithSegment<T>> values;

  List<ValueWithSegment<T>> listFromByteArray(
    int segment,
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <ValueWithSegment<T>>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
