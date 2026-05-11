// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel<T> {

 List<T>? get data; int get total; int get skip; int get limit;
/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseModelCopyWith<T, ResponseModel<T>> get copyWith => _$ResponseModelCopyWithImpl<T, ResponseModel<T>>(this as ResponseModel<T>, _$identity);

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseModel<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),total,skip,limit);

@override
String toString() {
  return 'ResponseModel<$T>(data: $data, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<T,$Res>  {
  factory $ResponseModelCopyWith(ResponseModel<T> value, $Res Function(ResponseModel<T>) _then) = _$ResponseModelCopyWithImpl;
@useResult
$Res call({
 List<T>? data, int total, int skip, int limit
});




}
/// @nodoc
class _$ResponseModelCopyWithImpl<T,$Res>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel<T> _self;
  final $Res Function(ResponseModel<T>) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ResponseModel].
extension ResponseModelPatterns<T> on ResponseModel<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResponseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResponseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _ResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResponseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T>? data,  int total,  int skip,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.data,_that.total,_that.skip,_that.limit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T>? data,  int total,  int skip,  int limit)  $default,) {final _that = this;
switch (_that) {
case _ResponseModel():
return $default(_that.data,_that.total,_that.skip,_that.limit);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T>? data,  int total,  int skip,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _ResponseModel() when $default != null:
return $default(_that.data,_that.total,_that.skip,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ResponseModel<T> implements ResponseModel<T> {
  const _ResponseModel({final  List<T>? data, required this.total, required this.skip, required this.limit}): _data = data;
  factory _ResponseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ResponseModelFromJson(json,fromJsonT);

 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int total;
@override final  int skip;
@override final  int limit;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseModelCopyWith<T, _ResponseModel<T>> get copyWith => __$ResponseModelCopyWithImpl<T, _ResponseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ResponseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseModel<T>&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.total, total) || other.total == total)&&(identical(other.skip, skip) || other.skip == skip)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),total,skip,limit);

@override
String toString() {
  return 'ResponseModel<$T>(data: $data, total: $total, skip: $skip, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ResponseModelCopyWith<T,$Res> implements $ResponseModelCopyWith<T, $Res> {
  factory _$ResponseModelCopyWith(_ResponseModel<T> value, $Res Function(_ResponseModel<T>) _then) = __$ResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<T>? data, int total, int skip, int limit
});




}
/// @nodoc
class __$ResponseModelCopyWithImpl<T,$Res>
    implements _$ResponseModelCopyWith<T, $Res> {
  __$ResponseModelCopyWithImpl(this._self, this._then);

  final _ResponseModel<T> _self;
  final $Res Function(_ResponseModel<T>) _then;

/// Create a copy of ResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? total = null,Object? skip = null,Object? limit = null,}) {
  return _then(_ResponseModel<T>(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,skip: null == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
