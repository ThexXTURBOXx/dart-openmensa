// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'canteen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Canteen {

/// The canteen's internal ID.
 int get id;/// The canteen's name.
 String get name;/// The canteen's city.
 String get city;/// The canteen's address.
 String get address;/// The canteen's coordinates (lat-long).
 List<double> get coordinates;
/// Create a copy of Canteen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanteenCopyWith<Canteen> get copyWith => _$CanteenCopyWithImpl<Canteen>(this as Canteen, _$identity);

  /// Serializes this Canteen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Canteen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.coordinates, coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,city,address,const DeepCollectionEquality().hash(coordinates));

@override
String toString() {
  return 'Canteen(id: $id, name: $name, city: $city, address: $address, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class $CanteenCopyWith<$Res>  {
  factory $CanteenCopyWith(Canteen value, $Res Function(Canteen) _then) = _$CanteenCopyWithImpl;
@useResult
$Res call({
 int id, String name, String city, String address, List<double> coordinates
});




}
/// @nodoc
class _$CanteenCopyWithImpl<$Res>
    implements $CanteenCopyWith<$Res> {
  _$CanteenCopyWithImpl(this._self, this._then);

  final Canteen _self;
  final $Res Function(Canteen) _then;

/// Create a copy of Canteen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? city = null,Object? address = null,Object? coordinates = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [Canteen].
extension CanteenPatterns on Canteen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Canteen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Canteen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Canteen value)  $default,){
final _that = this;
switch (_that) {
case _Canteen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Canteen value)?  $default,){
final _that = this;
switch (_that) {
case _Canteen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String city,  String address,  List<double> coordinates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Canteen() when $default != null:
return $default(_that.id,_that.name,_that.city,_that.address,_that.coordinates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String city,  String address,  List<double> coordinates)  $default,) {final _that = this;
switch (_that) {
case _Canteen():
return $default(_that.id,_that.name,_that.city,_that.address,_that.coordinates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String city,  String address,  List<double> coordinates)?  $default,) {final _that = this;
switch (_that) {
case _Canteen() when $default != null:
return $default(_that.id,_that.name,_that.city,_that.address,_that.coordinates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Canteen extends Canteen {
  const _Canteen({required this.id, required this.name, required this.city, required this.address, required final  List<double> coordinates}): _coordinates = coordinates,super._();
  factory _Canteen.fromJson(Map<String, dynamic> json) => _$CanteenFromJson(json);

/// The canteen's internal ID.
@override final  int id;
/// The canteen's name.
@override final  String name;
/// The canteen's city.
@override final  String city;
/// The canteen's address.
@override final  String address;
/// The canteen's coordinates (lat-long).
 final  List<double> _coordinates;
/// The canteen's coordinates (lat-long).
@override List<double> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}


/// Create a copy of Canteen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanteenCopyWith<_Canteen> get copyWith => __$CanteenCopyWithImpl<_Canteen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanteenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Canteen&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,city,address,const DeepCollectionEquality().hash(_coordinates));

@override
String toString() {
  return 'Canteen(id: $id, name: $name, city: $city, address: $address, coordinates: $coordinates)';
}


}

/// @nodoc
abstract mixin class _$CanteenCopyWith<$Res> implements $CanteenCopyWith<$Res> {
  factory _$CanteenCopyWith(_Canteen value, $Res Function(_Canteen) _then) = __$CanteenCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String city, String address, List<double> coordinates
});




}
/// @nodoc
class __$CanteenCopyWithImpl<$Res>
    implements _$CanteenCopyWith<$Res> {
  __$CanteenCopyWithImpl(this._self, this._then);

  final _Canteen _self;
  final $Res Function(_Canteen) _then;

/// Create a copy of Canteen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? city = null,Object? address = null,Object? coordinates = null,}) {
  return _then(_Canteen(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
