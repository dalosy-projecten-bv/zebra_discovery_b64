import 'dart:typed_data';

abstract class ValueBase<T> {
  ValueBase(this.byteArray, this.value);

  final Uint8List byteArray;
  final T value;
}
