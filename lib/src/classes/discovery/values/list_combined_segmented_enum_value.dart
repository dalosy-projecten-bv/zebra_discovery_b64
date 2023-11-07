import 'package:collection/collection.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';

part 'list_combined_segmented_enum_value.g.dart';

///This returns a list of enum values, similar as ListEnumValue.
///Each enum where the corresponding bit is 1, indicated by the bitfieldvalue,
///and if it is in the same segment, is added to the list.
///If no enum is found, an empty list is returned.
@MyJsonSerializable()
class ListCombinedSegmentedEnumValue<T extends Enum> {
  ListCombinedSegmentedEnumValue(this.segmentedEnumValues) {
    error = segmentedEnumValues.firstWhereOrNull((e) => e.error) == null
        ? false
        : true;
    if (error) {
      values = null;
      return;
    }
    values = [for (final sublist in segmentedEnumValues) ...?sublist.value];
  }

  final List<ListSegmentedEnumValue<T>> segmentedEnumValues;
  late final List<SegmentedEnumData<T>>? values;
  late final bool error;

  Map<String, dynamic> toJson() => _$ListCombinedSegmentedEnumValueToJson(this);
}
