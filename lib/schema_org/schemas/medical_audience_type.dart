import 'package:meta_seo/schema_org/schemas.dart';

/// Target audiences types for medical web pages. Enumerated type.
/// See https://schema.org/MedicalAudienceType
enum SchemaMedicalAudienceType implements SchemaMedicalEnumeration {
  /// Medical clinicians, including practicing physicians and other medical
  /// professionals involved in clinical practice.
  clinician('https://schema.org/MedicalAudienceType'),

  /// Medical researchers.
  medicalResearcher('https://schema.org/MedicalAudienceType');

  /// Constructor for [SchemaMedicalAudienceType]
  const SchemaMedicalAudienceType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalAudienceType] to JSON-LD
  String toJsonLd() => value;
}
