import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/json/generic_converter.dart';
import 'package:zebra_discovery_b64/src/classes/json/uint8_list_json_converter.dart';

class MyJsonSerializable extends JsonSerializable {
  const MyJsonSerializable({
    super.createFactory = false,
    super.explicitToJson = true,
    // coverage:ignore-start
  }) : super(converters: const [
          // coverage:ignore-end
          GenericConverter(),
          Uint8ListConverter(),
        ]);
}
