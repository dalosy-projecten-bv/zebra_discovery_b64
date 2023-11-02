import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class EnumValue<T extends Enum> extends ValueBase<EnumData<T>> {
  EnumValue({
    required super.byteArray,
    required super.value,
  });

  factory EnumValue.fromByteArray(EnumBase<T> enumBase, Uint8List byteArray) {
    return EnumValue(
      byteArray: byteArray,
      value: enumBase.fromByteArray(byteArray),
    );
  }
}
