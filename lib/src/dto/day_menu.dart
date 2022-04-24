import 'package:equatable/equatable.dart';
import 'package:openmensa/src/dto/day.dart';
import 'package:openmensa/src/dto/meal.dart';
import 'package:openmensa/src/util/parser.dart';

/// Models a day menu containing information about
/// a day and the daily available meals.
class DayMenu extends Equatable {
  /// The day menu's day.
  final Day day;

  /// The day menu's meals.
  final List<Meal> meals;

  /// Construct a new day menu instance.
  const DayMenu({
    required this.day,
    required this.meals,
  });

  /// Read a day menu from parsed JSON.
  factory DayMenu.fromJson(json) => DayMenu(
        day: Day.fromJson(json),
        meals: parseDecodedList(json['meals'], Meal.fromJson),
      );

  /// The day's properties.
  /// See [Equatable.props] for more information.
  @override
  List<Object> get props => [day, meals];

  /// The day should get an automatically generated
  /// [toString] method, based on [props].
  /// See [Equatable.stringify] for more information.
  @override
  bool get stringify => true;
}
