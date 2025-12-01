import 'package:meta_seo/schema_org/schemas.dart';

/// //purl.org/goodrelations/v1#UPS
/// See https://schema.org/DeliveryMethod
enum SchemaDeliveryMethod implements SchemaSerializable {
  /// A DeliveryMethod in which an item is made available via locker.
  lockerDelivery('https://schema.org/DeliveryMethod'),

  /// A DeliveryMethod in which an item is collected on site, e.g. in a
  /// store or at a box office.
  onSitePickup('https://schema.org/DeliveryMethod'),

  /// //purl.org/goodrelations/v1#UPS
  parcelService('https://schema.org/DeliveryMethod');

  /// Constructor for [SchemaDeliveryMethod]
  const SchemaDeliveryMethod(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDeliveryMethod] to JSON-LD
  @override
  String toJsonLd() => value;
}
