// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'enum_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$EnumValueToJson<T extends Enum>(EnumValue<T> instance) =>
    <String, dynamic>{
      'byteArray': const Uint8ListConverter().toJson(instance.byteArray),
      'start': instance.start,
      'length': instance.length,
      'value': instance.value?.toJson(),
      'error': instance.error,
      'enumBase': instance.enumBase.toJson(),
    };
