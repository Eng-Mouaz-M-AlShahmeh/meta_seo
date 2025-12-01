import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A compound price specification is one that bundles multiple prices that
/// all apply in combination for different dimensions of consumption. Use the
/// name property of the attached unit price specification for indicating the
/// dimension of a price component (e.g. "electricity" or "final cleaning").
/// See https://schema.org/CompoundPriceSpecification
class SchemaCompoundPriceSpecification implements SchemaSerializable {
  /// This property links to all [SchemaUnitPriceSpecification] nodes that
  /// apply in parallel for the [SchemaCompoundPriceSpecification] node.
  SchemaUnitPriceSpecification? priceComponent;

  /// Defines the type of a price specified for an offered product, for example
  /// a list price, a (temporary) sale price or a manufacturer suggested retail
  /// price. If multiple prices are specified for an offer the
  /// [SchemapriceType] property can be used to identify the type of each such
  /// specified price. The value of priceType can be specified as a value from
  /// enumeration PriceTypeEnumeration or as a free form text string for price
  /// types that are not already predefined in PriceTypeEnumeration.
  ///
  /// Supported types: [SchemaPriceTypeEnumeration], [String]
  dynamic priceType;

  /// The interval and unit of measurement of ordering quantities for which the
  /// offer or price specification is valid. This allows e.g. specifying that a
  /// certain freight charge is valid only for a certain quantity.
  SchemaQuantitativeValue? eligibleQuantity;

  /// The transaction volume, in a monetary unit, for which the offer or price
  /// specification is valid, e.g. for indicating a minimal purchasing volume,
  /// to express free shipping above a certain order volume, or to limit the
  /// acceptance of credit cards to purchases to a certain minimal amount.
  SchemaPriceSpecification? eligibleTransactionVolume;

  /// The highest price if the price is a range.
  int? maxPrice;

  /// The lowest price if the price is a range.
  int? minPrice;

  /// //www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and
  /// Microdata syntax allow the use of a "content=" attribute for publishing
  /// simple machine-readable values alongside more human-friendly
  /// formatting.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030)
  /// to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode
  /// symbols.
  ///
  /// Supported types: [String], [int]
  dynamic price;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// The date when the item becomes valid.
  ///
  /// Supported types: [String], [String]
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  ///
  /// Supported types: [String], [String]
  String? validThrough;

  /// Specifies whether the applicable value-added tax (VAT) is included in the
  /// price specification or not.
  bool? valueAddedTaxIncluded;

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

  /// Create a new instance of [SchemaCompoundPriceSpecification]
  SchemaCompoundPriceSpecification({
    this.priceComponent,
    this.priceType,
    this.eligibleQuantity,
    this.eligibleTransactionVolume,
    this.maxPrice,
    this.minPrice,
    this.price,
    this.priceCurrency,
    this.validFrom,
    this.validThrough,
    this.valueAddedTaxIncluded,
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

  /// Serialize [SchemaCompoundPriceSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'CompoundPriceSpecification',
        'priceComponent':
            convertToJsonLd(priceComponent, [SchemaUnitPriceSpecification]),
        'priceType':
            convertToJsonLd(priceType, [SchemaPriceTypeEnumeration, String]),
        'eligibleQuantity':
            convertToJsonLd(eligibleQuantity, [SchemaQuantitativeValue]),
        'eligibleTransactionVolume': convertToJsonLd(
            eligibleTransactionVolume, [SchemaPriceSpecification]),
        'maxPrice': convertToJsonLd(maxPrice, [int]),
        'minPrice': convertToJsonLd(minPrice, [int]),
        'price': convertToJsonLd(price, [String, int]),
        'priceCurrency': convertToJsonLd(priceCurrency, [String]),
        'validFrom': convertToJsonLd(validFrom, [String, String]),
        'validThrough': convertToJsonLd(validThrough, [String, String]),
        'valueAddedTaxIncluded': convertToJsonLd(valueAddedTaxIncluded, [bool]),
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
