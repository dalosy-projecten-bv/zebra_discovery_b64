import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

part 'list_segmented_enum_value.g.dart';

@JsonSerializable(createFactory: false)
class ListSegmentedEnumValue<T extends Enum>
    extends ValueBase<List<SegmentedEnumData<T>>> {
  ListSegmentedEnumValue(
    int segment,
    Uint8List byteArray,
    int start,
    int length,
    SegmentedEnumBase<T> enumBase,
  ) : super(
          byteArray: byteArray,
          start: start,
          length: length,
          value: enumBase.listFromByteArray(
            segment,
            byteArray.sublist(start, start + length),
          ),
        );

  Map<String, dynamic> toJson() => _$ListSegmentedEnumValueToJson(this);
}
