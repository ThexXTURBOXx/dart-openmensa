// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayMenu {

/// The day menu's day.
@JsonKey(readValue: _readRoot, includeToJson: false) Day get day;/// The day menu's meals.
 List<Meal> get meals;
/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayMenuCopyWith<DayMenu> get copyWith => _$DayMenuCopyWithImpl<DayMenu>(this as DayMenu, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayMenu&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other.meals, meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(meals));

@override
String toString() {
  return 'DayMenu(day: $day, meals: $meals)';
}


}

/// @nodoc
abstract mixin class $DayMenuCopyWith<$Res>  {
  factory $DayMenuCopyWith(DayMenu value, $Res Function(DayMenu) _then) = _$DayMenuCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readRoot, includeToJson: false) Day day, List<Meal> meals
});


$DayCopyWith<$Res> get day;

}
/// @nodoc
class _$DayMenuCopyWithImpl<$Res>
    implements $DayMenuCopyWith<$Res> {
  _$DayMenuCopyWithImpl(this._self, this._then);

  final DayMenu _self;
  final $Res Function(DayMenu) _then;

/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? meals = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as Day,meals: null == meals ? _self.meals : meals // ignore: cast_nullable_to_non_nullable
as List<Meal>,
  ));
}
/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayCopyWith<$Res> get day {
  
  return $DayCopyWith<$Res>(_self.day, (value) {
    return _then(_self.copyWith(day: value));
  });
}
}


/// Adds pattern-matching-related methods to [DayMenu].
extension DayMenuPatterns on DayMenu {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayMenu value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayMenu() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayMenu value)  $default,){
final _that = this;
switch (_that) {
case _DayMenu():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayMenu value)?  $default,){
final _that = this;
switch (_that) {
case _DayMenu() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readRoot, includeToJson: false)  Day day,  List<Meal> meals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayMenu() when $default != null:
return $default(_that.day,_that.meals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readRoot, includeToJson: false)  Day day,  List<Meal> meals)  $default,) {final _that = this;
switch (_that) {
case _DayMenu():
return $default(_that.day,_that.meals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readRoot, includeToJson: false)  Day day,  List<Meal> meals)?  $default,) {final _that = this;
switch (_that) {
case _DayMenu() when $default != null:
return $default(_that.day,_that.meals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createToJson: false)

class _DayMenu extends DayMenu {
  const _DayMenu({@JsonKey(readValue: _readRoot, includeToJson: false) required this.day, required final  List<Meal> meals}): _meals = meals,super._();
  factory _DayMenu.fromJson(Map<String, dynamic> json) => _$DayMenuFromJson(json);

/// The day menu's day.
@override@JsonKey(readValue: _readRoot, includeToJson: false) final  Day day;
/// The day menu's meals.
 final  List<Meal> _meals;
/// The day menu's meals.
@override List<Meal> get meals {
  if (_meals is EqualUnmodifiableListView) return _meals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_meals);
}


/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayMenuCopyWith<_DayMenu> get copyWith => __$DayMenuCopyWithImpl<_DayMenu>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayMenu&&(identical(other.day, day) || other.day == day)&&const DeepCollectionEquality().equals(other._meals, _meals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,const DeepCollectionEquality().hash(_meals));

@override
String toString() {
  return 'DayMenu(day: $day, meals: $meals)';
}


}

/// @nodoc
abstract mixin class _$DayMenuCopyWith<$Res> implements $DayMenuCopyWith<$Res> {
  factory _$DayMenuCopyWith(_DayMenu value, $Res Function(_DayMenu) _then) = __$DayMenuCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readRoot, includeToJson: false) Day day, List<Meal> meals
});


@override $DayCopyWith<$Res> get day;

}
/// @nodoc
class __$DayMenuCopyWithImpl<$Res>
    implements _$DayMenuCopyWith<$Res> {
  __$DayMenuCopyWithImpl(this._self, this._then);

  final _DayMenu _self;
  final $Res Function(_DayMenu) _then;

/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? meals = null,}) {
  return _then(_DayMenu(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as Day,meals: null == meals ? _self._meals : meals // ignore: cast_nullable_to_non_nullable
as List<Meal>,
  ));
}

/// Create a copy of DayMenu
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DayCopyWith<$Res> get day {
  
  return $DayCopyWith<$Res>(_self.day, (value) {
    return _then(_self.copyWith(day: value));
  });
}
}

// dart format on
