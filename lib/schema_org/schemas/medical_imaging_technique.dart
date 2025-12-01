import 'package:meta_seo/schema_org/schemas.dart';

/// Any medical imaging modality typically used for diagnostic purposes.
/// Enumerated type.
/// See https://schema.org/MedicalImagingTechnique
enum SchemaMedicalImagingTechnique implements SchemaMedicalEnumeration {
  /// X-ray computed tomography imaging.
  cT('https://schema.org/MedicalImagingTechnique'),

  /// Magnetic resonance imaging.
  mRI('https://schema.org/MedicalImagingTechnique'),

  /// Positron emission tomography imaging.
  pET('https://schema.org/MedicalImagingTechnique'),

  /// Ultrasound imaging.
  ultrasound('https://schema.org/MedicalImagingTechnique'),

  /// X-ray imaging.
  xRay('https://schema.org/MedicalImagingTechnique');

  /// Constructor for [SchemaMedicalImagingTechnique]
  const SchemaMedicalImagingTechnique(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalImagingTechnique] to JSON-LD
  String toJsonLd() => value;
}
