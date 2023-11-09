import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/network_protocol.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_interface.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning.dart';

Function eq = const DeepCollectionEquality().equals;

const printableAscii = r' !"'
    r"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~";

// Inspiration taken from:
// https://github.com/flutter/flutter/issues/20907#issuecomment-557634184
String testResources(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/test_resources/$name').readAsStringSync();
}

bool uint8ListEquals(Uint8List list1, Uint8List list2) {
  if (list1.length != list2.length) {
    return false;
  }

  for (final (index, item) in list1.indexed) {
    if (item != list2[index]) {
      return false;
    }
  }
  return true;
}

void printAsByte(int value) {
  print(value.toRadixString(2).padLeft(8, '0'));
}

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
