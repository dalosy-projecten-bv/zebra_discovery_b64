import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

class GenericConverter<T> implements JsonConverter<T, Object> {
  const GenericConverter();

  // coverage:ignore-start
  @override
  T fromJson(Object json) {
    throw UnimplementedError();
  }

  // coverage:ignore-end

  @override
  Object toJson(T object) {
    if (object is Serializable) {
      return object.toJson();
    }

    // coverage:ignore-start
    throw ArgumentError.value(
      object,
      'Cannot serialize to JSON',
      'OperationResult._toJson this object or List either is not Serializable or is unrecognized.',
    );
    // coverage:ignore-end
  }
}
