import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';

int parseInteger(Uint8List byteArray) {
  var result = 0;
  byteArray.reversed.forEachIndexed(
    (index, byte) {
      result = result | (byte << (index * 8));
    },
  );
  return result;
}

extension SetExtension on Iterable<SegmentedEnumData> {
  String getCommaSeparatedList() {
    return map((e) => e.enumAsString).join(',');
  }
}

extension ListExtension on Iterable<EnumData> {
  String getCommaSeparatedList() {
    return map((e) => e.enumAsString).join(',');
  }
}

extension Uint8ListExtension on Uint8List {
  ({
    Uint8List byteArray,
    bool error,
  }) sublistSafe(start, [int? end]) {
    if (start < 0) {
      return (
        byteArray: Uint8List(0),
        error: true,
      );
    }
    if (start >= length) {
      return (
        byteArray: Uint8List(0),
        error: true,
      );
    }
    if (end == null) {
      return (
        byteArray: sublist(start),
        error: false,
      );
    }
    if (end <= length) {
      return (
        byteArray: sublist(start, end),
        error: false,
      );
    }
    return (
      byteArray: sublist(start),
      error: true,
    );
  }
}
