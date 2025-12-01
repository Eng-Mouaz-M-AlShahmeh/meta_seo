import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates several types of product return methods.
/// See https://schema.org/ReturnMethodEnumeration
enum SchemaReturnMethodEnumeration implements SchemaSerializable {
  /// Specifies that the consumer can keep the product, even when receiving
  /// a refund or store credit.
  keepProduct('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be made at a kiosk.
  returnAtKiosk('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be done by mail.
  returnByMail('https://schema.org/ReturnMethodEnumeration'),

  /// Specifies that product returns must be made in a store.
  returnInStore('https://schema.org/ReturnMethodEnumeration');

  /// Constructor for [SchemaReturnMethodEnumeration]
  const SchemaReturnMethodEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaReturnMethodEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
