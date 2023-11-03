import 'dart:typed_data';

abstract class ValueBase<T> {
  ValueBase({
    required Uint8List byteArray,
    required this.start,
    required this.length,
    required this.value,
  }) : byteArray = byteArray.sublist(start, start + length);

  final Uint8List byteArray;
  final int start;
  final int length;
  final T value;
}
