// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'enum_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$EnumBaseToJson<T extends Enum>(EnumBase<T> instance) =>
    <String, dynamic>{
      'defaultEnum': GenericConverter<T>().toJson(instance.defaultEnum),
      'values': instance.values.map((e) => e.toJson()).toList(),
    };
