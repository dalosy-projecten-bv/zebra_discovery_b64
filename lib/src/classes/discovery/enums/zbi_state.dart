import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum ZbiState {
  disabled(bitfieldValue: 0, enumAsString: "Disabled"),
  stopped(bitfieldValue: 1, enumAsString: "Stopped"),
  running(bitfieldValue: 2, enumAsString: "Running");

  const ZbiState({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static ZbiState fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => ZbiState.stopped,
    ));
  }
}
