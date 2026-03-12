import 'dart:convert';

/// The type for a JSON to object parser.
typedef JsonParser<T> = T Function(Map<String, dynamic> json);

/// Parses a list from the given JSON string using the given parser.
List<T> parseList<T>(String source, JsonParser<T> parser) {
  final decoded = _decode(source);
  if (decoded is! List) return <T>[];
  return decoded
      .whereType<Map<String, dynamic>>()
      .map((json) => parser(json))
      .toList();
}

/// Parses an object from the given JSON string using the given parser.
T? parseObject<T>(String source, JsonParser<T> parser) {
  final decoded = _decode(source);
  return (decoded is Map<String, dynamic>) ? parser(decoded) : null;
}

/// Decodes the given JSON string into a dynamic object.
dynamic _decode(String source) => source.isEmpty ? null : json.decode(source);

/// Extension to offer methods for better handling with the OpenMensa API.
extension OpenMensaDate on DateTime {
  /// Converts to a OpenMensa API-formatted string
  String toOpenMensaString() {
    final y = year.toString().padLeft(4, '0');
    final m = month.toString().padLeft(2, '0');
    final d = day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }
}
