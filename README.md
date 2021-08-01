# OpenMensa

<p align="center">
  <a href="https://travis-ci.com/ThexXTURBOXx/dart-openmensa"><img src="https://travis-ci.com/ThexXTURBOXx/dart-openmensa.svg?branch=main"></a>
</p>

A library which provides simple access to OpenMensa's API services for Dart.

## Usage

Add to ``pubspec.yaml``:

```yaml
dependencies:
  openmensa: ^0.0.1
```

A simple usage example:

```dart
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

  // Thanks to equatable, all objects can be
  // easily compared by using the == operator
  print(canteens21[0] == canteens14[1]);
  print(canteens21[0] == canteens14[2]);

  // Get all available information about the meals
  // within the next few days from the canteen 196
  final mealsOfCanteen = await api.getMealsOfCanteen(196);
  print(mealsOfCanteen);
}
```

## Feature requests and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/ThexXTURBOXx/dart-openmensa/issues).
