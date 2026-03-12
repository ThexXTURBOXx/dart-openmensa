import 'package:freezed_annotation/freezed_annotation.dart';

part 'canteen.freezed.dart';
part 'canteen.g.dart';

/// Models a canteen containing information about its metadata.
@freezed
abstract class Canteen with _$Canteen {
  const Canteen._();

  /// Construct a new canteen instance.
  const factory Canteen({
    /// The canteen's internal ID.
    required int id,

    /// The canteen's name.
    required String name,

    /// The canteen's city.
    required String city,

    /// The canteen's address.
    required String address,

    /// The canteen's coordinates (lat-long).
    required List<double> coordinates,
  }) = _Canteen;

  /// Read a canteen from parsed JSON.
  factory Canteen.fromJson(Map<String, dynamic> json) =>
      _$CanteenFromJson(json);

  /// The canteen's latitude.
  double get latitude => coordinates[0];

  /// The canteen's longitude.
  double get longitude => coordinates[1];
}
