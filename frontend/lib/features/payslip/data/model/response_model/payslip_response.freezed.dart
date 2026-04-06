// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaySlipResponse {

 String get role;@JsonKey(name: 'base_salary') double get baseSalary;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'joining_date') String get joiningDate;@JsonKey(defaultValue: <PaySlipItem>[]) List<PaySlipItem> get payslips;
/// Create a copy of PaySlipResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaySlipResponseCopyWith<PaySlipResponse> get copyWith => _$PaySlipResponseCopyWithImpl<PaySlipResponse>(this as PaySlipResponse, _$identity);

  /// Serializes this PaySlipResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaySlipResponse&&(identical(other.role, role) || other.role == role)&&(identical(other.baseSalary, baseSalary) || other.baseSalary == baseSalary)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.joiningDate, joiningDate) || other.joiningDate == joiningDate)&&const DeepCollectionEquality().equals(other.payslips, payslips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,baseSalary,userId,joiningDate,const DeepCollectionEquality().hash(payslips));

@override
String toString() {
  return 'PaySlipResponse(role: $role, baseSalary: $baseSalary, userId: $userId, joiningDate: $joiningDate, payslips: $payslips)';
}


}

/// @nodoc
abstract mixin class $PaySlipResponseCopyWith<$Res>  {
  factory $PaySlipResponseCopyWith(PaySlipResponse value, $Res Function(PaySlipResponse) _then) = _$PaySlipResponseCopyWithImpl;
@useResult
$Res call({
 String role,@JsonKey(name: 'base_salary') double baseSalary,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'joining_date') String joiningDate,@JsonKey(defaultValue: <PaySlipItem>[]) List<PaySlipItem> payslips
});




}
/// @nodoc
class _$PaySlipResponseCopyWithImpl<$Res>
    implements $PaySlipResponseCopyWith<$Res> {
  _$PaySlipResponseCopyWithImpl(this._self, this._then);

  final PaySlipResponse _self;
  final $Res Function(PaySlipResponse) _then;

/// Create a copy of PaySlipResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? baseSalary = null,Object? userId = null,Object? joiningDate = null,Object? payslips = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,baseSalary: null == baseSalary ? _self.baseSalary : baseSalary // ignore: cast_nullable_to_non_nullable
as double,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,joiningDate: null == joiningDate ? _self.joiningDate : joiningDate // ignore: cast_nullable_to_non_nullable
as String,payslips: null == payslips ? _self.payslips : payslips // ignore: cast_nullable_to_non_nullable
as List<PaySlipItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaySlipResponse].
extension PaySlipResponsePatterns on PaySlipResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaySlipResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaySlipResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaySlipResponse value)  $default,){
final _that = this;
switch (_that) {
case _PaySlipResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaySlipResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PaySlipResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role, @JsonKey(name: 'base_salary')  double baseSalary, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'joining_date')  String joiningDate, @JsonKey(defaultValue: <PaySlipItem>[])  List<PaySlipItem> payslips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaySlipResponse() when $default != null:
return $default(_that.role,_that.baseSalary,_that.userId,_that.joiningDate,_that.payslips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role, @JsonKey(name: 'base_salary')  double baseSalary, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'joining_date')  String joiningDate, @JsonKey(defaultValue: <PaySlipItem>[])  List<PaySlipItem> payslips)  $default,) {final _that = this;
switch (_that) {
case _PaySlipResponse():
return $default(_that.role,_that.baseSalary,_that.userId,_that.joiningDate,_that.payslips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role, @JsonKey(name: 'base_salary')  double baseSalary, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'joining_date')  String joiningDate, @JsonKey(defaultValue: <PaySlipItem>[])  List<PaySlipItem> payslips)?  $default,) {final _that = this;
switch (_that) {
case _PaySlipResponse() when $default != null:
return $default(_that.role,_that.baseSalary,_that.userId,_that.joiningDate,_that.payslips);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaySlipResponse implements PaySlipResponse {
  const _PaySlipResponse({required this.role, @JsonKey(name: 'base_salary') required this.baseSalary, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'joining_date') required this.joiningDate, @JsonKey(defaultValue: <PaySlipItem>[]) required final  List<PaySlipItem> payslips}): _payslips = payslips;
  factory _PaySlipResponse.fromJson(Map<String, dynamic> json) => _$PaySlipResponseFromJson(json);

@override final  String role;
@override@JsonKey(name: 'base_salary') final  double baseSalary;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'joining_date') final  String joiningDate;
 final  List<PaySlipItem> _payslips;
@override@JsonKey(defaultValue: <PaySlipItem>[]) List<PaySlipItem> get payslips {
  if (_payslips is EqualUnmodifiableListView) return _payslips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payslips);
}


/// Create a copy of PaySlipResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaySlipResponseCopyWith<_PaySlipResponse> get copyWith => __$PaySlipResponseCopyWithImpl<_PaySlipResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaySlipResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaySlipResponse&&(identical(other.role, role) || other.role == role)&&(identical(other.baseSalary, baseSalary) || other.baseSalary == baseSalary)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.joiningDate, joiningDate) || other.joiningDate == joiningDate)&&const DeepCollectionEquality().equals(other._payslips, _payslips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,baseSalary,userId,joiningDate,const DeepCollectionEquality().hash(_payslips));

@override
String toString() {
  return 'PaySlipResponse(role: $role, baseSalary: $baseSalary, userId: $userId, joiningDate: $joiningDate, payslips: $payslips)';
}


}

/// @nodoc
abstract mixin class _$PaySlipResponseCopyWith<$Res> implements $PaySlipResponseCopyWith<$Res> {
  factory _$PaySlipResponseCopyWith(_PaySlipResponse value, $Res Function(_PaySlipResponse) _then) = __$PaySlipResponseCopyWithImpl;
@override @useResult
$Res call({
 String role,@JsonKey(name: 'base_salary') double baseSalary,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'joining_date') String joiningDate,@JsonKey(defaultValue: <PaySlipItem>[]) List<PaySlipItem> payslips
});




}
/// @nodoc
class __$PaySlipResponseCopyWithImpl<$Res>
    implements _$PaySlipResponseCopyWith<$Res> {
  __$PaySlipResponseCopyWithImpl(this._self, this._then);

  final _PaySlipResponse _self;
  final $Res Function(_PaySlipResponse) _then;

/// Create a copy of PaySlipResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? baseSalary = null,Object? userId = null,Object? joiningDate = null,Object? payslips = null,}) {
  return _then(_PaySlipResponse(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,baseSalary: null == baseSalary ? _self.baseSalary : baseSalary // ignore: cast_nullable_to_non_nullable
as double,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,joiningDate: null == joiningDate ? _self.joiningDate : joiningDate // ignore: cast_nullable_to_non_nullable
as String,payslips: null == payslips ? _self._payslips : payslips // ignore: cast_nullable_to_non_nullable
as List<PaySlipItem>,
  ));
}


}


/// @nodoc
mixin _$PaySlipItem {

 int get id; String get month;@JsonKey(name: 'total_salary') double get totalSalary; String get status;
/// Create a copy of PaySlipItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaySlipItemCopyWith<PaySlipItem> get copyWith => _$PaySlipItemCopyWithImpl<PaySlipItem>(this as PaySlipItem, _$identity);

  /// Serializes this PaySlipItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaySlipItem&&(identical(other.id, id) || other.id == id)&&(identical(other.month, month) || other.month == month)&&(identical(other.totalSalary, totalSalary) || other.totalSalary == totalSalary)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,month,totalSalary,status);

@override
String toString() {
  return 'PaySlipItem(id: $id, month: $month, totalSalary: $totalSalary, status: $status)';
}


}

/// @nodoc
abstract mixin class $PaySlipItemCopyWith<$Res>  {
  factory $PaySlipItemCopyWith(PaySlipItem value, $Res Function(PaySlipItem) _then) = _$PaySlipItemCopyWithImpl;
@useResult
$Res call({
 int id, String month,@JsonKey(name: 'total_salary') double totalSalary, String status
});




}
/// @nodoc
class _$PaySlipItemCopyWithImpl<$Res>
    implements $PaySlipItemCopyWith<$Res> {
  _$PaySlipItemCopyWithImpl(this._self, this._then);

  final PaySlipItem _self;
  final $Res Function(PaySlipItem) _then;

/// Create a copy of PaySlipItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? month = null,Object? totalSalary = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,totalSalary: null == totalSalary ? _self.totalSalary : totalSalary // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaySlipItem].
extension PaySlipItemPatterns on PaySlipItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaySlipItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaySlipItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaySlipItem value)  $default,){
final _that = this;
switch (_that) {
case _PaySlipItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaySlipItem value)?  $default,){
final _that = this;
switch (_that) {
case _PaySlipItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String month, @JsonKey(name: 'total_salary')  double totalSalary,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaySlipItem() when $default != null:
return $default(_that.id,_that.month,_that.totalSalary,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String month, @JsonKey(name: 'total_salary')  double totalSalary,  String status)  $default,) {final _that = this;
switch (_that) {
case _PaySlipItem():
return $default(_that.id,_that.month,_that.totalSalary,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String month, @JsonKey(name: 'total_salary')  double totalSalary,  String status)?  $default,) {final _that = this;
switch (_that) {
case _PaySlipItem() when $default != null:
return $default(_that.id,_that.month,_that.totalSalary,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaySlipItem implements PaySlipItem {
  const _PaySlipItem({required this.id, required this.month, @JsonKey(name: 'total_salary') required this.totalSalary, required this.status});
  factory _PaySlipItem.fromJson(Map<String, dynamic> json) => _$PaySlipItemFromJson(json);

@override final  int id;
@override final  String month;
@override@JsonKey(name: 'total_salary') final  double totalSalary;
@override final  String status;

/// Create a copy of PaySlipItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaySlipItemCopyWith<_PaySlipItem> get copyWith => __$PaySlipItemCopyWithImpl<_PaySlipItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaySlipItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaySlipItem&&(identical(other.id, id) || other.id == id)&&(identical(other.month, month) || other.month == month)&&(identical(other.totalSalary, totalSalary) || other.totalSalary == totalSalary)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,month,totalSalary,status);

@override
String toString() {
  return 'PaySlipItem(id: $id, month: $month, totalSalary: $totalSalary, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PaySlipItemCopyWith<$Res> implements $PaySlipItemCopyWith<$Res> {
  factory _$PaySlipItemCopyWith(_PaySlipItem value, $Res Function(_PaySlipItem) _then) = __$PaySlipItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String month,@JsonKey(name: 'total_salary') double totalSalary, String status
});




}
/// @nodoc
class __$PaySlipItemCopyWithImpl<$Res>
    implements _$PaySlipItemCopyWith<$Res> {
  __$PaySlipItemCopyWithImpl(this._self, this._then);

  final _PaySlipItem _self;
  final $Res Function(_PaySlipItem) _then;

/// Create a copy of PaySlipItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? month = null,Object? totalSalary = null,Object? status = null,}) {
  return _then(_PaySlipItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,totalSalary: null == totalSalary ? _self.totalSalary : totalSalary // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
