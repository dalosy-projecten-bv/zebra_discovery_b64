import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrinterInterface {
  unknown(bitfieldValue: 0, enumAsString: "Unknown"),
  internalWired(bitfieldValue: 1, enumAsString: "Internal Wired"),
  externalWired(bitfieldValue: 2, enumAsString: "External Wired"),
  wireless(bitfieldValue: 4, enumAsString: "Wireless"),
  bluetooth(bitfieldValue: 8, enumAsString: "Bluetooth"),
  parallel(bitfieldValue: 16, enumAsString: "Parallel"),
  serial(bitfieldValue: 32, enumAsString: "Serial"),
  usb(bitfieldValue: 64, enumAsString: "USB"),
  sdCard(bitfieldValue: 128, enumAsString: "SD Card"),
  battery(bitfieldValue: 256, enumAsString: "Battery");

  const PrinterInterface({
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int bitfieldValue;
  final String enumAsString;

  static PrinterInterface fromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    return (values.firstWhere(
      (element) => element.bitfieldValue == value,
      orElse: () => PrinterInterface.unknown,
    ));
  }

  static List<PrinterInterface> listFromByteArray(Uint8List byteArray) {
    final value = parseInteger(byteArray);
    final list = <PrinterInterface>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
