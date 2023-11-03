import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/json/generic_converter.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

part 'enum_data.g.dart';

@JsonSerializable(
    createFactory: false,
    explicitToJson: true,
    converters: [GenericConverter()])
class EnumData<T extends Enum> implements Serializable {
  const EnumData(
    this.enumeration,
    this.bitfieldValue,
    this.enumAsString,
  );

  final T enumeration;
  final int bitfieldValue;
  final String enumAsString;

  @override
  Map<String, dynamic> toJson() => _$EnumDataToJson(this);
}
