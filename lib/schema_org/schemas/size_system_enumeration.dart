import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates common size systems for different categories of products, for
/// example "EN-13402" or "UK" for wearables or "Imperial" for screws.
/// See https://schema.org/SizeSystemEnumeration
enum SchemaSizeSystemEnumeration implements SchemaSerializable {
  /// Imperial size system.
  sizeSystemImperial('https://schema.org/SizeSystemEnumeration'),

  /// Metric size system.
  sizeSystemMetric('https://schema.org/SizeSystemEnumeration');

  /// Constructor for [SchemaSizeSystemEnumeration]
  const SchemaSizeSystemEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaSizeSystemEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
