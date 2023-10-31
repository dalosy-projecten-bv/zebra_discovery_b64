import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class Values<T extends Enum> {
  Values({
    required this.defaultValue,
    required this.values,
  });

  final T defaultValue;
  final Set<Value<T>> values;

  Value<T> fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => values.firstWhere((element) => element.id == defaultValue),
    ));
  }

  List<Value<T>> listFromByteArray(
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <Value<T>>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
