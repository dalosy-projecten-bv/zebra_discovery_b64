import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';

void printAsBinary32(int value) {
  print(value.toRadixString(2).padLeft(32, '0'));
}

String getErrors({
  required Uint8List errorsSegment0,
  required Uint8List errorsSegment1,
  required Uint8List errorsSegment2,
}) {
  final errors = printerErrorEnum.listFromByteArray(0, errorsSegment0);
  errors.addAll(printerErrorEnum.listFromByteArray(1, errorsSegment1));
  errors.addAll(printerErrorEnum.listFromByteArray(2, errorsSegment2));
  return errors.map((e) => e.enumAsString).join(',');
}

String getWarnings({
  required Uint8List warningsSegment0,
  required Uint8List warningsSegment1,
  required Uint8List warningsSegment2,
}) {
  final warnings = printerWarningEnum.listFromByteArray(0, warningsSegment0);
  warnings.addAll(printerWarningEnum.listFromByteArray(1, warningsSegment1));
  warnings.addAll(printerWarningEnum.listFromByteArray(2, warningsSegment2));
  return warnings.map((e) => e.enumAsString).join(',');
}

String getNetworkInterfaces(Uint8List byteArray) {
  final interfaces = printerInterfaceEnum.listFromByteArray(byteArray);
  return interfaces.map((e) => e.enumAsString).join(',');
}

String getNetworkProtocols(Uint8List byteArray) {
  final values = networkProtocolEnum.listFromByteArray(byteArray);
  return values.map((e) => e.enumAsString).join(',');
}

extension StringExtension on String {
  String removeSpaces() {
    return replaceAll(' ', '');
  }
}
