import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

/// Models a meal containing information about
/// its metadata.
@freezed
abstract class Meal with _$Meal {
  const Meal._();

  /// Construct a new meal instance.
  const factory Meal({
    /// The meal's internal ID.
    required int id,

    /// The meal's name.
    required String name,

    /// The meal's notes. Usually saves useful
    /// information for vegetarians et al.
    required List<String> notes,

    /// The meal's category.
    required String category,

    /// The meal's price for students.
    @JsonKey(readValue: _readStudentPrice) double? studentPrice,

    /// The meal's price for employees.
    @JsonKey(readValue: _readEmployeePrice) double? employeePrice,

    /// The meal's price for pupils.
    @JsonKey(readValue: _readPupilPrice) double? pupilPrice,

    /// The meal's price for others.
    @JsonKey(readValue: _readOthersPrice) double? othersPrice,
  }) = _Meal;

  /// Read a meal from parsed JSON.
  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  /// Converts a meal to JSON.
  @override
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'notes': notes,
    'category': category,
    'prices': {
      'students': studentPrice,
      'employees': employeePrice,
      'pupils': pupilPrice,
      'others': othersPrice,
    },
  };
}

Object? _readStudentPrice(Map json, String key) => json['prices']?['students'];

Object? _readEmployeePrice(Map json, String key) =>
    json['prices']?['employees'];

Object? _readPupilPrice(Map json, String key) => json['prices']?['pupils'];

Object? _readOthersPrice(Map json, String key) => json['prices']?['others'];
