import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value_with_segment.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_warning_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ListPrinterWarning extends ValueBase<List<ValueWithSegment<EnumValues>>> {
  ListPrinterWarning(super.byteArray, super.value);

  factory ListPrinterWarning.fromByteArray(int segment, Uint8List byteArray) {
    return ListPrinterWarning(
      byteArray,
      printerWarningEnum.listFromByteArray(segment, byteArray),
    );
  }
}
