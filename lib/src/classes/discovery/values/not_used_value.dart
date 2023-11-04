import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

part 'not_used_value.g.dart';

@MyJsonSerializable()
class NotUsedValue extends ValueBase<Object?> {
  NotUsedValue(
    super.fullByteArray,
    super.start,
    super.length,
  );

  @override
  Object? constructValue(Uint8List byteArray) => null;

  Map<String, dynamic> toJson() => _$NotUsedValueToJson(this);
}
