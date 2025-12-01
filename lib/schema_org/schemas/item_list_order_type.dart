import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerated for values for itemListOrder for indicating how an ordered
/// ItemList is organized.
/// See https://schema.org/ItemListOrderType
enum SchemaItemListOrderType implements SchemaSerializable {
  /// An ItemList ordered with lower values listed first.
  itemListOrderAscending('https://schema.org/ItemListOrderType'),

  /// An ItemList ordered with higher values listed first.
  itemListOrderDescending('https://schema.org/ItemListOrderType'),

  /// An ItemList ordered with no explicit order.
  itemListUnordered('https://schema.org/ItemListOrderType');

  /// Constructor for [SchemaItemListOrderType]
  const SchemaItemListOrderType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaItemListOrderType] to JSON-LD
  @override
  String toJsonLd() => value;
}
