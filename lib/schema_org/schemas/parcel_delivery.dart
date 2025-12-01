import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// The delivery of a parcel either via the postal service or a commercial
/// service.
/// See https://schema.org/ParcelDelivery
class SchemaParcelDelivery implements SchemaSerializable {
  /// 'carrier' is an out-dated term indicating the 'provider' for parcel
  /// delivery and flights.
  SchemaOrganization? carrier;

  /// Destination address.
  SchemaPostalAddress? deliveryAddress;

  /// New entry added as the package passes through each leg of its journey
  /// (from shipment to final delivery).
  SchemaDeliveryEvent? deliveryStatus;

  /// The earliest date the package may arrive.
  ///
  /// Supported types: [String], [String]
  String? expectedArrivalFrom;

  /// The latest date the package may arrive.
  ///
  /// Supported types: [String], [String]
  String? expectedArrivalUntil;

  /// Method used for delivery or shipping.
  SchemaDeliveryMethod? hasDeliveryMethod;

  /// Item(s) being shipped.
  SchemaProduct? itemShipped;

  /// Shipper's address.
  SchemaPostalAddress? originAddress;

  /// The overall order the items in this delivery were included in.
  SchemaOrder? partOfOrder;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Shipper tracking number.
  String? trackingNumber;

  /// Tracking url for the parcel delivery.
  String? trackingUrl;

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

  /// Create a new instance of [SchemaParcelDelivery]
  SchemaParcelDelivery({
    this.carrier,
    this.deliveryAddress,
    this.deliveryStatus,
    this.expectedArrivalFrom,
    this.expectedArrivalUntil,
    this.hasDeliveryMethod,
    this.itemShipped,
    this.originAddress,
    this.partOfOrder,
    this.provider,
    this.trackingNumber,
    this.trackingUrl,
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

  /// Serialize [SchemaParcelDelivery] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'ParcelDelivery',
        'carrier': convertToJsonLd(carrier, [SchemaOrganization]),
        'deliveryAddress':
            convertToJsonLd(deliveryAddress, [SchemaPostalAddress]),
        'deliveryStatus':
            convertToJsonLd(deliveryStatus, [SchemaDeliveryEvent]),
        'expectedArrivalFrom':
            convertToJsonLd(expectedArrivalFrom, [String, String]),
        'expectedArrivalUntil':
            convertToJsonLd(expectedArrivalUntil, [String, String]),
        'hasDeliveryMethod':
            convertToJsonLd(hasDeliveryMethod, [SchemaDeliveryMethod]),
        'itemShipped': convertToJsonLd(itemShipped, [SchemaProduct]),
        'originAddress': convertToJsonLd(originAddress, [SchemaPostalAddress]),
        'partOfOrder': convertToJsonLd(partOfOrder, [SchemaOrder]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'trackingNumber': convertToJsonLd(trackingNumber, [String]),
        'trackingUrl': convertToJsonLd(trackingUrl, [String]),
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
