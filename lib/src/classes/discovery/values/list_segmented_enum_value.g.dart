// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'list_segmented_enum_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ListSegmentedEnumValueToJson<T extends Enum>(
        ListSegmentedEnumValue<T> instance) =>
    <String, dynamic>{
      'byteArray': const Uint8ListConverter().toJson(instance.byteArray),
      'start': instance.start,
      'length': instance.length,
      'value': instance.value?.map((e) => e.toJson()).toList(),
      'error': instance.error,
      'enumBase': instance.enumBase.toJson(),
      'segment': instance.segment,
    };
