import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

abstract class ValueBase<T> {
  ValueBase(
    Uint8List fullByteArray,
    this.start,
    this.length,
  ) {
    final result = fullByteArray.sublistSafe(start, start + length);
    byteArray = result.byteArray;
    decodeError = result.decodeError;
    if (decodeError) {
      value = null;
      return;
    }
    value = constructValue(result.byteArray);
  }

  late final Uint8List byteArray;
  final int start;
  final int length;
  late final T? value;
  late final bool decodeError;

  T constructValue(Uint8List byteArray);
}
