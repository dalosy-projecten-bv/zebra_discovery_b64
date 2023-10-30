import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum SecondaryPrinterLanguage {
  unknown(bitfieldValue: 0, enumAsString: "Unknown"),
  sgd(bitfieldValue: 1, enumAsString: "SGD"),
  snmp(bitfieldValue: 2, enumAsString: "SNMP");

  const SecondaryPrinterLanguage({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static SecondaryPrinterLanguage fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => SecondaryPrinterLanguage.unknown,
    ));
  }

  static List<SecondaryPrinterLanguage> listFromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    final list = <SecondaryPrinterLanguage>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
