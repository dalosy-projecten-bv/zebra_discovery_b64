import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrinterWarning {
  none(
    segment: 0,
    bitfieldValue: 0,
    enumAsString: "None",
  ),
  headUnderTemp(
    segment: 2,
    bitfieldValue: 4096,
    enumAsString: "Head Cold",
  ),
  ribbonIn(
    segment: 2,
    bitfieldValue: 8192,
    enumAsString: "Ribbon In",
  ),
  batteryLow(
    segment: 2,
    bitfieldValue: 16384,
    enumAsString: "Battery Low",
  ),
  rfidError(
    segment: 2,
    bitfieldValue: 32768,
    enumAsString: "RFID Error",
  );

  const PrinterWarning({
    required this.segment,
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int segment;
  final int bitfieldValue;
  final String enumAsString;

  static List<PrinterWarning> listFromByteArray(
    int segment,
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <PrinterWarning>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
