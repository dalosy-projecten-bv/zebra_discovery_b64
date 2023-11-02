import 'dart:typed_data';

abstract class ValueBase<T> {
  ValueBase({
    required this.byteArray,
    required this.value,
  });

  final Uint8List byteArray;
  final T value;
}
