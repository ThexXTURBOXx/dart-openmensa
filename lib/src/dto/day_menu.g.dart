// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayMenu _$DayMenuFromJson(Map<String, dynamic> json) => _DayMenu(
  day: Day.fromJson(json['day'] as Map<String, dynamic>),
  meals: (json['meals'] as List<dynamic>)
      .map((e) => Meal.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DayMenuToJson(_DayMenu instance) => <String, dynamic>{
  'day': instance.day,
  'meals': instance.meals,
};
