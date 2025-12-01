import 'package:meta_seo/schema_org/schemas.dart';

/// A list of possible statuses for the legal force of a legislation.
/// See https://schema.org/LegalForceStatus
enum SchemaLegalForceStatus implements SchemaStatusEnumeration {
  /// Indicates that a legislation is in force.
  inForce('https://schema.org/LegalForceStatus'),

  /// Indicates that a legislation is currently not in force.
  notInForce('https://schema.org/LegalForceStatus'),

  /// Indicates that parts of the legislation are in force, and parts are
  /// not.
  partiallyInForce('https://schema.org/LegalForceStatus');

  /// Constructor for [SchemaLegalForceStatus]
  const SchemaLegalForceStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaLegalForceStatus] to JSON-LD
  String toJsonLd() => value;
}
