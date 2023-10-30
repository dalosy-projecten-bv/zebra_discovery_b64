import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrintMethod {
  directThermal(bitfieldValue: 0, enumAsString: "Direct Thermal"),
  thermalTransfer(bitfieldValue: 1, enumAsString: "Thermal Transfer");

  const PrintMethod({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static PrintMethod fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => PrintMethod.directThermal,
    ));
  }
}
