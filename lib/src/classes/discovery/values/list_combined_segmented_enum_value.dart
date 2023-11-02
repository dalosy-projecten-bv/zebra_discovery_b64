import 'package:zebra_discovery_b64/src/classes/discovery/enums/classes/segmented_enum_data.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/list_segmented_enum_value.dart';

class ListCombinedSegmentedEnumValue<T extends Enum> {
  ListCombinedSegmentedEnumValue(this.setOfSegmentedEnumValues)
      : values = [
          for (final sublist in setOfSegmentedEnumValues) ...sublist.value
        ];
  final List<ListSegmentedEnumValue<T>> setOfSegmentedEnumValues;
  final List<SegmentedEnumData<T>> values;
}
