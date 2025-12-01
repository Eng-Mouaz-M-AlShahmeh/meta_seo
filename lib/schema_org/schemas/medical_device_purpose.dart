import 'package:meta_seo/schema_org/schemas.dart';

/// Categories of medical devices, organized by the purpose or intended use
/// of the device.
/// See https://schema.org/MedicalDevicePurpose
enum SchemaMedicalDevicePurpose implements SchemaMedicalEnumeration {
  /// A medical device used for diagnostic purposes.
  diagnostic('https://schema.org/MedicalDevicePurpose'),

  /// A medical device used for therapeutic purposes.
  therapeutic('https://schema.org/MedicalDevicePurpose');

  /// Constructor for [SchemaMedicalDevicePurpose]
  const SchemaMedicalDevicePurpose(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalDevicePurpose] to JSON-LD
  String toJsonLd() => value;
}
