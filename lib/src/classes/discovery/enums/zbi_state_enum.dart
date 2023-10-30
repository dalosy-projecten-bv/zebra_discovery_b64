import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum ZbiStateEnum {
  disabled(bitfieldValue: 0, enumAsString: "Disabled"),
  stopped(bitfieldValue: 1, enumAsString: "Stopped"),
  running(bitfieldValue: 2, enumAsString: "Running");

  const ZbiStateEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static ZbiStateEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => ZbiStateEnum.stopped,
    ));
  }
}
