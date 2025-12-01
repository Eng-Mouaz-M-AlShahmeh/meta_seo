import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates different price types, for example list price, invoice price,
/// and sale price.
/// See https://schema.org/PriceTypeEnumeration
enum SchemaPriceTypeEnumeration implements SchemaSerializable {
  /// Represents the invoice price of an offered product.
  invoicePrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the list price (the price a product is actually advertised
  /// for) of an offered product.
  listPrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the manufacturer suggested retail price ("MSRP") of an
  /// offered product.
  mSRP('https://schema.org/PriceTypeEnumeration'),

  /// Represents the minimum advertised price ("MAP") (as dictated by the
  /// manufacturer) of an offered product.
  minimumAdvertisedPrice('https://schema.org/PriceTypeEnumeration'),

  /// Represents the suggested retail price ("SRP") of an offered product.
  sRP('https://schema.org/PriceTypeEnumeration'),

  /// Represents a sale price (usually active for a limited period) of an
  /// offered product.
  salePrice('https://schema.org/PriceTypeEnumeration');

  /// Constructor for [SchemaPriceTypeEnumeration]
  const SchemaPriceTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPriceTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
