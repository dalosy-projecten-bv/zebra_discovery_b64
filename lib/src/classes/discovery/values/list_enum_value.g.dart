// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'list_enum_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ListEnumValueToJson<T extends Enum>(
        ListEnumValue<T> instance) =>
    <String, dynamic>{
      'byteArray': const Uint8ListConverter().toJson(instance.byteArray),
      'start': instance.start,
      'length': instance.length,
      'value': instance.value?.map((e) => e.toJson()).toList(),
      'error': instance.error,
      'enumBase': instance.enumBase.toJson(),
    };
