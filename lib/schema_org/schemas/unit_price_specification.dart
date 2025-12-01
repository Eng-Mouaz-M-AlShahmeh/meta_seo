import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// The price asked for a given offer by the respective organization or
/// person.
/// See https://schema.org/UnitPriceSpecification
class SchemaUnitPriceSpecification implements SchemaSerializable {
  /// Specifies for how long this price (or price component) will be billed.
  /// Can be used, for example, to model the contractual duration of a
  /// subscription or payment plan. Type can be either a Duration or a Number
  /// (in which case the unit of measurement, for example month, is specified
  /// by the unitCode property).
  ///
  /// Supported types: [SchemaDuration], [SchemaQuantitativeValue], [int]
  dynamic billingDuration;

  /// This property specifies the minimal quantity and rounding increment that
  /// will be the basis for the billing. The unit of measurement is specified
  /// by the unitCode property.
  int? billingIncrement;

  /// Specifies after how much time this price (or price component) becomes
  /// valid and billing starts. Can be used, for example, to model a price
  /// increase after the first year of a subscription. The unit of measurement
  /// is specified by the unitCode property.
  int? billingStart;

  /// Identifies a price component (for example, a line item on an invoice),
  /// part of the total price for an offer.
  SchemaPriceComponentTypeEnumeration? priceComponentType;

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

  /// The reference quantity for which a certain price applies, e.g. 1 EUR per
  /// 4 kWh of electricity. This property is a replacement for
  /// unitOfMeasurement for the advanced cases where the price does not relate
  /// to a standard unit.
  SchemaQuantitativeValue? referenceQuantity;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  ///
  /// Supported types: [String], [String]
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
  String? unitText;

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

  /// Create a new instance of [SchemaUnitPriceSpecification]
  SchemaUnitPriceSpecification({
    this.billingDuration,
    this.billingIncrement,
    this.billingStart,
    this.priceComponentType,
    this.priceType,
    this.referenceQuantity,
    this.unitCode,
    this.unitText,
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

  /// Serialize [SchemaUnitPriceSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'UnitPriceSpecification',
        'billingDuration': convertToJsonLd(
            billingDuration, [SchemaDuration, SchemaQuantitativeValue, int]),
        'billingIncrement': convertToJsonLd(billingIncrement, [int]),
        'billingStart': convertToJsonLd(billingStart, [int]),
        'priceComponentType': convertToJsonLd(
            priceComponentType, [SchemaPriceComponentTypeEnumeration]),
        'priceType':
            convertToJsonLd(priceType, [SchemaPriceTypeEnumeration, String]),
        'referenceQuantity':
            convertToJsonLd(referenceQuantity, [SchemaQuantitativeValue]),
        'unitCode': convertToJsonLd(unitCode, [String, String]),
        'unitText': convertToJsonLd(unitText, [String]),
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
