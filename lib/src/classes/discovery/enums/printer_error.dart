import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/helpers.dart';

enum PrinterError {
  none(
    segment: 0,
    bitfieldValue: 0,
    enumAsString: "None",
  ),
  mediaOut(
    segment: 2,
    bitfieldValue: 1,
    enumAsString: "Paper Out",
  ),
  ribbonOut(
    segment: 2,
    bitfieldValue: 2,
    enumAsString: "Ribbon Out",
  ),
  headOpen(
    segment: 2,
    bitfieldValue: 4,
    enumAsString: "Head Open",
  ),
  printheadShutdown(
    segment: 2,
    bitfieldValue: 16,
    enumAsString: "Printhead Shutdown",
  ),
  motorOvertemp(
    segment: 2,
    bitfieldValue: 32,
    enumAsString: "Motor Overtemp",
  ),
  invalidHead(
    segment: 2,
    bitfieldValue: 128,
    enumAsString: "Invalid Head",
  ),
  thermistorFault(
    segment: 2,
    bitfieldValue: 512,
    enumAsString: "Thermistor Fault",
  ),
  paperFeedError(
    segment: 2,
    bitfieldValue: 16384,
    enumAsString: "Paper Feed",
  ),
  paused(
    segment: 2,
    bitfieldValue: 65536,
    enumAsString: "Paused",
  ),
  basicRuntimeError(
      segment: 2, bitfieldValue: 1048576, enumAsString: "Basic Runtime Error"),
  basicForced(
    segment: 2,
    bitfieldValue: 2097152,
    enumAsString: "Basic Forced",
  );

  const PrinterError({
    required this.segment,
    required this.bitfieldValue,
    required this.enumAsString,
  });

  final int segment;
  final int bitfieldValue;
  final String enumAsString;

  static List<PrinterError> listFromByteArray(
    int segment,
    Uint8List byteArray,
  ) {
    final value = parseInteger(byteArray);
    final list = <PrinterError>[];
    for (final printError in values) {
      if (printError.segment == segment &&
          (value & printError.bitfieldValue) != 0) {
        list.add(printError);
      }
    }
    return list;
  }
}
