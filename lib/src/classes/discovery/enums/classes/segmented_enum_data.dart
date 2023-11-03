import 'package:zebra_discovery_b64/src/classes/json/generic_converter.dart';
import 'package:zebra_discovery_b64/src/classes/json/my_json_serializable.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'segmented_enum_data.g.dart';

@MyJsonSerializable()
class SegmentedEnumData<T extends Enum> implements Serializable {
  SegmentedEnumData(
    this.enumeration,
    this.segment,
    this.bitfieldValue,
    this.enumAsString,
  );

  final T enumeration;
  final int segment;
  final int bitfieldValue;
  final String enumAsString;

  @override
  Map<String, dynamic> toJson() => _$SegmentedEnumDataToJson(this);
}
