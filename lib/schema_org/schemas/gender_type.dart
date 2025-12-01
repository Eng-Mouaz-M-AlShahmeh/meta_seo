import 'package:meta_seo/schema_org/schemas.dart';

/// An enumeration of genders.
/// See https://schema.org/GenderType
enum SchemaGenderType implements SchemaSerializable {
  /// The female gender.
  female('https://schema.org/GenderType'),

  /// The male gender.
  male('https://schema.org/GenderType');

  /// Constructor for [SchemaGenderType]
  const SchemaGenderType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGenderType] to JSON-LD
  @override
  String toJsonLd() => value;
}
