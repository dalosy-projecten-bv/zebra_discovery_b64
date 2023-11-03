import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'list_enum_value.g.dart';

@MyJsonSerializable()
class ListEnumValue<T extends Enum> extends ValueBase<List<EnumData<T>>> {
  ListEnumValue(
    Uint8List byteArray,
    int start,
    int length,
    EnumBase<T> enumBase,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: enumBase.listFromByteArray(byteArray.sublist(
            start,
            start + length,
          )),
        );

  Map<String, dynamic> toJson() => _$ListEnumValueToJson(this);
}
