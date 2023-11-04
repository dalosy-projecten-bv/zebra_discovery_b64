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
    super.fullByteArray,
    super.start,
    super.length,
    this.enumBase,
  );

  final EnumBase<T> enumBase;

  @override
  List<EnumData<T>> constructValue(Uint8List byteArray) =>
      enumBase.listFromByteArray(byteArray);

  Map<String, dynamic> toJson() => _$ListEnumValueToJson(this);
}
