import 'package:equatable/equatable.dart';

/// Models a canteen containing information about
/// its metadata.
class Canteen extends Equatable {
  /// The canteen's internal ID.
  final int id;

  /// The canteen's name.
  final String name;

  /// The canteen's city.
  final String city;

  /// The canteen's address.
  final String address;

  /// The canteen's longitude.
  final double longitude;

  /// The canteen's latitude.
  final double latitude;

  /// Construct a new canteen instance.
  const Canteen(
    this.id,
    this.name,
    this.city,
    this.address,
    this.latitude,
    this.longitude,
  );

  /// Read a canteen from parsed JSON.
  static Canteen fromJson(dynamic json) => Canteen(
        json['id'] as int,
        json['name'] as String,
        json['city'] as String,
        json['address'] as String,
        json['coordinates'][0] as double,
        json['coordinates'][1] as double,
      );

  /// The canteen's properties.
  /// See [Equatable.props] for more information.
  @override
  List<Object> get props => [id, name, city, address, latitude, longitude];

  /// The canteen should get an automatically generated
  /// [toString] method, based on [props].
  /// See [Equatable.stringify] for more information.
  @override
  bool get stringify => true;
}
