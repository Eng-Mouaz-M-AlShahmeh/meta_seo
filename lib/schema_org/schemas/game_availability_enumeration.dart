import 'package:meta_seo/schema_org/schemas.dart';

/// For a [SchemaVideoGame], such as used with a [SchemaPlayGameAction], an
/// enumeration of the kind of game availability offered.
/// See https://schema.org/GameAvailabilityEnumeration
enum SchemaGameAvailabilityEnumeration implements SchemaSerializable {
  /// Indicates demo game availability, i.e. a somehow limited
  /// demonstration of the full game.
  demoGameAvailability('https://schema.org/GameAvailabilityEnumeration'),

  /// Indicates full game availability.
  fullGameAvailability('https://schema.org/GameAvailabilityEnumeration');

  /// Constructor for [SchemaGameAvailabilityEnumeration]
  const SchemaGameAvailabilityEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGameAvailabilityEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
