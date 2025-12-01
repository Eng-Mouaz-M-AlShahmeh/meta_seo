import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates types (or dimensions) of a person's body measurements, for
/// example for fitting of clothes.
/// See https://schema.org/BodyMeasurementTypeEnumeration
enum SchemaBodyMeasurementTypeEnumeration
    implements SchemaMeasurementTypeEnumeration {
  /// Arm length (measured between arms/shoulder line intersection and the
  /// prominent wrist bone). Used, for example, to fit shirts.
  bodyMeasurementArm('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Maximum girth of bust. Used, for example, to fit women's suits.
  bodyMeasurementBust('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Maximum girth of chest. Used, for example, to fit men's suits.
  bodyMeasurementChest('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Foot length (measured between end of the most prominent toe and the
  /// most prominent part of the heel). Used, for example, to measure
  /// socks.
  bodyMeasurementFoot('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Maximum hand girth (measured over the knuckles of the open right hand
  /// excluding thumb, fingers together). Used, for example, to fit gloves.
  bodyMeasurementHand('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Maximum girth of head above the ears. Used, for example, to fit hats.
  bodyMeasurementHead('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Body height (measured between crown of head and soles of feet). Used,
  /// for example, to fit jackets.
  bodyMeasurementHeight('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Girth of hips (measured around the buttocks). Used, for example, to
  /// fit skirts.
  bodyMeasurementHips('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Inside leg (measured between crotch and soles of feet). Used, for
  /// example, to fit pants.
  bodyMeasurementInsideLeg('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Girth of neck. Used, for example, to fit shirts.
  bodyMeasurementNeck('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Girth of body just below the bust. Used, for example, to fit women's
  /// swimwear.
  bodyMeasurementUnderbust('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Girth of natural waistline (between hip bones and lower ribs). Used,
  /// for example, to fit pants.
  bodyMeasurementWaist('https://schema.org/BodyMeasurementTypeEnumeration'),

  /// Body weight. Used, for example, to measure pantyhose.
  bodyMeasurementWeight('https://schema.org/BodyMeasurementTypeEnumeration');

  /// Constructor for [SchemaBodyMeasurementTypeEnumeration]
  const SchemaBodyMeasurementTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaBodyMeasurementTypeEnumeration] to JSON-LD
  String toJsonLd() => value;
}
