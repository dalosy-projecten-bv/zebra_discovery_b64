import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'enum_value.g.dart';

@MyJsonSerializable()
class EnumValue<T extends Enum> extends ValueBase<EnumData<T>> {
  EnumValue(
    super.fullByteArray,
    super.start,
    super.length,
    this.enumBase,
  );

  final EnumBase<T> enumBase;

  @override
  EnumData<T> constructValue(Uint8List byteArray) =>
      enumBase.fromByteArray(byteArray);

  Map<String, dynamic> toJson() => _$EnumValueToJson(this);
}
