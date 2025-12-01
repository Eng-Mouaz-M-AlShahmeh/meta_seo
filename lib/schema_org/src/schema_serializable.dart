/// Base class for all Schema.org classes to implement
abstract class SchemaSerializable {
  /// Serialize a schema to JSON-LD
  dynamic toJsonLd();
}
