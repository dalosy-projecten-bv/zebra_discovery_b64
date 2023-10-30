import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrintMode {
  rewind(bitfieldValue: 0, enumAsString: "Rewind"),
  tearOff(bitfieldValue: 1, enumAsString: "Tear Off"),
  peelOff(bitfieldValue: 2, enumAsString: "Peel Off"),
  pace(bitfieldValue: 3, enumAsString: "Pace"),
  cutter(bitfieldValue: 4, enumAsString: "Cutter"),
  delayedCut(bitfieldValue: 5, enumAsString: "Delayed Cuts"),
  applicator(bitfieldValue: 6, enumAsString: "Applicator"),
  linerlessPeel(bitfieldValue: 7, enumAsString: "Linerless Peel"),
  linerlessRewind(bitfieldValue: 8, enumAsString: "Linerless Rewind"),
  partialCutter(bitfieldValue: 9, enumAsString: "Partial Cutter"),
  rfid(bitfieldValue: 10, enumAsString: "RFID"),
  linerlessTear(bitfieldValue: 11, enumAsString: "Linerless Tear");

  const PrintMode({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static PrintMode fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => PrintMode.rewind,
    ));
  }
}
