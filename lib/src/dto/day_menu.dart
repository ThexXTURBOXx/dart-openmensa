import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openmensa/src/dto/day.dart';
import 'package:openmensa/src/dto/meal.dart';

part 'day_menu.freezed.dart';
part 'day_menu.g.dart';

/// Models a day menu containing information about
/// a day and the daily available meals.
@Freezed(toJson: false)
abstract class DayMenu with _$DayMenu {
  const DayMenu._();

  /// Construct a new day menu instance.
  const factory DayMenu({
    /// The day menu's day.
    @JsonKey(readValue: _readRoot, includeToJson: false) required Day day,

    /// The day menu's meals.
    required List<Meal> meals,
  }) = _DayMenu;

  /// Read a day menu from parsed JSON.
  factory DayMenu.fromJson(Map<String, dynamic> json) =>
      _$DayMenuFromJson(json);

  /// Custom toJson to flatten the 'day' object manually
  Map<String, dynamic> toJson() => {...day.toJson(), 'meals': meals};
}

Object? _readRoot(Map json, String key) => json;
