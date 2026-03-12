// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canteen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Canteen _$CanteenFromJson(Map<String, dynamic> json) => _Canteen(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  city: json['city'] as String,
  address: json['address'] as String,
  coordinates: (json['coordinates'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
);

Map<String, dynamic> _$CanteenToJson(_Canteen instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'city': instance.city,
  'address': instance.address,
  'coordinates': instance.coordinates,
};
