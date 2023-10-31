import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning_enum.dart';

class BytesSplitter {
  BytesSplitter(this._byteArray);

  final Uint8List _byteArray;
  var _index = 0;

  Uint8List next(int length) {
    final subList = _byteArray.sublist(_index, _index + length);
    _index += length;
    return subList;
  }
}

bool parseBoolean(Uint8List byteArray) {
  byteArray.firstWhere((byte) => byte == 1);
  return false;
}

int parseInteger(Uint8List byteArray) {
  var result = 0;
  byteArray.reversed.forEachIndexed(
    (index, byte) {
      result = result | (byte << (index * 8));
    },
  );
  return result;
}

void printAsBinary32(int value) {
  print(value.toRadixString(2).padLeft(32, '0'));
}

String getErrors({
  required Uint8List errorsSegment0,
  required Uint8List errorsSegment1,
  required Uint8List errorsSegment2,
}) {
  final errors = PrinterErrorEnum.listFromByteArray(0, errorsSegment0);
  errors.addAll(PrinterErrorEnum.listFromByteArray(1, errorsSegment1));
  errors.addAll(PrinterErrorEnum.listFromByteArray(2, errorsSegment2));
  return errors.map((e) => e.enumAsString).join(',');
}

String getWarnings({
  required Uint8List warningsSegment0,
  required Uint8List warningsSegment1,
  required Uint8List warningsSegment2,
}) {
  final errors = PrinterWarningEnum.listFromByteArray(0, warningsSegment0);
  errors.addAll(PrinterWarningEnum.listFromByteArray(1, warningsSegment1));
  errors.addAll(PrinterWarningEnum.listFromByteArray(2, warningsSegment2));
  return errors.map((e) => e.enumAsString).join(',');
}

String getNetworkInterfaces(Uint8List byteArray) {
  final interfaces = PrinterInterfaceEnum.listFromByteArray(byteArray);
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
