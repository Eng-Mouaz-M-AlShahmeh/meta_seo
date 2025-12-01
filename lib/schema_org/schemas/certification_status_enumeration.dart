import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates the different statuses of a Certification (Active and
/// Inactive).
/// See https://schema.org/CertificationStatusEnumeration
enum SchemaCertificationStatusEnumeration implements SchemaSerializable {
  /// Specifies that a certification is active.
  certificationActive('https://schema.org/CertificationStatusEnumeration'),

  /// Specifies that a certification is inactive (no longer in effect).
  certificationInactive('https://schema.org/CertificationStatusEnumeration');

  /// Constructor for [SchemaCertificationStatusEnumeration]
  const SchemaCertificationStatusEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaCertificationStatusEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
