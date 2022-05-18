import 'dart:convert';

/// The type for a JSON to object parser.
typedef JsonParser<T> = T Function(dynamic input);

/// Parses a list from the given JSON string using the given parser.
List<T> parseList<T>(String source, JsonParser<T> parser) =>
    parseDecodedList(_decodeJson(source), parser);

/// Parses a list from the given decoded JSON using the given parser.
List<T> parseDecodedList<T>(dynamic decoded, JsonParser<T> parser) =>
    decoded == null
        ? <T>[]
        : (decoded as List<dynamic>).map((obj) => parser(obj)).toList();

/// Parses an object from the given JSON string using the given parser.
T? parseObject<T>(String source, JsonParser<T> parser) =>
    parseDecodedObject(_decodeJson(source), parser);

/// Parses an object from the given decoded JSON using the given parser.
T? parseDecodedObject<T>(dynamic decoded, JsonParser<T> parser) =>
    decoded == null ? null : parser(decoded);

/// Decodes the given JSON string into a dynamic object.
dynamic _decodeJson(String jsonString) =>
    jsonString != '' ? json.decode(jsonString) : null;

extension OpenMensaDate on DateTime {
  String toOpenMensaString() {
    final y =
        (year >= -9999 && year <= 9999) ? _fourDigits(year) : _sixDigits(year);
    final m = _twoDigits(month);
    final d = _twoDigits(day);
    return '$y-$m-$d';
  }

  String _fourDigits(int n) {
    final absN = n.abs();
    final sign = n < 0 ? '-' : '';
    if (absN >= 1000) {
      return '$n';
    }
    if (absN >= 100) {
      return '${sign}0$absN';
    }
    if (absN >= 10) {
      return '${sign}00$absN';
    }
    return '${sign}000$absN';
  }

  String _sixDigits(int n) {
    final absN = n.abs();
    final sign = n < 0 ? '-' : '+';
    if (absN >= 100000) {
      return '$sign$absN';
    }
    return '${sign}0$absN';
  }

  String _twoDigits(int n) {
    if (n >= 10) {
      return '$n';
    }
    return '0$n';
  }
}
