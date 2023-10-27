enum PrinterInterface {
  unknown(bitfieldValue: 0, stringValue: "Unknown"),
  internalWired(bitfieldValue: 1, stringValue: "Internal Wired"),
  externalWired(bitfieldValue: 2, stringValue: "External Wired"),
  wireless(bitfieldValue: 4, stringValue: "Wireless"),
  bluetooth(bitfieldValue: 8, stringValue: "Bluetooth"),
  parallel(bitfieldValue: 16, stringValue: "Parallel"),
  serial(bitfieldValue: 32, stringValue: "Serial"),
  usb(bitfieldValue: 64, stringValue: "USB"),
  sdCard(bitfieldValue: 128, stringValue: "SD Card"),
  battery(bitfieldValue: 256, stringValue: "Battery");

  const PrinterInterface({
    required this.bitfieldValue,
    required this.stringValue,
  });

  final int bitfieldValue;
  final String stringValue;

  static List<PrinterInterface> fromInt(int value) {
    final printerErrors = <PrinterInterface>[];
    for (final printError in values) {
      if ((value & printError.bitfieldValue) != 0) {
        printerErrors.add(printError);
      }
    }
    return printerErrors;
  }
}
