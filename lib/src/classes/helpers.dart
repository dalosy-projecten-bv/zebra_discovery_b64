import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';

class BytesSplitter {
  BytesSplitter(this._byteArray);

  final Uint8List _byteArray;
  var _index = 0;

  Uint8List getNextBytes(int length) {
    final subList = _byteArray.sublist(_index, _index + length);
    _index += length;
    return subList;
  }
}

String convertByteToString(Uint8List byteArray) {
  assert(byteArray.length == 1);
  return byteArray[0].toString();
}

String convertByteArrayToString(Uint8List byteArray) {
  return String.fromCharCodes(
    byteArray.takeWhile((value) => value != 0),
  );
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
  final errorsSegment0AsInt = parseInteger(errorsSegment0);
  final errorsSegment1AsInt = parseInteger(errorsSegment1);
  final errorsSegment2AsInt = parseInteger(errorsSegment2);
  final errors = PrinterError.fromInt(0, errorsSegment0AsInt);
  errors.addAll(PrinterError.fromInt(1, errorsSegment1AsInt));
  errors.addAll(PrinterError.fromInt(2, errorsSegment2AsInt));
  return errors.map((e) => e.printErrorString).join(',');
}

String getWarnings({
  required Uint8List warningsSegment0,
  required Uint8List warningsSegment1,
  required Uint8List warningsSegment2,
}) {
  final warningsSegment0AsInt = parseInteger(warningsSegment0);
  final warningsSegment1AsInt = parseInteger(warningsSegment1);
  final warningsSegment2AsInt = parseInteger(warningsSegment2);
  final errors = PrinterWarning.fromInt(0, warningsSegment0AsInt);
  errors.addAll(PrinterWarning.fromInt(1, warningsSegment1AsInt));
  errors.addAll(PrinterWarning.fromInt(2, warningsSegment2AsInt));
  return errors.map((e) => e.printWarningString).join(',');
}

String getActiveNetworkInterface(Uint8List byteArray) {
  final interfacesAsInt = parseInteger(byteArray);
  final interfaces = PrinterInterface.fromInt(interfacesAsInt);
  return interfaces.map((e) => e.stringValue).join(',');
}

extension StringExtension on String {
  String removeSpaces() {
    return replaceAll(' ', '');
  }
}
