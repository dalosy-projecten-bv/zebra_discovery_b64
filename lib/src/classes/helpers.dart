import 'dart:typed_data';

import 'package:collection/collection.dart';

int parseInteger(Uint8List byteArray) {
  var result = 0;
  byteArray.reversed.forEachIndexed(
    (index, byte) {
      result = result | (byte << (index * 8));
    },
  );
  return result;
}

extension Uint8ListExtension on Uint8List {
  Uint8List get(int start, int length) {
    return sublist(start, start + length);
  }
}
