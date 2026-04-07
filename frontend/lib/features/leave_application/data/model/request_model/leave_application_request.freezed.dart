// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_application_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveApplicationRequestModel {

 String get type; String get reason;@JsonKey(name: 'start_date') DateTime get startDate;@JsonKey(name: 'end_date') DateTime get endDate;
/// Create a copy of LeaveApplicationRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveApplicationRequestModelCopyWith<LeaveApplicationRequestModel> get copyWith => _$LeaveApplicationRequestModelCopyWithImpl<LeaveApplicationRequestModel>(this as LeaveApplicationRequestModel, _$identity);

  /// Serializes this LeaveApplicationRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveApplicationRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,reason,startDate,endDate);

@override
String toString() {
  return 'LeaveApplicationRequestModel(type: $type, reason: $reason, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $LeaveApplicationRequestModelCopyWith<$Res>  {
  factory $LeaveApplicationRequestModelCopyWith(LeaveApplicationRequestModel value, $Res Function(LeaveApplicationRequestModel) _then) = _$LeaveApplicationRequestModelCopyWithImpl;
@useResult
$Res call({
 String type, String reason,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate
});




}
/// @nodoc
class _$LeaveApplicationRequestModelCopyWithImpl<$Res>
    implements $LeaveApplicationRequestModelCopyWith<$Res> {
  _$LeaveApplicationRequestModelCopyWithImpl(this._self, this._then);

  final LeaveApplicationRequestModel _self;
  final $Res Function(LeaveApplicationRequestModel) _then;

/// Create a copy of LeaveApplicationRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? reason = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveApplicationRequestModel].
extension LeaveApplicationRequestModelPatterns on LeaveApplicationRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveApplicationRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveApplicationRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveApplicationRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel() when $default != null:
return $default(_that.type,_that.reason,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel():
return $default(_that.type,_that.reason,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate)?  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationRequestModel() when $default != null:
return $default(_that.type,_that.reason,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveApplicationRequestModel implements LeaveApplicationRequestModel {
  const _LeaveApplicationRequestModel({required this.type, required this.reason, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate});
  factory _LeaveApplicationRequestModel.fromJson(Map<String, dynamic> json) => _$LeaveApplicationRequestModelFromJson(json);

@override final  String type;
@override final  String reason;
@override@JsonKey(name: 'start_date') final  DateTime startDate;
@override@JsonKey(name: 'end_date') final  DateTime endDate;

/// Create a copy of LeaveApplicationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveApplicationRequestModelCopyWith<_LeaveApplicationRequestModel> get copyWith => __$LeaveApplicationRequestModelCopyWithImpl<_LeaveApplicationRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveApplicationRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveApplicationRequestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,reason,startDate,endDate);

@override
String toString() {
  return 'LeaveApplicationRequestModel(type: $type, reason: $reason, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$LeaveApplicationRequestModelCopyWith<$Res> implements $LeaveApplicationRequestModelCopyWith<$Res> {
  factory _$LeaveApplicationRequestModelCopyWith(_LeaveApplicationRequestModel value, $Res Function(_LeaveApplicationRequestModel) _then) = __$LeaveApplicationRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String type, String reason,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate
});




}
/// @nodoc
class __$LeaveApplicationRequestModelCopyWithImpl<$Res>
    implements _$LeaveApplicationRequestModelCopyWith<$Res> {
  __$LeaveApplicationRequestModelCopyWithImpl(this._self, this._then);

  final _LeaveApplicationRequestModel _self;
  final $Res Function(_LeaveApplicationRequestModel) _then;

/// Create a copy of LeaveApplicationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? reason = null,Object? startDate = null,Object? endDate = null,}) {
  return _then(_LeaveApplicationRequestModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
