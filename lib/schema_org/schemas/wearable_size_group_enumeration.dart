import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates common size groups (also known as "size types") for wearable
/// products.
/// See https://schema.org/WearableSizeGroupEnumeration
enum SchemaWearableSizeGroupEnumeration implements SchemaSizeGroupEnumeration {
  /// Size group "Big" for wearables.
  wearableSizeGroupBig('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Boys" for wearables.
  wearableSizeGroupBoys('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Extra Short" for wearables.
  wearableSizeGroupExtraShort(
      'https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Extra Tall" for wearables.
  wearableSizeGroupExtraTall('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Girls" for wearables.
  wearableSizeGroupGirls('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Husky" (or "Stocky") for wearables.
  wearableSizeGroupHusky('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Infants" for wearables.
  wearableSizeGroupInfants('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Juniors" for wearables.
  wearableSizeGroupJuniors('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Maternity" for wearables.
  wearableSizeGroupMaternity('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Mens" for wearables.
  wearableSizeGroupMens('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Misses" (also known as "Missy") for wearables.
  wearableSizeGroupMisses('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Petite" for wearables.
  wearableSizeGroupPetite('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Plus" for wearables.
  wearableSizeGroupPlus('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Regular" for wearables.
  wearableSizeGroupRegular('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Short" for wearables.
  wearableSizeGroupShort('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Tall" for wearables.
  wearableSizeGroupTall('https://schema.org/WearableSizeGroupEnumeration'),

  /// Size group "Womens" for wearables.
  wearableSizeGroupWomens('https://schema.org/WearableSizeGroupEnumeration');

  /// Constructor for [SchemaWearableSizeGroupEnumeration]
  const SchemaWearableSizeGroupEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaWearableSizeGroupEnumeration] to JSON-LD
  String toJsonLd() => value;
}
