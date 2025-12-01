import 'package:meta_seo/schema_org/schemas.dart';

/// An enumeration that describes different types of medical procedures.
/// See https://schema.org/MedicalProcedureType
enum SchemaMedicalProcedureType implements SchemaMedicalEnumeration {
  /// A type of medical procedure that involves noninvasive techniques.
  noninvasiveProcedure('https://schema.org/MedicalProcedureType'),

  /// A type of medical procedure that involves percutaneous techniques,
  /// where access to organs or tissue is achieved via needle-puncture of
  /// the skin. For example, catheter-based procedures like stent delivery.
  percutaneousProcedure('https://schema.org/MedicalProcedureType');

  /// Constructor for [SchemaMedicalProcedureType]
  const SchemaMedicalProcedureType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalProcedureType] to JSON-LD
  String toJsonLd() => value;
}
