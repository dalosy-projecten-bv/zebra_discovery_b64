import 'package:json_annotation/json_annotation.dart';
import 'package:zebra_discovery_b64/src/classes/json/serializable.dart';

class GenericConverter<T> implements JsonConverter<T, Object> {
  const GenericConverter();

  @override
  T fromJson(Object json) {
    throw UnimplementedError();
  }

  @override
  Object toJson(T object) {
    if (object is Serializable) {
      return object.toJson();
    }

    if (object is List) {
      if (object.isEmpty) return [];

      if (object.first is Serializable) {
        return object.map((t) => t.toJson()).toList();
      }
    }

    throw ArgumentError.value(
      object,
      'Cannot serialize to JSON',
      'OperationResult._toJson this object or List either is not Serializable or is unrecognized.',
    );
  }
}
