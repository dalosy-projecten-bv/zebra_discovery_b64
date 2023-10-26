import 'dart:typed_data';

class BytesSplitter {
  BytesSplitter(this._byteArray);

  final Uint8List _byteArray;
  var _index = 0;

  Uint8List getNextBytes(int length) {
    final subList = _byteArray.sublist(_index, _index + length);
    _index += length;
    return subList;
  }
}