import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum SecondaryPrinterLanguageEnum {
  unknown(bitfieldValue: 0, enumAsString: "Unknown"),
  sgd(bitfieldValue: 1, enumAsString: "SGD"),
  snmp(bitfieldValue: 2, enumAsString: "SNMP");

  const SecondaryPrinterLanguageEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static SecondaryPrinterLanguageEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => SecondaryPrinterLanguageEnum.unknown,
    ));
  }

  static List<SecondaryPrinterLanguageEnum> listFromByteArray(
      Uint8List byteArray) {
    final value = parseInteger(byteArray);
    final list = <SecondaryPrinterLanguageEnum>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
