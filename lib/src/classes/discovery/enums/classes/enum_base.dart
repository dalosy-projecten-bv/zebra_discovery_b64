import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class EnumBase<T extends Enum> {
  EnumBase({
    required this.defaultEnum,
    required this.values,
  });

  final T defaultEnum;
  final List<EnumData<T>> values;

  EnumData<T> fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () =>
          values.firstWhere((element) => element.enumeration == defaultEnum),
    ));
  }

  List<EnumData<T>> listFromByteArray(
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <EnumData<T>>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
