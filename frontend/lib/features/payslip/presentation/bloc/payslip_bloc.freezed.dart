// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PayslipEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayslipEvent()';
}


}

/// @nodoc
class $PayslipEventCopyWith<$Res>  {
$PayslipEventCopyWith(PayslipEvent _, $Res Function(PayslipEvent) __);
}


/// Adds pattern-matching-related methods to [PayslipEvent].
extension PayslipEventPatterns on PayslipEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPayslipData value)?  getPayslipData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPayslipData() when getPayslipData != null:
return getPayslipData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPayslipData value)  getPayslipData,}){
final _that = this;
switch (_that) {
case _GetPayslipData():
return getPayslipData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPayslipData value)?  getPayslipData,}){
final _that = this;
switch (_that) {
case _GetPayslipData() when getPayslipData != null:
return getPayslipData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getPayslipData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPayslipData() when getPayslipData != null:
return getPayslipData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getPayslipData,}) {final _that = this;
switch (_that) {
case _GetPayslipData():
return getPayslipData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getPayslipData,}) {final _that = this;
switch (_that) {
case _GetPayslipData() when getPayslipData != null:
return getPayslipData();case _:
  return null;

}
}

}

/// @nodoc


class _GetPayslipData implements PayslipEvent {
  const _GetPayslipData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPayslipData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PayslipEvent.getPayslipData()';
}


}




/// @nodoc
mixin _$PayslipState {

 bool get isLoading; PaySlipEntity? get payslip; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of PayslipState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipStateCopyWith<PayslipState> get copyWith => _$PayslipStateCopyWithImpl<PayslipState>(this as PayslipState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.payslip, payslip) || other.payslip == payslip)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,payslip,successMessage,isError,errorMessage);

@override
String toString() {
  return 'PayslipState(isLoading: $isLoading, payslip: $payslip, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PayslipStateCopyWith<$Res>  {
  factory $PayslipStateCopyWith(PayslipState value, $Res Function(PayslipState) _then) = _$PayslipStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, PaySlipEntity? payslip, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$PayslipStateCopyWithImpl<$Res>
    implements $PayslipStateCopyWith<$Res> {
  _$PayslipStateCopyWithImpl(this._self, this._then);

  final PayslipState _self;
  final $Res Function(PayslipState) _then;

/// Create a copy of PayslipState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? payslip = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,payslip: freezed == payslip ? _self.payslip : payslip // ignore: cast_nullable_to_non_nullable
as PaySlipEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayslipState].
extension PayslipStatePatterns on PayslipState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayslipState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayslipState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayslipState value)  $default,){
final _that = this;
switch (_that) {
case _PayslipState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayslipState value)?  $default,){
final _that = this;
switch (_that) {
case _PayslipState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  PaySlipEntity? payslip,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipState() when $default != null:
return $default(_that.isLoading,_that.payslip,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  PaySlipEntity? payslip,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PayslipState():
return $default(_that.isLoading,_that.payslip,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  PaySlipEntity? payslip,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PayslipState() when $default != null:
return $default(_that.isLoading,_that.payslip,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PayslipState implements PayslipState {
  const _PayslipState({this.isLoading = false, this.payslip, this.successMessage, this.isError = false, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  PaySlipEntity? payslip;
@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of PayslipState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipStateCopyWith<_PayslipState> get copyWith => __$PayslipStateCopyWithImpl<_PayslipState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.payslip, payslip) || other.payslip == payslip)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,payslip,successMessage,isError,errorMessage);

@override
String toString() {
  return 'PayslipState(isLoading: $isLoading, payslip: $payslip, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PayslipStateCopyWith<$Res> implements $PayslipStateCopyWith<$Res> {
  factory _$PayslipStateCopyWith(_PayslipState value, $Res Function(_PayslipState) _then) = __$PayslipStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, PaySlipEntity? payslip, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$PayslipStateCopyWithImpl<$Res>
    implements _$PayslipStateCopyWith<$Res> {
  __$PayslipStateCopyWithImpl(this._self, this._then);

  final _PayslipState _self;
  final $Res Function(_PayslipState) _then;

/// Create a copy of PayslipState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? payslip = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_PayslipState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,payslip: freezed == payslip ? _self.payslip : payslip // ignore: cast_nullable_to_non_nullable
as PaySlipEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
