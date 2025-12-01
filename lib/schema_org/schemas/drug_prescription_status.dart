import 'package:meta_seo/schema_org/schemas.dart';

/// Indicates whether this drug is available by prescription or
/// over-the-counter.
/// See https://schema.org/DrugPrescriptionStatus
enum SchemaDrugPrescriptionStatus implements SchemaMedicalEnumeration {
  /// The character of a medical substance, typically a medicine, of being
  /// available over the counter or not.
  oTC('https://schema.org/DrugPrescriptionStatus'),

  /// Available by prescription only.
  prescriptionOnly('https://schema.org/DrugPrescriptionStatus');

  /// Constructor for [SchemaDrugPrescriptionStatus]
  const SchemaDrugPrescriptionStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDrugPrescriptionStatus] to JSON-LD
  String toJsonLd() => value;
}
