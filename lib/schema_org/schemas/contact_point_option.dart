import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerated options related to a ContactPoint.
/// See https://schema.org/ContactPointOption
enum SchemaContactPointOption implements SchemaSerializable {
  /// Uses devices to support users with hearing impairments.
  hearingImpairedSupported('https://schema.org/ContactPointOption'),

  /// The associated telephone number is toll free.
  tollFree('https://schema.org/ContactPointOption');

  /// Constructor for [SchemaContactPointOption]
  const SchemaContactPointOption(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaContactPointOption] to JSON-LD
  @override
  String toJsonLd() => value;
}
