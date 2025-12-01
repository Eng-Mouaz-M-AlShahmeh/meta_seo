import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerates several types of return labels for product returns.
/// See https://schema.org/ReturnLabelSourceEnumeration
enum SchemaReturnLabelSourceEnumeration implements SchemaSerializable {
  /// Indicated that creating a return label is the responsibility of the
  /// customer.
  returnLabelCustomerResponsibility(
      'https://schema.org/ReturnLabelSourceEnumeration'),

  /// Indicated that a return label must be downloaded and printed by the
  /// customer.
  returnLabelDownloadAndPrint(
      'https://schema.org/ReturnLabelSourceEnumeration'),

  /// Specifies that a return label will be provided by the seller in the
  /// shipping box.
  returnLabelInBox('https://schema.org/ReturnLabelSourceEnumeration');

  /// Constructor for [SchemaReturnLabelSourceEnumeration]
  const SchemaReturnLabelSourceEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaReturnLabelSourceEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
