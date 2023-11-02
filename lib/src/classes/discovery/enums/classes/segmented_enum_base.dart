import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class SegmentedEnumBase<T extends Enum> {
  SegmentedEnumBase({
    required this.values,
  });

  final List<SegmentedEnumData<T>> values;

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
