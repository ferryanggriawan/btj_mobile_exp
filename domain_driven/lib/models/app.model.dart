import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/app.model.freezed.dart';
part 'generated/app.model.g.dart';

@freezed
abstract class AppModel with _$AppModel {
  const factory AppModel({required String id, required String name}) =
      _AppModel;

  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}
