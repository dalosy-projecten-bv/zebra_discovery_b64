import 'dart:typed_data';

abstract class Value<T> {
  Value(this.byteArray, this.value);

  final Uint8List byteArray;
  final T value;
}
