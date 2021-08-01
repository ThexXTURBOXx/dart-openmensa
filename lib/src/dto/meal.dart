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
  const Meal(
    this.id,
    this.name,
    this.notes,
    this.studentPrice,
    this.employeePrice,
    this.pupilPrice,
    this.othersPrice,
    this.category,
  );

  /// Read a meal from parsed JSON.
  static Meal fromJson(dynamic json) => Meal(
        json['id'] as int,
        json['name'] as String,
        (json['notes'] as List<dynamic>).map((n) => '$n').toList(),
        json['prices']['students'] as double?,
        json['prices']['employees'] as double?,
        json['prices']['pupils'] as double?,
        json['prices']['others'] as double?,
        json['category'] as String,
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
