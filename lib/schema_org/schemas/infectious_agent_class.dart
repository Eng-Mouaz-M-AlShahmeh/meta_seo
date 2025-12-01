import 'package:meta_seo/schema_org/schemas.dart';

/// Classes of agents or pathogens that transmit infectious diseases.
/// Enumerated type.
/// See https://schema.org/InfectiousAgentClass
enum SchemaInfectiousAgentClass implements SchemaMedicalEnumeration {
  /// Pathogenic bacteria that cause bacterial infection.
  bacteria('https://schema.org/InfectiousAgentClass'),

  /// Pathogenic fungus.
  fungus('https://schema.org/InfectiousAgentClass'),

  /// Multicellular parasite that causes an infection.
  multicellularParasite('https://schema.org/InfectiousAgentClass'),

  /// A prion is an infectious agent composed of protein in a misfolded
  /// form.
  prion('https://schema.org/InfectiousAgentClass'),

  /// Single-celled organism that causes an infection.
  protozoa('https://schema.org/InfectiousAgentClass'),

  /// Pathogenic virus that causes viral infection.
  virus('https://schema.org/InfectiousAgentClass');

  /// Constructor for [SchemaInfectiousAgentClass]
  const SchemaInfectiousAgentClass(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaInfectiousAgentClass] to JSON-LD
  String toJsonLd() => value;
}
