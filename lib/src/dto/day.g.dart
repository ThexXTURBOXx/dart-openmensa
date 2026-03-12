// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Day _$DayFromJson(Map<String, dynamic> json) => _Day(
  date: DateTime.parse(json['date'] as String),
  closed: json['closed'] as bool,
);

Map<String, dynamic> _$DayToJson(_Day instance) => <String, dynamic>{
  'date': _dateToOpenMensaString(instance.date),
  'closed': instance.closed,
};
