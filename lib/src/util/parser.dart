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
