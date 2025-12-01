import 'package:meta_seo/schema_org/schemas.dart';

/// Level of evidence for a medical guideline. Enumerated type.
/// See https://schema.org/MedicalEvidenceLevel
enum SchemaMedicalEvidenceLevel implements SchemaMedicalEnumeration {
  /// Data derived from multiple randomized clinical trials or
  /// meta-analyses.
  evidenceLevelA('https://schema.org/MedicalEvidenceLevel'),

  /// Data derived from a single randomized trial, or nonrandomized
  /// studies.
  evidenceLevelB('https://schema.org/MedicalEvidenceLevel'),

  /// Only consensus opinion of experts, case studies, or standard-of-care.
  evidenceLevelC('https://schema.org/MedicalEvidenceLevel');

  /// Constructor for [SchemaMedicalEvidenceLevel]
  const SchemaMedicalEvidenceLevel(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalEvidenceLevel] to JSON-LD
  String toJsonLd() => value;
}
