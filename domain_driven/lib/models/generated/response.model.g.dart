// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../response.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseModel<T> _$ResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ResponseModel<T>(
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
  total: (json['total'] as num).toInt(),
  skip: (json['skip'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$ResponseModelToJson<T>(
  _ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data?.map(toJsonT).toList(),
  'total': instance.total,
  'skip': instance.skip,
  'limit': instance.limit,
};
