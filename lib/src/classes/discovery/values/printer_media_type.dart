import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/printer_media_type_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class PrinterMediaType extends ValueBase<Value<EnumValues>> {
  PrinterMediaType(super.byteArray, super.value);

  factory PrinterMediaType.fromByteArray(Uint8List byteArray) {
    return PrinterMediaType(
      byteArray,
      printerMediaTypeEnum.fromByteArray(byteArray),
    );
  }
}
