import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/value.dart';

class StringValue extends Value<String> {
  StringValue(super.byteArray, super.value);

  factory StringValue.byteToString(Uint8List byteArray) {
    assert(byteArray.length == 1);
    return StringValue(byteArray, byteArray[0].toString());
  }

  factory StringValue.byteArrayToString(Uint8List byteArray) {
    return StringValue(
      byteArray,
      String.fromCharCodes(
        byteArray.takeWhile((value) => value != 0),
      ),
    );
  }

  factory StringValue.notDecoded(Uint8List byteArray) {
    return StringValue(byteArray, '');
  }

  factory StringValue.byteArrayToHexString(Uint8List byteArray) {
    return StringValue(
      byteArray,
      byteArray
          .map((e) => e.toRadixString(16).toUpperCase().padRight(2, '0'))
          .toList()
          .join(),
    );
  }

  factory StringValue.byteArrayToAddressString(Uint8List byteArray) {
    return StringValue(
      byteArray,
      byteArray.map((e) => e.toString()).join('.'),
    );
  }
}
