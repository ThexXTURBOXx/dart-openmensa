// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meal _$MealFromJson(Map<String, dynamic> json) => _Meal(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  notes: (json['notes'] as List<dynamic>).map((e) => e as String).toList(),
  category: json['category'] as String,
  studentPrice: (_readStudentPrice(json, 'studentPrice') as num?)?.toDouble(),
  employeePrice: (_readEmployeePrice(json, 'employeePrice') as num?)
      ?.toDouble(),
  pupilPrice: (_readPupilPrice(json, 'pupilPrice') as num?)?.toDouble(),
  othersPrice: (_readOthersPrice(json, 'othersPrice') as num?)?.toDouble(),
);

Map<String, dynamic> _$MealToJson(_Meal instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'notes': instance.notes,
  'category': instance.category,
  'studentPrice': instance.studentPrice,
  'employeePrice': instance.employeePrice,
  'pupilPrice': instance.pupilPrice,
  'othersPrice': instance.othersPrice,
};
