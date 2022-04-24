import 'package:equatable/equatable.dart';

/// Models a meal containing information about
/// its metadata.
class Meal extends Equatable {
  /// The meal's internal ID.
  final int id;

  /// The meal's name.
  final String name;

  /// The meal's notes. Usually saves useful
  /// information for vegetarians et al.
  final List<String> notes;

  /// The meal's price for students.
  final double? studentPrice;

  /// The meal's price for employees.
  final double? employeePrice;

  /// The meal's price for pupils.
  final double? pupilPrice;

  /// The meal's price for others.
  final double? othersPrice;

  /// The meal's category.
  final String category;

  /// Construct a new meal instance.
  const Meal({
    required this.id,
    required this.name,
    required this.notes,
    required this.studentPrice,
    required this.employeePrice,
    required this.pupilPrice,
    required this.othersPrice,
    required this.category,
  });

  /// Read a meal from parsed JSON.
  factory Meal.fromJson(json) => Meal(
        id: json['id'] as int,
        name: json['name'] as String,
        notes: (json['notes'] as List<dynamic>).map((n) => '$n').toList(),
        studentPrice: json['prices']['students'] as double?,
        employeePrice: json['prices']['employees'] as double?,
        pupilPrice: json['prices']['pupils'] as double?,
        othersPrice: json['prices']['others'] as double?,
        category: json['category'] as String,
      );

  /// The day's properties.
  /// See [Equatable.props] for more information.
  @override
  List<Object> get props => [
        id,
        name,
        notes,
        studentPrice ?? 'null',
        employeePrice ?? 'null',
        pupilPrice ?? 'null',
        othersPrice ?? 'null',
        category
      ];

  /// The day should get an automatically generated
  /// [toString] method, based on [props].
  /// See [Equatable.stringify] for more information.
  @override
  bool get stringify => true;
}
