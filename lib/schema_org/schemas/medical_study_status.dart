import 'package:meta_seo/schema_org/schemas.dart';

/// The status of a medical study. Enumerated type.
/// See https://schema.org/MedicalStudyStatus
enum SchemaMedicalStudyStatus implements SchemaMedicalEnumeration {
  /// Active, but not recruiting new participants.
  activeNotRecruiting('https://schema.org/MedicalStudyStatus'),

  /// Completed.
  completed('https://schema.org/MedicalStudyStatus'),

  /// Enrolling participants by invitation only.
  enrollingByInvitation('https://schema.org/MedicalStudyStatus'),

  /// Not yet recruiting.
  notYetRecruiting('https://schema.org/MedicalStudyStatus'),

  /// Recruiting participants.
  recruiting('https://schema.org/MedicalStudyStatus'),

  /// Results are available.
  resultsAvailable('https://schema.org/MedicalStudyStatus'),

  /// Results are not available.
  resultsNotAvailable('https://schema.org/MedicalStudyStatus'),

  /// Suspended.
  suspended('https://schema.org/MedicalStudyStatus'),

  /// Terminated.
  terminated('https://schema.org/MedicalStudyStatus'),

  /// Withdrawn.
  withdrawn('https://schema.org/MedicalStudyStatus');

  /// Constructor for [SchemaMedicalStudyStatus]
  const SchemaMedicalStudyStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalStudyStatus] to JSON-LD
  String toJsonLd() => value;
}
