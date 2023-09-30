import 'package:http/http.dart' as http;
import 'package:openmensa/src/dto/canteen.dart';
import 'package:openmensa/src/dto/day.dart';
import 'package:openmensa/src/dto/day_menu.dart';
import 'package:openmensa/src/dto/meal.dart';
import 'package:openmensa/src/util/parser.dart';

/// The HTTP status code for OK messages.
const httpOkay = 200;

/// OpenMensa's API base URL.
const apiBaseUrl = 'openmensa.org';

/// OpenMensa's API base endpoint.
const apiBasePath = 'api/v2/';

/// Provides simple access to OpenMensa's API services.
class OpenMensaAPI {
  /// The HTTP Client to use.
  final http.Client _client;

  // Whether or not to use HTTP for requests.
  final bool unsafe;

  /// Construct a new API instance.
  OpenMensaAPI({http.Client? httpClient, this.unsafe = false})
      : _client = httpClient ?? http.Client();

  /// Returns all available canteens with optional pagination parameters.
  Future<List<Canteen>> getCanteens({int? page, int? limit}) async => parseList(
        await getResponse('canteens', page: page, limit: limit),
        Canteen.fromJson,
      );

  /// Returns info about a canteen with the given ID.
  Future<Canteen?> getCanteen(int canteenId) async =>
      parseObject(await getResponse('canteens/$canteenId'), Canteen.fromJson);

  /// Returns a list of all currently available days for a given
  /// canteen with optional pagination parameters.
  Future<List<Day>> getDays(int canteenId, {int? page, int? limit}) async =>
      parseList(
        await getResponse(
          'canteens/$canteenId/days',
          page: page,
          limit: limit,
        ),
        Day.fromJson,
      );

  /// Returns a day object for the given canteen ID and date.
  Future<Day?> getDay(int canteenId, String dayDate) async => parseObject(
        await getResponse('canteens/$canteenId/days/$dayDate'),
        Day.fromJson,
      );

  /// Returns all meals of the given day in the given canteen with
  /// optional pagination parameters.
  Future<List<Meal>> getMealsOfDay(
    int canteenId,
    String dayDate, {
    int? page,
    int? limit,
  }) async =>
      parseList(
        await getResponse(
          'canteens/$canteenId/days/$dayDate/meals',
          page: page,
          limit: limit,
        ),
        Meal.fromJson,
      );

  /// Returns all available meals of the given canteen with optional
  /// pagination parameters.
  Future<List<DayMenu>> getMealsOfCanteen(
    int canteenId, {
    int? page,
    int? limit,
  }) async =>
      parseList(
        await getResponse(
          'canteens/$canteenId/meals',
          page: page,
          limit: limit,
        ),
        DayMenu.fromJson,
      );

  /// Returns a meal at the given canteen at a given date with the given ID.
  Future<Meal?> getMeal(int canteenId, String dayDate, int mealId) async =>
      parseObject(
        await getResponse('canteens/$canteenId/days/$dayDate/meals/$mealId'),
        Meal.fromJson,
      );

  /// Executes a GET request at the given API endpoint with optional
  /// pagination parameters.
  Future<String> getResponse(String endpoint, {int? page, int? limit}) async {
    final params = <String, dynamic>{};
    if (page != null) {
      params['page'] = '$page';
    }
    if (limit != null) {
      params['limit'] = '$limit';
    }
    final uri = unsafe
        ? Uri.http(apiBaseUrl, '$apiBasePath$endpoint', params)
        : Uri.https(apiBaseUrl, '$apiBasePath$endpoint', params);
    final response = await _client.get(uri);

    if (response.statusCode != httpOkay) {
      throw http.ClientException(
        'Got unexpected status code ${response.statusCode}',
        uri,
      );
    }
    return response.statusCode != httpOkay ? '' : response.body;
  }
}
