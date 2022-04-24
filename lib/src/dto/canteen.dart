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
  const Canteen({
    required this.id,
    required this.name,
    required this.city,
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  /// Read a canteen from parsed JSON.
  factory Canteen.fromJson(json) => Canteen(
        id: json['id'] as int,
        name: json['name'] as String,
        city: json['city'] as String,
        address: json['address'] as String,
        latitude: json['coordinates'][0] as double,
        longitude: json['coordinates'][1] as double,
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
