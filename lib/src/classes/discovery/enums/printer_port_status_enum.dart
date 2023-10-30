import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrinterPortStatusEnum {
  none(bitfieldValue: 0, enumAsString: "None"),
  online(bitfieldValue: 1, enumAsString: "Online"),
  offline(bitfieldValue: 2, enumAsString: "Offline"),
  tonerLow(bitfieldValue: 3, enumAsString: "Toner Low"),
  paperOut(bitfieldValue: 4, enumAsString: "Paper Out"),
  paperJammed(bitfieldValue: 5, enumAsString: "Paper Jammed"),
  doorOpen(bitfieldValue: 6, enumAsString: "Door Open"),
  printerError(bitfieldValue: 7, enumAsString: "Printer Error"),
  unknown(bitfieldValue: 8, enumAsString: "Unknown");

  const PrinterPortStatusEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static PrinterPortStatusEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => PrinterPortStatusEnum.unknown,
    ));
  }
}
