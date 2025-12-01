import 'package:meta_seo/schema_org/schemas.dart';

/// Enumeration(s) for use with [SchemameasurementMethod].
/// See https://schema.org/MeasurementMethodEnum
enum SchemaMeasurementMethodEnum implements SchemaSerializable {
  /// An example [SchemaMeasurementMethodEnum] (to remove when real enums
  /// are added).
  exampleMeasurementMethodEnum('https://schema.org/MeasurementMethodEnum');

  /// Constructor for [SchemaMeasurementMethodEnum]
  const SchemaMeasurementMethodEnum(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMeasurementMethodEnum] to JSON-LD
  @override
  String toJsonLd() => value;
}
