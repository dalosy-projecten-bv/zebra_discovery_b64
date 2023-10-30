import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrinterMediaType {
  continuous(bitfieldValue: 0, enumAsString: "Continuous"),
  blackMark(bitfieldValue: 1, enumAsString: "Black Mark"),
  gap(bitfieldValue: 2, enumAsString: "Gap");

  const PrinterMediaType({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static PrinterMediaType fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => PrinterMediaType.gap,
    ));
  }
}
