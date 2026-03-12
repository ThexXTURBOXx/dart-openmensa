import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openmensa/openmensa.dart';

part 'day.freezed.dart';
part 'day.g.dart';

/// Models a day containing information about
/// whether a canteen is closed or not.
@freezed
abstract class Day with _$Day {
  const Day._();

  /// Construct a new day instance.
  const factory Day({
    /// The requested date.
    @JsonKey(fromJson: DateTime.parse, toJson: _dateToOpenMensaString)
    required DateTime date,

    /// Whether the canteen is closed or not.
    required bool closed,
  }) = _Day;

  /// Read a day from parsed JSON.
  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

String _dateToOpenMensaString(DateTime date) => date.toOpenMensaString();
