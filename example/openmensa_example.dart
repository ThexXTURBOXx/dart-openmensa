import 'package:openmensa/openmensa.dart';

/// Provides some simple use-case examples.
Future<void> main() async {
  // Initialize the API client
  final api = OpenMensaAPI();

  // Get the first page of canteens with a limit of 1
  final canteens11 = await api.getCanteens(page: 1, limit: 1);
  // Thanks to equatable, all objects can be easily
  // printed out with a nice representation
  print(canteens11);

  // Get the second page of canteens with a limit of 1
  final canteens21 = await api.getCanteens(page: 2, limit: 1);
  print(canteens21);

  // Get the first page of canteens with a limit of 4
  final canteens14 = await api.getCanteens(page: 1, limit: 4);
  print(canteens14);

  // Thanks to equatable, all objects can be
  // easily compared by using the == operator
  print(canteens21[0] == canteens14[1]);
  print(canteens21[0] == canteens14[2]);

  // Get location data from the canteen 196
  final canteen = await api.getCanteen(196);
  print(canteen);

  // Get information about the current and upcoming days
  // from the canteen 196
  final days = await api.getDays(196);
  print(days);

  // Get information about a specific day (2021-08-02)
  // from the canteen 196
  final day = await api.getDay(196, '2021-08-02');
  print(day);

  // Get all meals on a specific day (2021-08-02)
  // from the canteen 196
  final mealsOfDay = await api.getMealsOfDay(196, '2021-08-02');
  print(mealsOfDay);

  // Get all available information about the meals
  // within the next few days from the canteen 196
  final mealsOfCanteen = await api.getMealsOfCanteen(196);
  print(mealsOfCanteen);

  // Get information about a specific meal (7865601) from
  // a specific day (2021-08-02) from the canteen 196
  final meal = await api.getMeal(196, '2021-08-06', 7865601);
  print(meal);

  // If I somehow forgot to include an endpoint, please open
  // an issue in the GitHub. As a workaround, you can use
  // the getResponse(...) function to get a response anyway.
  // Just be sure to parse it yourself. For examples on how
  // to parse correctly, see the class OpenMensaAPI.
  final response = await api.getResponse(
    'canteens/endpoint',
    page: 1,
    limit: 9,
  );
  print(response);
}
