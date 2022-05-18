import 'package:equatable/equatable.dart';
import 'package:openmensa/openmensa.dart';

/// Models a day containing information about
/// whether a canteen is closed or not.
class Day extends Equatable {
  /// The requested date.
  final DateTime date;

  /// Whether the canteen is closed or not.
  final bool closed;

  /// Construct a new day instance.
  const Day({
    required this.date,
    required this.closed,
  });

  /// Read a day from parsed JSON.
  factory Day.fromJson(json) => Day(
        date: DateTime.parse(json['date'] as String),
        closed: json['closed'] as bool,
      );

  Map<String, dynamic> toJson() => {
        'date': date.toOpenMensaString(),
        'closed': closed,
      };

  /// The day's properties.
  /// See [Equatable.props] for more information.
  @override
  List<Object> get props => [date, closed];

  /// The day should get an automatically generated
  /// [toString] method, based on [props].
  /// See [Equatable.stringify] for more information.
  @override
  bool get stringify => true;
}
