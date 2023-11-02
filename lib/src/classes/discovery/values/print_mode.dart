import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/print_mode_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class PrintMode extends ValueBase<EnumData<EnumValues>> {
  PrintMode(super.byteArray, super.value);

  factory PrintMode.fromByteArray(Uint8List byteArray) {
    return PrintMode(
      byteArray,
      printModeEnum.fromByteArray(byteArray),
    );
  }
}
