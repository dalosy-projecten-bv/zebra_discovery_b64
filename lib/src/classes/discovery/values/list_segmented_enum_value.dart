import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_base.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/classes/value_base.dart';

class ListSegmentedEnumValue<T extends Enum>
    extends ValueBase<List<SegmentedEnumData<T>>> {
  ListSegmentedEnumValue(
    int segment,
    Uint8List byteArray,
    SegmentedEnumBase<T> enumBase,
  ) : super(
          byteArray,
          enumBase.listFromByteArray(segment, byteArray),
        );
}
