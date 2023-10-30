import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum DiscoveredPrinterLanguageEnum {
  unknown(bitfieldValue: 0, enumAsString: "Unknown"),
  zpl(bitfieldValue: 1, enumAsString: "ZPL"),
  cpcl(bitfieldValue: 2, enumAsString: "CPCL"),
  epl(bitfieldValue: 4, enumAsString: "EPL");

  const DiscoveredPrinterLanguageEnum({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static DiscoveredPrinterLanguageEnum fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => DiscoveredPrinterLanguageEnum.unknown,
    ));
  }

  static List<DiscoveredPrinterLanguageEnum> listFromByteArray(
      Uint8List byteArray) {
    final value = parseInteger(byteArray);
    final list = <DiscoveredPrinterLanguageEnum>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
