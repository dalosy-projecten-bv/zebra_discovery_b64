enum PrinterError {
  none(
    segment: 0,
    bitfieldValue: 0,
    printErrorString: "None",
  ),
  mediaOut(
    segment: 2,
    bitfieldValue: 1,
    printErrorString: "Paper Out",
  ),
  ribbonOut(
    segment: 2,
    bitfieldValue: 2,
    printErrorString: "Ribbon Out",
  ),
  headOpen(
    segment: 2,
    bitfieldValue: 4,
    printErrorString: "Head Open",
  ),
  printheadShutdown(
    segment: 2,
    bitfieldValue: 16,
    printErrorString: "Printhead Shutdown",
  ),
  motorOvertemp(
    segment: 2,
    bitfieldValue: 32,
    printErrorString: "Motor Overtemp",
  ),
  invalidHead(
    segment: 2,
    bitfieldValue: 128,
    printErrorString: "Invalid Head",
  ),
  thermistorFault(
    segment: 2,
    bitfieldValue: 512,
    printErrorString: "Thermistor Fault",
  ),
  paperFeedError(
    segment: 2,
    bitfieldValue: 16384,
    printErrorString: "Paper Feed",
  ),
  paused(
    segment: 2,
    bitfieldValue: 65536,
    printErrorString: "Paused",
  ),
  basicRuntimeError(
      segment: 2,
      bitfieldValue: 1048576,
      printErrorString: "Basic Runtime Error"),
  basicForced(
    segment: 2,
    bitfieldValue: 2097152,
    printErrorString: "Basic Forced",
  );

  const PrinterError({
    required this.segment,
    required this.bitfieldValue,
    required this.printErrorString,
  });

  final int segment;
  final int bitfieldValue;
  final String printErrorString;

  static List<PrinterError> fromInt(int segment, int value) {
    final printerErrors = <PrinterError>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        printerErrors.add(printError);
      }
    }
    return printerErrors;
  }
}
