import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/response.model.freezed.dart';
part 'generated/response.model.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class ResponseModel<T> with _$ResponseModel<T> {
  const factory ResponseModel({
    List<T>? data,
    required int total,
    required int skip,
    required int limit,
  }) = _ResponseModel<T>;

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$ResponseModelFromJson(json, fromJsonT);

  factory ResponseModel.fromCustomJson(
    Map<String, dynamic> json,
    String dataKey,
    T Function(Object?) fromJsonT,
  ) {
    return ResponseModel(
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
      data: (json[dataKey] as List<dynamic>?)?.map(fromJsonT).toList(),
    );
  }
}
