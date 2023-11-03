import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';

part 'list_combined_segmented_enum_value.g.dart';

@JsonSerializable(createFactory: false)
class ListCombinedSegmentedEnumValue<T extends Enum> {
  ListCombinedSegmentedEnumValue(this.segmentedEnumValues)
      : values = [for (final sublist in segmentedEnumValues) ...sublist.value];
  final List<ListSegmentedEnumValue<T>> segmentedEnumValues;
  final List<SegmentedEnumData<T>> values;

  Map<String, dynamic> toJson() => _$ListCombinedSegmentedEnumValueToJson(this);
}
