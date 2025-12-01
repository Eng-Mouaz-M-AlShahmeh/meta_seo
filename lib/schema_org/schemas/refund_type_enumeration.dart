import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates several kinds of product return refund types.
/// See https://schema.org/RefundTypeEnumeration
enum SchemaRefundTypeEnumeration implements SchemaSerializable {
  /// Specifies that a refund can be done as an exchange for the same
  /// product.
  exchangeRefund('https://schema.org/RefundTypeEnumeration'),

  /// Specifies that a refund can be done in the full amount the customer
  /// paid for the product.
  fullRefund('https://schema.org/RefundTypeEnumeration'),

  /// Specifies that the customer receives a store credit as refund when
  /// returning a product.
  storeCreditRefund('https://schema.org/RefundTypeEnumeration');

  /// Constructor for [SchemaRefundTypeEnumeration]
  const SchemaRefundTypeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaRefundTypeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
