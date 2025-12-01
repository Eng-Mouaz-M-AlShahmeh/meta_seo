import 'package:meta_seo/schema_org/schemas.dart';

/// Systems of medical practice.
/// See https://schema.org/MedicineSystem
enum SchemaMedicineSystem implements SchemaMedicalEnumeration {
  /// A system of medicine that originated in India over thousands of years
  /// and that focuses on integrating and balancing the body, mind, and
  /// spirit.
  ayurvedic('https://schema.org/MedicineSystem'),

  /// A system of medicine focused on the relationship between the body's
  /// structure, mainly the spine, and its functioning.
  chiropractic('https://schema.org/MedicineSystem'),

  /// A system of medicine based on the principle that a disease can be
  /// cured by a substance that produces similar symptoms in healthy
  /// people.
  homeopathic('https://schema.org/MedicineSystem'),

  /// A system of medicine focused on promoting the body's innate ability
  /// to heal itself.
  osteopathic('https://schema.org/MedicineSystem'),

  /// A system of medicine based on common theoretical concepts that
  /// originated in China and evolved over thousands of years, that uses
  /// herbs, acupuncture, exercise, massage, dietary therapy, and other
  /// methods to treat a wide range of conditions.
  traditionalChinese('https://schema.org/MedicineSystem'),

  /// The conventional Western system of medicine, that aims to apply the
  /// best available evidence gained from the scientific method to clinical
  /// decision making. Also known as conventional or Western medicine.
  westernConventional('https://schema.org/MedicineSystem');

  /// Constructor for [SchemaMedicineSystem]
  const SchemaMedicineSystem(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicineSystem] to JSON-LD
  String toJsonLd() => value;
}
