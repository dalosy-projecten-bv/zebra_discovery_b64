// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'segmented_enum_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SegmentedEnumDataToJson<T extends Enum>(
        SegmentedEnumData<T> instance) =>
    <String, dynamic>{
      'enumeration': GenericConverter<T>().toJson(instance.enumeration),
      'segment': instance.segment,
      'bitfieldValue': instance.bitfieldValue,
      'enumAsString': instance.enumAsString,
    };
