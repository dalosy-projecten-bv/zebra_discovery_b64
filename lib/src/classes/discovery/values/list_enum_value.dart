import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ListEnumValue<T extends Enum> extends ValueBase<List<EnumData<T>>> {
  ListEnumValue({
    required super.byteArray,
    required super.value,
  });

  factory ListEnumValue.fromByteArray(
    EnumBase<T> enumBase,
    Uint8List byteArray,
  ) {
    return ListEnumValue(
      byteArray: byteArray,
      value: enumBase.listFromByteArray(byteArray),
    );
  }
}
