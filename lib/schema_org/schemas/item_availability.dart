import 'package:meta_seo/schema_org/schemas.dart';

/// A list of possible product availability options.
/// See https://schema.org/ItemAvailability
enum SchemaItemAvailability implements SchemaSerializable {
  /// Indicates that the item is available on back order.
  backOrder('https://schema.org/ItemAvailability'),

  /// Indicates that the item has been discontinued.
  discontinued('https://schema.org/ItemAvailability'),

  /// Indicates that the item is in stock.
  inStock('https://schema.org/ItemAvailability'),

  /// Indicates that the item is available only at physical locations.
  inStoreOnly('https://schema.org/ItemAvailability'),

  /// Indicates that the item has limited availability.
  limitedAvailability('https://schema.org/ItemAvailability'),

  /// Indicates that the item is available only online.
  onlineOnly('https://schema.org/ItemAvailability'),

  /// Indicates that the item is out of stock.
  outOfStock('https://schema.org/ItemAvailability'),

  /// Indicates that the item is available for pre-order.
  preOrder('https://schema.org/ItemAvailability'),

  /// Indicates that the item is available for ordering and delivery before
  /// general availability.
  preSale('https://schema.org/ItemAvailability'),

  /// Indicates that the item has sold out.
  soldOut('https://schema.org/ItemAvailability');

  /// Constructor for [SchemaItemAvailability]
  const SchemaItemAvailability(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaItemAvailability] to JSON-LD
  @override
  String toJsonLd() => value;
}
