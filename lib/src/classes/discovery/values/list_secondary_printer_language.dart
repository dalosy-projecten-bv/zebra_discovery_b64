import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/secondary_printer_language_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class ListSecondaryPrinterLanguage extends ValueBase<List<Value<EnumValues>>> {
  ListSecondaryPrinterLanguage(super.byteArray, super.value);

  factory ListSecondaryPrinterLanguage.fromByteArray(Uint8List byteArray) {
    return ListSecondaryPrinterLanguage(
      byteArray,
      secondaryPrinterLanguageEnum.listFromByteArray(byteArray),
    );
  }
}
