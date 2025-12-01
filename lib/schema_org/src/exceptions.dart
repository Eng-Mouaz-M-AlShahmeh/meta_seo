// Custom exception for unsupported types
class UnsupportedTypeException implements Exception {
  /// Creates a new instance of [UnsupportedTypeException]
  UnsupportedTypeException(this.type);

  /// The type that is not supported
  final Type type;

  /// Returns a string representation of the exception
  @override
  String toString() => 'UnsupportedTypeException: $type';
}
