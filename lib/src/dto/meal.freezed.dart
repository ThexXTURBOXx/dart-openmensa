// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Meal {

/// The meal's internal ID.
 int get id;/// The meal's name.
 String get name;/// The meal's notes. Usually saves useful
/// information for vegetarians et al.
 List<String> get notes;/// The meal's category.
 String get category;/// The meal's price for students.
@JsonKey(readValue: _readStudentPrice) double? get studentPrice;/// The meal's price for employees.
@JsonKey(readValue: _readEmployeePrice) double? get employeePrice;/// The meal's price for pupils.
@JsonKey(readValue: _readPupilPrice) double? get pupilPrice;/// The meal's price for others.
@JsonKey(readValue: _readOthersPrice) double? get othersPrice;
/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealCopyWith<Meal> get copyWith => _$MealCopyWithImpl<Meal>(this as Meal, _$identity);

  /// Serializes this Meal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.notes, notes)&&(identical(other.category, category) || other.category == category)&&(identical(other.studentPrice, studentPrice) || other.studentPrice == studentPrice)&&(identical(other.employeePrice, employeePrice) || other.employeePrice == employeePrice)&&(identical(other.pupilPrice, pupilPrice) || other.pupilPrice == pupilPrice)&&(identical(other.othersPrice, othersPrice) || other.othersPrice == othersPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(notes),category,studentPrice,employeePrice,pupilPrice,othersPrice);

@override
String toString() {
  return 'Meal(id: $id, name: $name, notes: $notes, category: $category, studentPrice: $studentPrice, employeePrice: $employeePrice, pupilPrice: $pupilPrice, othersPrice: $othersPrice)';
}


}

/// @nodoc
abstract mixin class $MealCopyWith<$Res>  {
  factory $MealCopyWith(Meal value, $Res Function(Meal) _then) = _$MealCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<String> notes, String category,@JsonKey(readValue: _readStudentPrice) double? studentPrice,@JsonKey(readValue: _readEmployeePrice) double? employeePrice,@JsonKey(readValue: _readPupilPrice) double? pupilPrice,@JsonKey(readValue: _readOthersPrice) double? othersPrice
});




}
/// @nodoc
class _$MealCopyWithImpl<$Res>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._self, this._then);

  final Meal _self;
  final $Res Function(Meal) _then;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? notes = null,Object? category = null,Object? studentPrice = freezed,Object? employeePrice = freezed,Object? pupilPrice = freezed,Object? othersPrice = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as List<String>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,studentPrice: freezed == studentPrice ? _self.studentPrice : studentPrice // ignore: cast_nullable_to_non_nullable
as double?,employeePrice: freezed == employeePrice ? _self.employeePrice : employeePrice // ignore: cast_nullable_to_non_nullable
as double?,pupilPrice: freezed == pupilPrice ? _self.pupilPrice : pupilPrice // ignore: cast_nullable_to_non_nullable
as double?,othersPrice: freezed == othersPrice ? _self.othersPrice : othersPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Meal].
extension MealPatterns on Meal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meal value)  $default,){
final _that = this;
switch (_that) {
case _Meal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meal value)?  $default,){
final _that = this;
switch (_that) {
case _Meal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  List<String> notes,  String category, @JsonKey(readValue: _readStudentPrice)  double? studentPrice, @JsonKey(readValue: _readEmployeePrice)  double? employeePrice, @JsonKey(readValue: _readPupilPrice)  double? pupilPrice, @JsonKey(readValue: _readOthersPrice)  double? othersPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that.id,_that.name,_that.notes,_that.category,_that.studentPrice,_that.employeePrice,_that.pupilPrice,_that.othersPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  List<String> notes,  String category, @JsonKey(readValue: _readStudentPrice)  double? studentPrice, @JsonKey(readValue: _readEmployeePrice)  double? employeePrice, @JsonKey(readValue: _readPupilPrice)  double? pupilPrice, @JsonKey(readValue: _readOthersPrice)  double? othersPrice)  $default,) {final _that = this;
switch (_that) {
case _Meal():
return $default(_that.id,_that.name,_that.notes,_that.category,_that.studentPrice,_that.employeePrice,_that.pupilPrice,_that.othersPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  List<String> notes,  String category, @JsonKey(readValue: _readStudentPrice)  double? studentPrice, @JsonKey(readValue: _readEmployeePrice)  double? employeePrice, @JsonKey(readValue: _readPupilPrice)  double? pupilPrice, @JsonKey(readValue: _readOthersPrice)  double? othersPrice)?  $default,) {final _that = this;
switch (_that) {
case _Meal() when $default != null:
return $default(_that.id,_that.name,_that.notes,_that.category,_that.studentPrice,_that.employeePrice,_that.pupilPrice,_that.othersPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meal extends Meal {
  const _Meal({required this.id, required this.name, required final  List<String> notes, required this.category, @JsonKey(readValue: _readStudentPrice) this.studentPrice, @JsonKey(readValue: _readEmployeePrice) this.employeePrice, @JsonKey(readValue: _readPupilPrice) this.pupilPrice, @JsonKey(readValue: _readOthersPrice) this.othersPrice}): _notes = notes,super._();
  factory _Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

/// The meal's internal ID.
@override final  int id;
/// The meal's name.
@override final  String name;
/// The meal's notes. Usually saves useful
/// information for vegetarians et al.
 final  List<String> _notes;
/// The meal's notes. Usually saves useful
/// information for vegetarians et al.
@override List<String> get notes {
  if (_notes is EqualUnmodifiableListView) return _notes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notes);
}

/// The meal's category.
@override final  String category;
/// The meal's price for students.
@override@JsonKey(readValue: _readStudentPrice) final  double? studentPrice;
/// The meal's price for employees.
@override@JsonKey(readValue: _readEmployeePrice) final  double? employeePrice;
/// The meal's price for pupils.
@override@JsonKey(readValue: _readPupilPrice) final  double? pupilPrice;
/// The meal's price for others.
@override@JsonKey(readValue: _readOthersPrice) final  double? othersPrice;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealCopyWith<_Meal> get copyWith => __$MealCopyWithImpl<_Meal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._notes, _notes)&&(identical(other.category, category) || other.category == category)&&(identical(other.studentPrice, studentPrice) || other.studentPrice == studentPrice)&&(identical(other.employeePrice, employeePrice) || other.employeePrice == employeePrice)&&(identical(other.pupilPrice, pupilPrice) || other.pupilPrice == pupilPrice)&&(identical(other.othersPrice, othersPrice) || other.othersPrice == othersPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_notes),category,studentPrice,employeePrice,pupilPrice,othersPrice);

@override
String toString() {
  return 'Meal(id: $id, name: $name, notes: $notes, category: $category, studentPrice: $studentPrice, employeePrice: $employeePrice, pupilPrice: $pupilPrice, othersPrice: $othersPrice)';
}


}

/// @nodoc
abstract mixin class _$MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) _then) = __$MealCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<String> notes, String category,@JsonKey(readValue: _readStudentPrice) double? studentPrice,@JsonKey(readValue: _readEmployeePrice) double? employeePrice,@JsonKey(readValue: _readPupilPrice) double? pupilPrice,@JsonKey(readValue: _readOthersPrice) double? othersPrice
});




}
/// @nodoc
class __$MealCopyWithImpl<$Res>
    implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(this._self, this._then);

  final _Meal _self;
  final $Res Function(_Meal) _then;

/// Create a copy of Meal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? notes = null,Object? category = null,Object? studentPrice = freezed,Object? employeePrice = freezed,Object? pupilPrice = freezed,Object? othersPrice = freezed,}) {
  return _then(_Meal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self._notes : notes // ignore: cast_nullable_to_non_nullable
as List<String>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,studentPrice: freezed == studentPrice ? _self.studentPrice : studentPrice // ignore: cast_nullable_to_non_nullable
as double?,employeePrice: freezed == employeePrice ? _self.employeePrice : employeePrice // ignore: cast_nullable_to_non_nullable
as double?,pupilPrice: freezed == pupilPrice ? _self.pupilPrice : pupilPrice // ignore: cast_nullable_to_non_nullable
as double?,othersPrice: freezed == othersPrice ? _self.othersPrice : othersPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
