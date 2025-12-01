import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// $15 in 1-2 days.
/// See https://schema.org/OfferShippingDetails
class SchemaOfferShippingDetails implements SchemaSerializable {
  /// The total delay between the receipt of the order and the goods reaching
  /// the final customer.
  SchemaShippingDeliveryTime? deliveryTime;

  /// The depth of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic depth;

  /// Indicates when shipping to a particular [SchemashippingDestination] is
  /// not available.
  bool? doesNotShip;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// indicates (possibly multiple) shipping destinations. These can be defined
  /// in several ways, e.g. postalCode ranges.
  SchemaDefinedRegion? shippingDestination;

  /// Label to match an [SchemaOfferShippingDetails] with a
  /// [SchemaShippingRateSettings] (within the context of a
  /// [SchemashippingSettingsLink] cross-reference).
  String? shippingLabel;

  /// Indicates the origin of a shipment, i.e. where it should be coming from.
  SchemaDefinedRegion? shippingOrigin;

  /// The shipping rate is the cost of shipping to the specified destination.
  /// Typically, the maxValue and currency values (of the
  /// [SchemaMonetaryAmount]) are most appropriate.
  SchemaMonetaryAmount? shippingRate;

  /// Link to a page containing [SchemaShippingRateSettings] and
  /// [SchemaDeliveryTimeSettings] details.
  String? shippingSettingsLink;

  /// Label to match an [SchemaOfferShippingDetails] with a
  /// [SchemaDeliveryTimeSettings] (within the context of a
  /// [SchemashippingSettingsLink] cross-reference).
  String? transitTimeLabel;

  /// The weight of the product or person.
  SchemaQuantitativeValue? weight;

  /// The width of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic width;

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

  /// Create a new instance of [SchemaOfferShippingDetails]
  SchemaOfferShippingDetails({
    this.deliveryTime,
    this.depth,
    this.doesNotShip,
    this.height,
    this.shippingDestination,
    this.shippingLabel,
    this.shippingOrigin,
    this.shippingRate,
    this.shippingSettingsLink,
    this.transitTimeLabel,
    this.weight,
    this.width,
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

  /// Serialize [SchemaOfferShippingDetails] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'OfferShippingDetails',
        'deliveryTime':
            convertToJsonLd(deliveryTime, [SchemaShippingDeliveryTime]),
        'depth':
            convertToJsonLd(depth, [SchemaDistance, SchemaQuantitativeValue]),
        'doesNotShip': convertToJsonLd(doesNotShip, [bool]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'shippingDestination':
            convertToJsonLd(shippingDestination, [SchemaDefinedRegion]),
        'shippingLabel': convertToJsonLd(shippingLabel, [String]),
        'shippingOrigin':
            convertToJsonLd(shippingOrigin, [SchemaDefinedRegion]),
        'shippingRate': convertToJsonLd(shippingRate, [SchemaMonetaryAmount]),
        'shippingSettingsLink': convertToJsonLd(shippingSettingsLink, [String]),
        'transitTimeLabel': convertToJsonLd(transitTimeLabel, [String]),
        'weight': convertToJsonLd(weight, [SchemaQuantitativeValue]),
        'width':
            convertToJsonLd(width, [SchemaDistance, SchemaQuantitativeValue]),
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
