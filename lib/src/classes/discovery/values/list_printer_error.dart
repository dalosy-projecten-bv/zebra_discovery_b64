import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_error_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ListPrinterError extends ValueBase<List<SegmentedEnumData<EnumValues>>> {
  ListPrinterError(super.byteArray, super.value);

  factory ListPrinterError.fromByteArray(int segment, Uint8List byteArray) {
    return ListPrinterError(
      byteArray,
      printerErrorEnum.listFromByteArray(segment, byteArray),
    );
  }
}
