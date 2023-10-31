import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class Values<ENUM extends Enum, T extends Value<ENUM>> {
  Values({
    required this.values,
    required this.defaultValue,
  });

  final Set<T> values;
  final ENUM defaultValue;

  T fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => values.firstWhere((element) => element.id == defaultValue),
    ));
  }

  List<T> listFromByteArray(
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <T>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
