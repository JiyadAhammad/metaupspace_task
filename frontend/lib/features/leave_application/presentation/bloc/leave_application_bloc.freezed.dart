// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveApplicationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveApplicationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeaveApplicationEvent()';
}


}

/// @nodoc
class $LeaveApplicationEventCopyWith<$Res>  {
$LeaveApplicationEventCopyWith(LeaveApplicationEvent _, $Res Function(LeaveApplicationEvent) __);
}


/// Adds pattern-matching-related methods to [LeaveApplicationEvent].
extension LeaveApplicationEventPatterns on LeaveApplicationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetAllLeaveApplications value)?  getAllLeaveApplications,TResult Function( _ApplyLeaveApplication value)?  applyLeaveApplication,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllLeaveApplications() when getAllLeaveApplications != null:
return getAllLeaveApplications(_that);case _ApplyLeaveApplication() when applyLeaveApplication != null:
return applyLeaveApplication(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetAllLeaveApplications value)  getAllLeaveApplications,required TResult Function( _ApplyLeaveApplication value)  applyLeaveApplication,}){
final _that = this;
switch (_that) {
case _GetAllLeaveApplications():
return getAllLeaveApplications(_that);case _ApplyLeaveApplication():
return applyLeaveApplication(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetAllLeaveApplications value)?  getAllLeaveApplications,TResult? Function( _ApplyLeaveApplication value)?  applyLeaveApplication,}){
final _that = this;
switch (_that) {
case _GetAllLeaveApplications() when getAllLeaveApplications != null:
return getAllLeaveApplications(_that);case _ApplyLeaveApplication() when applyLeaveApplication != null:
return applyLeaveApplication(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getAllLeaveApplications,TResult Function( LeaveApplicationRequestParam param)?  applyLeaveApplication,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllLeaveApplications() when getAllLeaveApplications != null:
return getAllLeaveApplications();case _ApplyLeaveApplication() when applyLeaveApplication != null:
return applyLeaveApplication(_that.param);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getAllLeaveApplications,required TResult Function( LeaveApplicationRequestParam param)  applyLeaveApplication,}) {final _that = this;
switch (_that) {
case _GetAllLeaveApplications():
return getAllLeaveApplications();case _ApplyLeaveApplication():
return applyLeaveApplication(_that.param);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getAllLeaveApplications,TResult? Function( LeaveApplicationRequestParam param)?  applyLeaveApplication,}) {final _that = this;
switch (_that) {
case _GetAllLeaveApplications() when getAllLeaveApplications != null:
return getAllLeaveApplications();case _ApplyLeaveApplication() when applyLeaveApplication != null:
return applyLeaveApplication(_that.param);case _:
  return null;

}
}

}

/// @nodoc


class _GetAllLeaveApplications implements LeaveApplicationEvent {
  const _GetAllLeaveApplications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllLeaveApplications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LeaveApplicationEvent.getAllLeaveApplications()';
}


}




/// @nodoc


class _ApplyLeaveApplication implements LeaveApplicationEvent {
  const _ApplyLeaveApplication({required this.param});
  

 final  LeaveApplicationRequestParam param;

/// Create a copy of LeaveApplicationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyLeaveApplicationCopyWith<_ApplyLeaveApplication> get copyWith => __$ApplyLeaveApplicationCopyWithImpl<_ApplyLeaveApplication>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplyLeaveApplication&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'LeaveApplicationEvent.applyLeaveApplication(param: $param)';
}


}

/// @nodoc
abstract mixin class _$ApplyLeaveApplicationCopyWith<$Res> implements $LeaveApplicationEventCopyWith<$Res> {
  factory _$ApplyLeaveApplicationCopyWith(_ApplyLeaveApplication value, $Res Function(_ApplyLeaveApplication) _then) = __$ApplyLeaveApplicationCopyWithImpl;
@useResult
$Res call({
 LeaveApplicationRequestParam param
});




}
/// @nodoc
class __$ApplyLeaveApplicationCopyWithImpl<$Res>
    implements _$ApplyLeaveApplicationCopyWith<$Res> {
  __$ApplyLeaveApplicationCopyWithImpl(this._self, this._then);

  final _ApplyLeaveApplication _self;
  final $Res Function(_ApplyLeaveApplication) _then;

/// Create a copy of LeaveApplicationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_ApplyLeaveApplication(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as LeaveApplicationRequestParam,
  ));
}


}

/// @nodoc
mixin _$LeaveApplicationState {

 bool get isApply; bool get isApplied; bool get isLoading; List<LeaveApplicationEntity>? get leaveApplications; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of LeaveApplicationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveApplicationStateCopyWith<LeaveApplicationState> get copyWith => _$LeaveApplicationStateCopyWithImpl<LeaveApplicationState>(this as LeaveApplicationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveApplicationState&&(identical(other.isApply, isApply) || other.isApply == isApply)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.leaveApplications, leaveApplications)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isApply,isApplied,isLoading,const DeepCollectionEquality().hash(leaveApplications),successMessage,isError,errorMessage);

@override
String toString() {
  return 'LeaveApplicationState(isApply: $isApply, isApplied: $isApplied, isLoading: $isLoading, leaveApplications: $leaveApplications, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $LeaveApplicationStateCopyWith<$Res>  {
  factory $LeaveApplicationStateCopyWith(LeaveApplicationState value, $Res Function(LeaveApplicationState) _then) = _$LeaveApplicationStateCopyWithImpl;
@useResult
$Res call({
 bool isApply, bool isApplied, bool isLoading, List<LeaveApplicationEntity>? leaveApplications, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$LeaveApplicationStateCopyWithImpl<$Res>
    implements $LeaveApplicationStateCopyWith<$Res> {
  _$LeaveApplicationStateCopyWithImpl(this._self, this._then);

  final LeaveApplicationState _self;
  final $Res Function(LeaveApplicationState) _then;

/// Create a copy of LeaveApplicationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isApply = null,Object? isApplied = null,Object? isLoading = null,Object? leaveApplications = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isApply: null == isApply ? _self.isApply : isApply // ignore: cast_nullable_to_non_nullable
as bool,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,leaveApplications: freezed == leaveApplications ? _self.leaveApplications : leaveApplications // ignore: cast_nullable_to_non_nullable
as List<LeaveApplicationEntity>?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveApplicationState].
extension LeaveApplicationStatePatterns on LeaveApplicationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveApplicationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveApplicationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveApplicationState value)  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveApplicationState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveApplicationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isApply,  bool isApplied,  bool isLoading,  List<LeaveApplicationEntity>? leaveApplications,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveApplicationState() when $default != null:
return $default(_that.isApply,_that.isApplied,_that.isLoading,_that.leaveApplications,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isApply,  bool isApplied,  bool isLoading,  List<LeaveApplicationEntity>? leaveApplications,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationState():
return $default(_that.isApply,_that.isApplied,_that.isLoading,_that.leaveApplications,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isApply,  bool isApplied,  bool isLoading,  List<LeaveApplicationEntity>? leaveApplications,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _LeaveApplicationState() when $default != null:
return $default(_that.isApply,_that.isApplied,_that.isLoading,_that.leaveApplications,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveApplicationState implements LeaveApplicationState {
  const _LeaveApplicationState({this.isApply = false, this.isApplied = false, this.isLoading = false, final  List<LeaveApplicationEntity>? leaveApplications, this.successMessage, this.isError = false, this.errorMessage}): _leaveApplications = leaveApplications;
  

@override@JsonKey() final  bool isApply;
@override@JsonKey() final  bool isApplied;
@override@JsonKey() final  bool isLoading;
 final  List<LeaveApplicationEntity>? _leaveApplications;
@override List<LeaveApplicationEntity>? get leaveApplications {
  final value = _leaveApplications;
  if (value == null) return null;
  if (_leaveApplications is EqualUnmodifiableListView) return _leaveApplications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of LeaveApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveApplicationStateCopyWith<_LeaveApplicationState> get copyWith => __$LeaveApplicationStateCopyWithImpl<_LeaveApplicationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveApplicationState&&(identical(other.isApply, isApply) || other.isApply == isApply)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._leaveApplications, _leaveApplications)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isApply,isApplied,isLoading,const DeepCollectionEquality().hash(_leaveApplications),successMessage,isError,errorMessage);

@override
String toString() {
  return 'LeaveApplicationState(isApply: $isApply, isApplied: $isApplied, isLoading: $isLoading, leaveApplications: $leaveApplications, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$LeaveApplicationStateCopyWith<$Res> implements $LeaveApplicationStateCopyWith<$Res> {
  factory _$LeaveApplicationStateCopyWith(_LeaveApplicationState value, $Res Function(_LeaveApplicationState) _then) = __$LeaveApplicationStateCopyWithImpl;
@override @useResult
$Res call({
 bool isApply, bool isApplied, bool isLoading, List<LeaveApplicationEntity>? leaveApplications, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$LeaveApplicationStateCopyWithImpl<$Res>
    implements _$LeaveApplicationStateCopyWith<$Res> {
  __$LeaveApplicationStateCopyWithImpl(this._self, this._then);

  final _LeaveApplicationState _self;
  final $Res Function(_LeaveApplicationState) _then;

/// Create a copy of LeaveApplicationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isApply = null,Object? isApplied = null,Object? isLoading = null,Object? leaveApplications = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_LeaveApplicationState(
isApply: null == isApply ? _self.isApply : isApply // ignore: cast_nullable_to_non_nullable
as bool,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,leaveApplications: freezed == leaveApplications ? _self._leaveApplications : leaveApplications // ignore: cast_nullable_to_non_nullable
as List<LeaveApplicationEntity>?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
