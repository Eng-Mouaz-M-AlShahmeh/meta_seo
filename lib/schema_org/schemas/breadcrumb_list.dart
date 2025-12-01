import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A BreadcrumbList is an ItemList consisting of a chain of linked Web
/// pages, typically described using at least their URL and their name, and
/// typically ending with the current page.\n\nThe [Schemaposition] property
/// is used to reconstruct the order of the items in a BreadcrumbList. The
/// convention is that a breadcrumb list has an [SchemaitemListOrder] of
/// [SchemaItemListOrderAscending] (lower values listed first), and that the
/// first items in this list correspond to the "top" or beginning of the
/// breadcrumb trail, e.g. with a site or section homepage. The specific
/// values of 'position' are not assigned meaning for a BreadcrumbList, but
/// they should be integers, e.g. beginning with '1' for the first item in
/// the list.
/// See https://schema.org/BreadcrumbList
class SchemaBreadcrumbList implements SchemaSerializable {
  /// The order of elements in your mark-up is not sufficient for indicating
  /// the order or elements. Use ListItem with a 'position' property in such
  /// cases.
  ///
  /// Supported types: [SchemaListItem], [String], [SchemaThing]
  dynamic itemListElement;

  /// Type of ordering (e.g. Ascending, Descending, Unordered).
  ///
  /// Supported types: [SchemaItemListOrderType], [String]
  dynamic itemListOrder;

  /// The number of items in an ItemList. Note that some descriptions might not
  /// fully describe all items in a list (e.g., multi-page pagination); in such
  /// cases, the numberOfItems would be for the entire list.
  int? numberOfItems;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaBreadcrumbList]
  SchemaBreadcrumbList({
    this.itemListElement,
    this.itemListOrder,
    this.numberOfItems,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaBreadcrumbList] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'BreadcrumbList',
        'itemListElement': convertToJsonLd(
            itemListElement, [SchemaListItem, String, SchemaThing]),
        'itemListOrder':
            convertToJsonLd(itemListOrder, [SchemaItemListOrderType, String]),
        'numberOfItems': convertToJsonLd(numberOfItems, [int]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
