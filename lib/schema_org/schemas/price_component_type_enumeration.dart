import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates different price components that together make up the total
/// price for an offered product.
/// See https://schema.org/PriceComponentTypeEnumeration
enum SchemaPriceComponentTypeEnumeration implements SchemaSerializable {
  /// Represents the activation fee part of the total price for an offered
  /// product, for example a cellphone contract.
  activationFee('https://schema.org/PriceComponentTypeEnumeration'),

  /// Represents the cleaning fee part of the total price for an offered
  /// product, for example a vacation rental.
  cleaningFee('https://schema.org/PriceComponentTypeEnumeration'),

  /// Represents the distance fee (e.g., price per km or mile) part of the
  /// total price for an offered product, for example a car rental.
  distanceFee('https://schema.org/PriceComponentTypeEnumeration'),

  /// Represents the downpayment (up-front payment) price component of the
  /// total price for an offered product that has additional installment
  /// payments.
  downpayment('https://schema.org/PriceComponentTypeEnumeration'),

  /// Represents the installment pricing component of the total price for
  /// an offered product.
  installment('https://schema.org/PriceComponentTypeEnumeration'),

  /// Represents the subscription pricing component of the total price for
  /// an offered product.
  subscription('https://schema.org/PriceComponentTypeEnumeration');

  /// Constructor for [SchemaPriceComponentTypeEnumeration]
  const SchemaPriceComponentTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPriceComponentTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
