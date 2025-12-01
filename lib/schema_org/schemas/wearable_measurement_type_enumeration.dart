import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates common types of measurement for wearables products.
/// See https://schema.org/WearableMeasurementTypeEnumeration
enum SchemaWearableMeasurementTypeEnumeration
    implements SchemaMeasurementTypeEnumeration {
  /// Measurement of the back section, for example of a jacket.
  wearableMeasurementBack(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the chest/bust section, for example of a suit.
  wearableMeasurementChestOrBust(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the collar, for example of a shirt.
  wearableMeasurementCollar(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the cup, for example of a bra.
  wearableMeasurementCup(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the height, for example the heel height of a shoe.
  wearableMeasurementHeight(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the hip section, for example of a skirt.
  wearableMeasurementHips(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the inseam, for example of pants.
  wearableMeasurementInseam(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Represents the length, for example of a dress.
  wearableMeasurementLength(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the outside leg, for example of pants.
  wearableMeasurementOutsideLeg(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the sleeve length, for example of a shirt.
  wearableMeasurementSleeve(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the waist section, for example of pants.
  wearableMeasurementWaist(
      'https://schema.org/WearableMeasurementTypeEnumeration'),

  /// Measurement of the width, for example of shoes.
  wearableMeasurementWidth(
      'https://schema.org/WearableMeasurementTypeEnumeration');

  /// Constructor for [SchemaWearableMeasurementTypeEnumeration]
  const SchemaWearableMeasurementTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaWearableMeasurementTypeEnumeration] to JSON-LD
  String toJsonLd() => value;
}
