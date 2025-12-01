/// Enumerates common size systems specific for wearable products.
/// See https://schema.org/WearableSizeSystemEnumeration
enum SchemaWearableSizeSystemEnumeration {
  /// Australian size system for wearables.
  wearableSizeSystemAU('https://schema.org/WearableSizeSystemEnumeration'),

  /// Brazilian size system for wearables.
  wearableSizeSystemBR('https://schema.org/WearableSizeSystemEnumeration'),

  /// Chinese size system for wearables.
  wearableSizeSystemCN('https://schema.org/WearableSizeSystemEnumeration'),

  /// Continental size system for wearables.
  wearableSizeSystemContinental(
      'https://schema.org/WearableSizeSystemEnumeration'),

  /// German size system for wearables.
  wearableSizeSystemDE('https://schema.org/WearableSizeSystemEnumeration'),

  /// EN 13402 (joint European standard for size labelling of clothes).
  wearableSizeSystemEN13402('https://schema.org/WearableSizeSystemEnumeration'),

  /// European size system for wearables.
  wearableSizeSystemEurope('https://schema.org/WearableSizeSystemEnumeration'),

  /// French size system for wearables.
  wearableSizeSystemFR('https://schema.org/WearableSizeSystemEnumeration'),

  /// GS1 (formerly NRF) size system for wearables.
  wearableSizeSystemGS1('https://schema.org/WearableSizeSystemEnumeration'),

  /// Italian size system for wearables.
  wearableSizeSystemIT('https://schema.org/WearableSizeSystemEnumeration'),

  /// Japanese size system for wearables.
  wearableSizeSystemJP('https://schema.org/WearableSizeSystemEnumeration'),

  /// Mexican size system for wearables.
  wearableSizeSystemMX('https://schema.org/WearableSizeSystemEnumeration'),

  /// United Kingdom size system for wearables.
  wearableSizeSystemUK('https://schema.org/WearableSizeSystemEnumeration'),

  /// United States size system for wearables.
  wearableSizeSystemUS('https://schema.org/WearableSizeSystemEnumeration');

  /// Constructor for [SchemaWearableSizeSystemEnumeration]
  const SchemaWearableSizeSystemEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaWearableSizeSystemEnumeration] to JSON-LD
  String toJsonLd() => value;
}
