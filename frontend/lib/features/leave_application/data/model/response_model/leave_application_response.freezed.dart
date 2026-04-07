// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_application_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveApplicationResponse {

 String get id;@JsonKey(name: 'user_id') String get userId; String get type; String get reason;@JsonKey(name: 'start_date') DateTime get startDate;@JsonKey(name: 'end_date') DateTime get endDate; bool get status;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of LeaveApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveApplicationResponseCopyWith<LeaveApplicationResponse> get copyWith => _$LeaveApplicationResponseCopyWithImpl<LeaveApplicationResponse>(this as LeaveApplicationResponse, _$identity);

  /// Serializes this LeaveApplicationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveApplicationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,reason,startDate,endDate,status,createdAt);

@override
String toString() {
  return 'LeaveApplicationResponse(id: $id, userId: $userId, type: $type, reason: $reason, startDate: $startDate, endDate: $endDate, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LeaveApplicationResponseCopyWith<$Res>  {
  factory $LeaveApplicationResponseCopyWith(LeaveApplicationResponse value, $Res Function(LeaveApplicationResponse) _then) = _$LeaveApplicationResponseCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, String type, String reason,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate, bool status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$LeaveApplicationResponseCopyWithImpl<$Res>
    implements $LeaveApplicationResponseCopyWith<$Res> {
  _$LeaveApplicationResponseCopyWithImpl(this._self, this._then);

  final LeaveApplicationResponse _self;
  final $Res Function(LeaveApplicationResponse) _then;

/// Create a copy of LeaveApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? reason = null,Object? startDate = null,Object? endDate = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveApplicationResponse].
extension LeaveApplicationResponsePatterns on LeaveApplicationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveApplicationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveApplicationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveApplicationResponse value)  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveApplicationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  bool status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveApplicationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.reason,_that.startDate,_that.endDate,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId,  String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  bool status, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationResponse():
return $default(_that.id,_that.userId,_that.type,_that.reason,_that.startDate,_that.endDate,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'user_id')  String userId,  String type,  String reason, @JsonKey(name: 'start_date')  DateTime startDate, @JsonKey(name: 'end_date')  DateTime endDate,  bool status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.reason,_that.startDate,_that.endDate,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveApplicationResponse implements LeaveApplicationResponse {
  const _LeaveApplicationResponse({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.type, required this.reason, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate, required this.status, @JsonKey(name: 'created_at') required this.createdAt});
  factory _LeaveApplicationResponse.fromJson(Map<String, dynamic> json) => _$LeaveApplicationResponseFromJson(json);

@override final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override final  String type;
@override final  String reason;
@override@JsonKey(name: 'start_date') final  DateTime startDate;
@override@JsonKey(name: 'end_date') final  DateTime endDate;
@override final  bool status;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of LeaveApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveApplicationResponseCopyWith<_LeaveApplicationResponse> get copyWith => __$LeaveApplicationResponseCopyWithImpl<_LeaveApplicationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveApplicationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveApplicationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,reason,startDate,endDate,status,createdAt);

@override
String toString() {
  return 'LeaveApplicationResponse(id: $id, userId: $userId, type: $type, reason: $reason, startDate: $startDate, endDate: $endDate, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LeaveApplicationResponseCopyWith<$Res> implements $LeaveApplicationResponseCopyWith<$Res> {
  factory _$LeaveApplicationResponseCopyWith(_LeaveApplicationResponse value, $Res Function(_LeaveApplicationResponse) _then) = __$LeaveApplicationResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId, String type, String reason,@JsonKey(name: 'start_date') DateTime startDate,@JsonKey(name: 'end_date') DateTime endDate, bool status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$LeaveApplicationResponseCopyWithImpl<$Res>
    implements _$LeaveApplicationResponseCopyWith<$Res> {
  __$LeaveApplicationResponseCopyWithImpl(this._self, this._then);

  final _LeaveApplicationResponse _self;
  final $Res Function(_LeaveApplicationResponse) _then;

/// Create a copy of LeaveApplicationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? reason = null,Object? startDate = null,Object? endDate = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_LeaveApplicationResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
