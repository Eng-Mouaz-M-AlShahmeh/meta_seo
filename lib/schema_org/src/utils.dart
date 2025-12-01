import 'package:meta_seo/schema_org/src/schema_serializable.dart';

import 'exceptions.dart';

/// Converts a dynamic value to JSON
/// The [types] parameter is used to specify the expected types of the value.
/// Its value will restric the expectations and ensure that correc types are
/// passed into the function.
dynamic convertToJsonLd(dynamic val, [List<Type> types = const []]) {
  // If the value is null, return null
  if (val == null) {
    return null;
  }

  // Scalars are already JSON-serializable
  if (val is String || val is num || val is bool) {
    return val;
  }

  // If not explicitly expecting specific types, simply convert to JSON
  if (types.isEmpty) {
    return val.toJson();
  }

  // Some Schema attributes can be one of many types. The class that implements
  // it has defined it as dynamic so we need to check the runtime type of the
  // object is one of the expected types.
  for (Type type in types) {
    if (val.runtimeType == type) {
      if (val is SchemaSerializable) {
        return val.toJsonLd();
      }
      return val.toJson();
    }
  }
  throw UnsupportedTypeException(val.runtimeType);
}

/// Removes all empty values from a JSON-LD object
/// A JSON-LD object is also considered empty if it only has its type and context
/// properties.
dynamic removeEmpty(Map<String, dynamic> json) {
  final Map<String, dynamic> output = {};
  json.forEach((key, value) {
    if (value is Map<String, dynamic>) {
      final cleanedValue = removeEmpty(value);
      if (cleanedValue.keys
          .toSet()
          .difference({'@context', '@type'}).isNotEmpty) {
        output[key] = cleanedValue;
      }
    } else if (value != null) {
      output[key] = value;
    }
  });

  return output;
}
