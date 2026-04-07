// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardResponse {

@JsonKey(name: 'leave_details') LeaveDetails get leaveDetails; List<Holiday> get holidays; AttendanceSummary get attendance;@JsonKey(name: 'employee_details') EmployeeDetails get employeeDetails;
/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardResponseCopyWith<DashboardResponse> get copyWith => _$DashboardResponseCopyWithImpl<DashboardResponse>(this as DashboardResponse, _$identity);

  /// Serializes this DashboardResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardResponse&&(identical(other.leaveDetails, leaveDetails) || other.leaveDetails == leaveDetails)&&const DeepCollectionEquality().equals(other.holidays, holidays)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.employeeDetails, employeeDetails) || other.employeeDetails == employeeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leaveDetails,const DeepCollectionEquality().hash(holidays),attendance,employeeDetails);

@override
String toString() {
  return 'DashboardResponse(leaveDetails: $leaveDetails, holidays: $holidays, attendance: $attendance, employeeDetails: $employeeDetails)';
}


}

/// @nodoc
abstract mixin class $DashboardResponseCopyWith<$Res>  {
  factory $DashboardResponseCopyWith(DashboardResponse value, $Res Function(DashboardResponse) _then) = _$DashboardResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'leave_details') LeaveDetails leaveDetails, List<Holiday> holidays, AttendanceSummary attendance,@JsonKey(name: 'employee_details') EmployeeDetails employeeDetails
});


$LeaveDetailsCopyWith<$Res> get leaveDetails;$AttendanceSummaryCopyWith<$Res> get attendance;$EmployeeDetailsCopyWith<$Res> get employeeDetails;

}
/// @nodoc
class _$DashboardResponseCopyWithImpl<$Res>
    implements $DashboardResponseCopyWith<$Res> {
  _$DashboardResponseCopyWithImpl(this._self, this._then);

  final DashboardResponse _self;
  final $Res Function(DashboardResponse) _then;

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaveDetails = null,Object? holidays = null,Object? attendance = null,Object? employeeDetails = null,}) {
  return _then(_self.copyWith(
leaveDetails: null == leaveDetails ? _self.leaveDetails : leaveDetails // ignore: cast_nullable_to_non_nullable
as LeaveDetails,holidays: null == holidays ? _self.holidays : holidays // ignore: cast_nullable_to_non_nullable
as List<Holiday>,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceSummary,employeeDetails: null == employeeDetails ? _self.employeeDetails : employeeDetails // ignore: cast_nullable_to_non_nullable
as EmployeeDetails,
  ));
}
/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveDetailsCopyWith<$Res> get leaveDetails {
  
  return $LeaveDetailsCopyWith<$Res>(_self.leaveDetails, (value) {
    return _then(_self.copyWith(leaveDetails: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceSummaryCopyWith<$Res> get attendance {
  
  return $AttendanceSummaryCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeDetailsCopyWith<$Res> get employeeDetails {
  
  return $EmployeeDetailsCopyWith<$Res>(_self.employeeDetails, (value) {
    return _then(_self.copyWith(employeeDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardResponse].
extension DashboardResponsePatterns on DashboardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardResponse value)  $default,){
final _that = this;
switch (_that) {
case _DashboardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_details')  LeaveDetails leaveDetails,  List<Holiday> holidays,  AttendanceSummary attendance, @JsonKey(name: 'employee_details')  EmployeeDetails employeeDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
return $default(_that.leaveDetails,_that.holidays,_that.attendance,_that.employeeDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'leave_details')  LeaveDetails leaveDetails,  List<Holiday> holidays,  AttendanceSummary attendance, @JsonKey(name: 'employee_details')  EmployeeDetails employeeDetails)  $default,) {final _that = this;
switch (_that) {
case _DashboardResponse():
return $default(_that.leaveDetails,_that.holidays,_that.attendance,_that.employeeDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'leave_details')  LeaveDetails leaveDetails,  List<Holiday> holidays,  AttendanceSummary attendance, @JsonKey(name: 'employee_details')  EmployeeDetails employeeDetails)?  $default,) {final _that = this;
switch (_that) {
case _DashboardResponse() when $default != null:
return $default(_that.leaveDetails,_that.holidays,_that.attendance,_that.employeeDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardResponse implements DashboardResponse {
  const _DashboardResponse({@JsonKey(name: 'leave_details') required this.leaveDetails, required final  List<Holiday> holidays, required this.attendance, @JsonKey(name: 'employee_details') required this.employeeDetails}): _holidays = holidays;
  factory _DashboardResponse.fromJson(Map<String, dynamic> json) => _$DashboardResponseFromJson(json);

@override@JsonKey(name: 'leave_details') final  LeaveDetails leaveDetails;
 final  List<Holiday> _holidays;
@override List<Holiday> get holidays {
  if (_holidays is EqualUnmodifiableListView) return _holidays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holidays);
}

@override final  AttendanceSummary attendance;
@override@JsonKey(name: 'employee_details') final  EmployeeDetails employeeDetails;

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardResponseCopyWith<_DashboardResponse> get copyWith => __$DashboardResponseCopyWithImpl<_DashboardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardResponse&&(identical(other.leaveDetails, leaveDetails) || other.leaveDetails == leaveDetails)&&const DeepCollectionEquality().equals(other._holidays, _holidays)&&(identical(other.attendance, attendance) || other.attendance == attendance)&&(identical(other.employeeDetails, employeeDetails) || other.employeeDetails == employeeDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leaveDetails,const DeepCollectionEquality().hash(_holidays),attendance,employeeDetails);

@override
String toString() {
  return 'DashboardResponse(leaveDetails: $leaveDetails, holidays: $holidays, attendance: $attendance, employeeDetails: $employeeDetails)';
}


}

/// @nodoc
abstract mixin class _$DashboardResponseCopyWith<$Res> implements $DashboardResponseCopyWith<$Res> {
  factory _$DashboardResponseCopyWith(_DashboardResponse value, $Res Function(_DashboardResponse) _then) = __$DashboardResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'leave_details') LeaveDetails leaveDetails, List<Holiday> holidays, AttendanceSummary attendance,@JsonKey(name: 'employee_details') EmployeeDetails employeeDetails
});


@override $LeaveDetailsCopyWith<$Res> get leaveDetails;@override $AttendanceSummaryCopyWith<$Res> get attendance;@override $EmployeeDetailsCopyWith<$Res> get employeeDetails;

}
/// @nodoc
class __$DashboardResponseCopyWithImpl<$Res>
    implements _$DashboardResponseCopyWith<$Res> {
  __$DashboardResponseCopyWithImpl(this._self, this._then);

  final _DashboardResponse _self;
  final $Res Function(_DashboardResponse) _then;

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaveDetails = null,Object? holidays = null,Object? attendance = null,Object? employeeDetails = null,}) {
  return _then(_DashboardResponse(
leaveDetails: null == leaveDetails ? _self.leaveDetails : leaveDetails // ignore: cast_nullable_to_non_nullable
as LeaveDetails,holidays: null == holidays ? _self._holidays : holidays // ignore: cast_nullable_to_non_nullable
as List<Holiday>,attendance: null == attendance ? _self.attendance : attendance // ignore: cast_nullable_to_non_nullable
as AttendanceSummary,employeeDetails: null == employeeDetails ? _self.employeeDetails : employeeDetails // ignore: cast_nullable_to_non_nullable
as EmployeeDetails,
  ));
}

/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveDetailsCopyWith<$Res> get leaveDetails {
  
  return $LeaveDetailsCopyWith<$Res>(_self.leaveDetails, (value) {
    return _then(_self.copyWith(leaveDetails: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceSummaryCopyWith<$Res> get attendance {
  
  return $AttendanceSummaryCopyWith<$Res>(_self.attendance, (value) {
    return _then(_self.copyWith(attendance: value));
  });
}/// Create a copy of DashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeDetailsCopyWith<$Res> get employeeDetails {
  
  return $EmployeeDetailsCopyWith<$Res>(_self.employeeDetails, (value) {
    return _then(_self.copyWith(employeeDetails: value));
  });
}
}


/// @nodoc
mixin _$LeaveDetails {

@JsonKey(name: 'total_leaves') int get totalLeaves;@JsonKey(name: 'leaves_taken') int get leavesTaken;@JsonKey(name: 'leaves_available') int get leavesAvailable;
/// Create a copy of LeaveDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveDetailsCopyWith<LeaveDetails> get copyWith => _$LeaveDetailsCopyWithImpl<LeaveDetails>(this as LeaveDetails, _$identity);

  /// Serializes this LeaveDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveDetails&&(identical(other.totalLeaves, totalLeaves) || other.totalLeaves == totalLeaves)&&(identical(other.leavesTaken, leavesTaken) || other.leavesTaken == leavesTaken)&&(identical(other.leavesAvailable, leavesAvailable) || other.leavesAvailable == leavesAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLeaves,leavesTaken,leavesAvailable);

@override
String toString() {
  return 'LeaveDetails(totalLeaves: $totalLeaves, leavesTaken: $leavesTaken, leavesAvailable: $leavesAvailable)';
}


}

/// @nodoc
abstract mixin class $LeaveDetailsCopyWith<$Res>  {
  factory $LeaveDetailsCopyWith(LeaveDetails value, $Res Function(LeaveDetails) _then) = _$LeaveDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_leaves') int totalLeaves,@JsonKey(name: 'leaves_taken') int leavesTaken,@JsonKey(name: 'leaves_available') int leavesAvailable
});




}
/// @nodoc
class _$LeaveDetailsCopyWithImpl<$Res>
    implements $LeaveDetailsCopyWith<$Res> {
  _$LeaveDetailsCopyWithImpl(this._self, this._then);

  final LeaveDetails _self;
  final $Res Function(LeaveDetails) _then;

/// Create a copy of LeaveDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalLeaves = null,Object? leavesTaken = null,Object? leavesAvailable = null,}) {
  return _then(_self.copyWith(
totalLeaves: null == totalLeaves ? _self.totalLeaves : totalLeaves // ignore: cast_nullable_to_non_nullable
as int,leavesTaken: null == leavesTaken ? _self.leavesTaken : leavesTaken // ignore: cast_nullable_to_non_nullable
as int,leavesAvailable: null == leavesAvailable ? _self.leavesAvailable : leavesAvailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveDetails].
extension LeaveDetailsPatterns on LeaveDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveDetails value)  $default,){
final _that = this;
switch (_that) {
case _LeaveDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveDetails value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_leaves')  int totalLeaves, @JsonKey(name: 'leaves_taken')  int leavesTaken, @JsonKey(name: 'leaves_available')  int leavesAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveDetails() when $default != null:
return $default(_that.totalLeaves,_that.leavesTaken,_that.leavesAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_leaves')  int totalLeaves, @JsonKey(name: 'leaves_taken')  int leavesTaken, @JsonKey(name: 'leaves_available')  int leavesAvailable)  $default,) {final _that = this;
switch (_that) {
case _LeaveDetails():
return $default(_that.totalLeaves,_that.leavesTaken,_that.leavesAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_leaves')  int totalLeaves, @JsonKey(name: 'leaves_taken')  int leavesTaken, @JsonKey(name: 'leaves_available')  int leavesAvailable)?  $default,) {final _that = this;
switch (_that) {
case _LeaveDetails() when $default != null:
return $default(_that.totalLeaves,_that.leavesTaken,_that.leavesAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveDetails implements LeaveDetails {
  const _LeaveDetails({@JsonKey(name: 'total_leaves') required this.totalLeaves, @JsonKey(name: 'leaves_taken') required this.leavesTaken, @JsonKey(name: 'leaves_available') required this.leavesAvailable});
  factory _LeaveDetails.fromJson(Map<String, dynamic> json) => _$LeaveDetailsFromJson(json);

@override@JsonKey(name: 'total_leaves') final  int totalLeaves;
@override@JsonKey(name: 'leaves_taken') final  int leavesTaken;
@override@JsonKey(name: 'leaves_available') final  int leavesAvailable;

/// Create a copy of LeaveDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveDetailsCopyWith<_LeaveDetails> get copyWith => __$LeaveDetailsCopyWithImpl<_LeaveDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveDetails&&(identical(other.totalLeaves, totalLeaves) || other.totalLeaves == totalLeaves)&&(identical(other.leavesTaken, leavesTaken) || other.leavesTaken == leavesTaken)&&(identical(other.leavesAvailable, leavesAvailable) || other.leavesAvailable == leavesAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalLeaves,leavesTaken,leavesAvailable);

@override
String toString() {
  return 'LeaveDetails(totalLeaves: $totalLeaves, leavesTaken: $leavesTaken, leavesAvailable: $leavesAvailable)';
}


}

/// @nodoc
abstract mixin class _$LeaveDetailsCopyWith<$Res> implements $LeaveDetailsCopyWith<$Res> {
  factory _$LeaveDetailsCopyWith(_LeaveDetails value, $Res Function(_LeaveDetails) _then) = __$LeaveDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_leaves') int totalLeaves,@JsonKey(name: 'leaves_taken') int leavesTaken,@JsonKey(name: 'leaves_available') int leavesAvailable
});




}
/// @nodoc
class __$LeaveDetailsCopyWithImpl<$Res>
    implements _$LeaveDetailsCopyWith<$Res> {
  __$LeaveDetailsCopyWithImpl(this._self, this._then);

  final _LeaveDetails _self;
  final $Res Function(_LeaveDetails) _then;

/// Create a copy of LeaveDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalLeaves = null,Object? leavesTaken = null,Object? leavesAvailable = null,}) {
  return _then(_LeaveDetails(
totalLeaves: null == totalLeaves ? _self.totalLeaves : totalLeaves // ignore: cast_nullable_to_non_nullable
as int,leavesTaken: null == leavesTaken ? _self.leavesTaken : leavesTaken // ignore: cast_nullable_to_non_nullable
as int,leavesAvailable: null == leavesAvailable ? _self.leavesAvailable : leavesAvailable // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Holiday {

 String get id; String get name; DateTime get date; String get type;
/// Create a copy of Holiday
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HolidayCopyWith<Holiday> get copyWith => _$HolidayCopyWithImpl<Holiday>(this as Holiday, _$identity);

  /// Serializes this Holiday to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Holiday&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,date,type);

@override
String toString() {
  return 'Holiday(id: $id, name: $name, date: $date, type: $type)';
}


}

/// @nodoc
abstract mixin class $HolidayCopyWith<$Res>  {
  factory $HolidayCopyWith(Holiday value, $Res Function(Holiday) _then) = _$HolidayCopyWithImpl;
@useResult
$Res call({
 String id, String name, DateTime date, String type
});




}
/// @nodoc
class _$HolidayCopyWithImpl<$Res>
    implements $HolidayCopyWith<$Res> {
  _$HolidayCopyWithImpl(this._self, this._then);

  final Holiday _self;
  final $Res Function(Holiday) _then;

/// Create a copy of Holiday
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? date = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Holiday].
extension HolidayPatterns on Holiday {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Holiday value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Holiday() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Holiday value)  $default,){
final _that = this;
switch (_that) {
case _Holiday():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Holiday value)?  $default,){
final _that = this;
switch (_that) {
case _Holiday() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  DateTime date,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Holiday() when $default != null:
return $default(_that.id,_that.name,_that.date,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  DateTime date,  String type)  $default,) {final _that = this;
switch (_that) {
case _Holiday():
return $default(_that.id,_that.name,_that.date,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  DateTime date,  String type)?  $default,) {final _that = this;
switch (_that) {
case _Holiday() when $default != null:
return $default(_that.id,_that.name,_that.date,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Holiday implements Holiday {
  const _Holiday({required this.id, required this.name, required this.date, required this.type});
  factory _Holiday.fromJson(Map<String, dynamic> json) => _$HolidayFromJson(json);

@override final  String id;
@override final  String name;
@override final  DateTime date;
@override final  String type;

/// Create a copy of Holiday
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HolidayCopyWith<_Holiday> get copyWith => __$HolidayCopyWithImpl<_Holiday>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HolidayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Holiday&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,date,type);

@override
String toString() {
  return 'Holiday(id: $id, name: $name, date: $date, type: $type)';
}


}

/// @nodoc
abstract mixin class _$HolidayCopyWith<$Res> implements $HolidayCopyWith<$Res> {
  factory _$HolidayCopyWith(_Holiday value, $Res Function(_Holiday) _then) = __$HolidayCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, DateTime date, String type
});




}
/// @nodoc
class __$HolidayCopyWithImpl<$Res>
    implements _$HolidayCopyWith<$Res> {
  __$HolidayCopyWithImpl(this._self, this._then);

  final _Holiday _self;
  final $Res Function(_Holiday) _then;

/// Create a copy of Holiday
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? date = null,Object? type = null,}) {
  return _then(_Holiday(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttendanceSummary {

@JsonKey(name: 'present_days') int get presentDays;@JsonKey(name: 'absent_days') int get absentDays;@JsonKey(name: 'total_working_days') int get totalWorkingDays;@JsonKey(name: 'average_working_hours') double get averageWorkingHours;
/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceSummaryCopyWith<AttendanceSummary> get copyWith => _$AttendanceSummaryCopyWithImpl<AttendanceSummary>(this as AttendanceSummary, _$identity);

  /// Serializes this AttendanceSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceSummary&&(identical(other.presentDays, presentDays) || other.presentDays == presentDays)&&(identical(other.absentDays, absentDays) || other.absentDays == absentDays)&&(identical(other.totalWorkingDays, totalWorkingDays) || other.totalWorkingDays == totalWorkingDays)&&(identical(other.averageWorkingHours, averageWorkingHours) || other.averageWorkingHours == averageWorkingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,presentDays,absentDays,totalWorkingDays,averageWorkingHours);

@override
String toString() {
  return 'AttendanceSummary(presentDays: $presentDays, absentDays: $absentDays, totalWorkingDays: $totalWorkingDays, averageWorkingHours: $averageWorkingHours)';
}


}

/// @nodoc
abstract mixin class $AttendanceSummaryCopyWith<$Res>  {
  factory $AttendanceSummaryCopyWith(AttendanceSummary value, $Res Function(AttendanceSummary) _then) = _$AttendanceSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'present_days') int presentDays,@JsonKey(name: 'absent_days') int absentDays,@JsonKey(name: 'total_working_days') int totalWorkingDays,@JsonKey(name: 'average_working_hours') double averageWorkingHours
});




}
/// @nodoc
class _$AttendanceSummaryCopyWithImpl<$Res>
    implements $AttendanceSummaryCopyWith<$Res> {
  _$AttendanceSummaryCopyWithImpl(this._self, this._then);

  final AttendanceSummary _self;
  final $Res Function(AttendanceSummary) _then;

/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? presentDays = null,Object? absentDays = null,Object? totalWorkingDays = null,Object? averageWorkingHours = null,}) {
  return _then(_self.copyWith(
presentDays: null == presentDays ? _self.presentDays : presentDays // ignore: cast_nullable_to_non_nullable
as int,absentDays: null == absentDays ? _self.absentDays : absentDays // ignore: cast_nullable_to_non_nullable
as int,totalWorkingDays: null == totalWorkingDays ? _self.totalWorkingDays : totalWorkingDays // ignore: cast_nullable_to_non_nullable
as int,averageWorkingHours: null == averageWorkingHours ? _self.averageWorkingHours : averageWorkingHours // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceSummary].
extension AttendanceSummaryPatterns on AttendanceSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceSummary value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'present_days')  int presentDays, @JsonKey(name: 'absent_days')  int absentDays, @JsonKey(name: 'total_working_days')  int totalWorkingDays, @JsonKey(name: 'average_working_hours')  double averageWorkingHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
return $default(_that.presentDays,_that.absentDays,_that.totalWorkingDays,_that.averageWorkingHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'present_days')  int presentDays, @JsonKey(name: 'absent_days')  int absentDays, @JsonKey(name: 'total_working_days')  int totalWorkingDays, @JsonKey(name: 'average_working_hours')  double averageWorkingHours)  $default,) {final _that = this;
switch (_that) {
case _AttendanceSummary():
return $default(_that.presentDays,_that.absentDays,_that.totalWorkingDays,_that.averageWorkingHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'present_days')  int presentDays, @JsonKey(name: 'absent_days')  int absentDays, @JsonKey(name: 'total_working_days')  int totalWorkingDays, @JsonKey(name: 'average_working_hours')  double averageWorkingHours)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceSummary() when $default != null:
return $default(_that.presentDays,_that.absentDays,_that.totalWorkingDays,_that.averageWorkingHours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceSummary implements AttendanceSummary {
  const _AttendanceSummary({@JsonKey(name: 'present_days') required this.presentDays, @JsonKey(name: 'absent_days') required this.absentDays, @JsonKey(name: 'total_working_days') required this.totalWorkingDays, @JsonKey(name: 'average_working_hours') required this.averageWorkingHours});
  factory _AttendanceSummary.fromJson(Map<String, dynamic> json) => _$AttendanceSummaryFromJson(json);

@override@JsonKey(name: 'present_days') final  int presentDays;
@override@JsonKey(name: 'absent_days') final  int absentDays;
@override@JsonKey(name: 'total_working_days') final  int totalWorkingDays;
@override@JsonKey(name: 'average_working_hours') final  double averageWorkingHours;

/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceSummaryCopyWith<_AttendanceSummary> get copyWith => __$AttendanceSummaryCopyWithImpl<_AttendanceSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceSummary&&(identical(other.presentDays, presentDays) || other.presentDays == presentDays)&&(identical(other.absentDays, absentDays) || other.absentDays == absentDays)&&(identical(other.totalWorkingDays, totalWorkingDays) || other.totalWorkingDays == totalWorkingDays)&&(identical(other.averageWorkingHours, averageWorkingHours) || other.averageWorkingHours == averageWorkingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,presentDays,absentDays,totalWorkingDays,averageWorkingHours);

@override
String toString() {
  return 'AttendanceSummary(presentDays: $presentDays, absentDays: $absentDays, totalWorkingDays: $totalWorkingDays, averageWorkingHours: $averageWorkingHours)';
}


}

/// @nodoc
abstract mixin class _$AttendanceSummaryCopyWith<$Res> implements $AttendanceSummaryCopyWith<$Res> {
  factory _$AttendanceSummaryCopyWith(_AttendanceSummary value, $Res Function(_AttendanceSummary) _then) = __$AttendanceSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'present_days') int presentDays,@JsonKey(name: 'absent_days') int absentDays,@JsonKey(name: 'total_working_days') int totalWorkingDays,@JsonKey(name: 'average_working_hours') double averageWorkingHours
});




}
/// @nodoc
class __$AttendanceSummaryCopyWithImpl<$Res>
    implements _$AttendanceSummaryCopyWith<$Res> {
  __$AttendanceSummaryCopyWithImpl(this._self, this._then);

  final _AttendanceSummary _self;
  final $Res Function(_AttendanceSummary) _then;

/// Create a copy of AttendanceSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? presentDays = null,Object? absentDays = null,Object? totalWorkingDays = null,Object? averageWorkingHours = null,}) {
  return _then(_AttendanceSummary(
presentDays: null == presentDays ? _self.presentDays : presentDays // ignore: cast_nullable_to_non_nullable
as int,absentDays: null == absentDays ? _self.absentDays : absentDays // ignore: cast_nullable_to_non_nullable
as int,totalWorkingDays: null == totalWorkingDays ? _self.totalWorkingDays : totalWorkingDays // ignore: cast_nullable_to_non_nullable
as int,averageWorkingHours: null == averageWorkingHours ? _self.averageWorkingHours : averageWorkingHours // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$EmployeeDetails {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'is_active_user') bool get isActiveUser; String get email;@JsonKey(name: 'full_name') String get fullName; String get department; String get role; String get manager;@JsonKey(name: 'joining_date') DateTime get joiningDate; String get device;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt;
/// Create a copy of EmployeeDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeDetailsCopyWith<EmployeeDetails> get copyWith => _$EmployeeDetailsCopyWithImpl<EmployeeDetails>(this as EmployeeDetails, _$identity);

  /// Serializes this EmployeeDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeDetails&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isActiveUser, isActiveUser) || other.isActiveUser == isActiveUser)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.department, department) || other.department == department)&&(identical(other.role, role) || other.role == role)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.joiningDate, joiningDate) || other.joiningDate == joiningDate)&&(identical(other.device, device) || other.device == device)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,isActiveUser,email,fullName,department,role,manager,joiningDate,device,createdAt,updatedAt);

@override
String toString() {
  return 'EmployeeDetails(userId: $userId, isActiveUser: $isActiveUser, email: $email, fullName: $fullName, department: $department, role: $role, manager: $manager, joiningDate: $joiningDate, device: $device, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeDetailsCopyWith<$Res>  {
  factory $EmployeeDetailsCopyWith(EmployeeDetails value, $Res Function(EmployeeDetails) _then) = _$EmployeeDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'is_active_user') bool isActiveUser, String email,@JsonKey(name: 'full_name') String fullName, String department, String role, String manager,@JsonKey(name: 'joining_date') DateTime joiningDate, String device,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class _$EmployeeDetailsCopyWithImpl<$Res>
    implements $EmployeeDetailsCopyWith<$Res> {
  _$EmployeeDetailsCopyWithImpl(this._self, this._then);

  final EmployeeDetails _self;
  final $Res Function(EmployeeDetails) _then;

/// Create a copy of EmployeeDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? isActiveUser = null,Object? email = null,Object? fullName = null,Object? department = null,Object? role = null,Object? manager = null,Object? joiningDate = null,Object? device = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isActiveUser: null == isActiveUser ? _self.isActiveUser : isActiveUser // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as String,joiningDate: null == joiningDate ? _self.joiningDate : joiningDate // ignore: cast_nullable_to_non_nullable
as DateTime,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeDetails].
extension EmployeeDetailsPatterns on EmployeeDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeDetails value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeDetails value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_active_user')  bool isActiveUser,  String email, @JsonKey(name: 'full_name')  String fullName,  String department,  String role,  String manager, @JsonKey(name: 'joining_date')  DateTime joiningDate,  String device, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeDetails() when $default != null:
return $default(_that.userId,_that.isActiveUser,_that.email,_that.fullName,_that.department,_that.role,_that.manager,_that.joiningDate,_that.device,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_active_user')  bool isActiveUser,  String email, @JsonKey(name: 'full_name')  String fullName,  String department,  String role,  String manager, @JsonKey(name: 'joining_date')  DateTime joiningDate,  String device, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _EmployeeDetails():
return $default(_that.userId,_that.isActiveUser,_that.email,_that.fullName,_that.department,_that.role,_that.manager,_that.joiningDate,_that.device,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'is_active_user')  bool isActiveUser,  String email, @JsonKey(name: 'full_name')  String fullName,  String department,  String role,  String manager, @JsonKey(name: 'joining_date')  DateTime joiningDate,  String device, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeDetails() when $default != null:
return $default(_that.userId,_that.isActiveUser,_that.email,_that.fullName,_that.department,_that.role,_that.manager,_that.joiningDate,_that.device,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeDetails implements EmployeeDetails {
  const _EmployeeDetails({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'is_active_user') required this.isActiveUser, required this.email, @JsonKey(name: 'full_name') required this.fullName, required this.department, required this.role, required this.manager, @JsonKey(name: 'joining_date') required this.joiningDate, required this.device, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _EmployeeDetails.fromJson(Map<String, dynamic> json) => _$EmployeeDetailsFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'is_active_user') final  bool isActiveUser;
@override final  String email;
@override@JsonKey(name: 'full_name') final  String fullName;
@override final  String department;
@override final  String role;
@override final  String manager;
@override@JsonKey(name: 'joining_date') final  DateTime joiningDate;
@override final  String device;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;

/// Create a copy of EmployeeDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeDetailsCopyWith<_EmployeeDetails> get copyWith => __$EmployeeDetailsCopyWithImpl<_EmployeeDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeDetails&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isActiveUser, isActiveUser) || other.isActiveUser == isActiveUser)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.department, department) || other.department == department)&&(identical(other.role, role) || other.role == role)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.joiningDate, joiningDate) || other.joiningDate == joiningDate)&&(identical(other.device, device) || other.device == device)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,isActiveUser,email,fullName,department,role,manager,joiningDate,device,createdAt,updatedAt);

@override
String toString() {
  return 'EmployeeDetails(userId: $userId, isActiveUser: $isActiveUser, email: $email, fullName: $fullName, department: $department, role: $role, manager: $manager, joiningDate: $joiningDate, device: $device, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeDetailsCopyWith<$Res> implements $EmployeeDetailsCopyWith<$Res> {
  factory _$EmployeeDetailsCopyWith(_EmployeeDetails value, $Res Function(_EmployeeDetails) _then) = __$EmployeeDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'is_active_user') bool isActiveUser, String email,@JsonKey(name: 'full_name') String fullName, String department, String role, String manager,@JsonKey(name: 'joining_date') DateTime joiningDate, String device,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt
});




}
/// @nodoc
class __$EmployeeDetailsCopyWithImpl<$Res>
    implements _$EmployeeDetailsCopyWith<$Res> {
  __$EmployeeDetailsCopyWithImpl(this._self, this._then);

  final _EmployeeDetails _self;
  final $Res Function(_EmployeeDetails) _then;

/// Create a copy of EmployeeDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? isActiveUser = null,Object? email = null,Object? fullName = null,Object? department = null,Object? role = null,Object? manager = null,Object? joiningDate = null,Object? device = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_EmployeeDetails(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isActiveUser: null == isActiveUser ? _self.isActiveUser : isActiveUser // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as String,joiningDate: null == joiningDate ? _self.joiningDate : joiningDate // ignore: cast_nullable_to_non_nullable
as DateTime,device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
