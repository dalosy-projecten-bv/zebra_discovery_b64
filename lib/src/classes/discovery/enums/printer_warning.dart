enum PrinterWarning {
  none(
    segment: 0,
    bitfieldValue: 0,
    printWarningString: "None",
  ),
  headUnderTemp(
    segment: 2,
    bitfieldValue: 4096,
    printWarningString: "Head Cold",
  ),
  ribbonIn(
    segment: 2,
    bitfieldValue: 8192,
    printWarningString: "Ribbon In",
  ),
  batteryLow(
    segment: 2,
    bitfieldValue: 16384,
    printWarningString: "Battery Low",
  ),
  rfidError(
    segment: 2,
    bitfieldValue: 32768,
    printWarningString: "RFID Error",
  );

  const PrinterWarning({
    required this.segment,
    required this.bitfieldValue,
    required this.printWarningString,
  });

  final int segment;
  final int bitfieldValue;
  final String printWarningString;

  static List<PrinterWarning> fromInt(int segment, int value) {
    final printerWarnings = <PrinterWarning>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        printerWarnings.add(printError);
      }
    }
    return printerWarnings;
  }
}
