import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A demand entity represents the public, not necessarily binding, not
/// necessarily exclusive, announcement by an organization or person to seek
/// a certain type of goods or services. For describing demand using this
/// type, the very same properties used for Offer apply.
/// See https://schema.org/Demand
class SchemaDemand implements SchemaSerializable {
  /// The payment method(s) accepted by seller for this offer.
  ///
  /// Supported types: [SchemaLoanOrCredit], [SchemaPaymentMethod]
  dynamic acceptedPaymentMethod;

  /// The amount of time that is required between accepting the offer and the
  /// actual usage of the resource or service.
  SchemaQuantitativeValue? advanceBookingRequirement;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// //en.wikipedia.org/wiki/Amazon_Standard_Identification_Number)'s
  /// article).
  ///
  /// Note also that this is a definition for how to include ASINs in
  /// Schema.org data, and not a definition of ASINs in general - see
  /// documentation from Amazon for authoritative details. ASINs are most
  /// commonly encoded as text strings, but the [asin] property supports
  /// URL/URI as potential values too.
  ///
  /// Supported types: [String], [String]
  String? asin;

  /// The availability of this item&#x2014;for example In stock, Out of stock,
  /// Pre-order, etc.
  SchemaItemAvailability? availability;

  /// The end of the availability of the product or service included in the
  /// offer.
  ///
  /// Supported types: [String], [String], [String]
  String? availabilityEnds;

  /// The beginning of the availability of the product or service included in
  /// the offer.
  ///
  /// Supported types: [String], [String], [String]
  String? availabilityStarts;

  /// The place(s) from which the offer can be obtained (e.g. store locations).
  SchemaPlace? availableAtOrFrom;

  /// The delivery method(s) available for this offer.
  SchemaDeliveryMethod? availableDeliveryMethod;

  /// //purl.org/goodrelations/v1#Sell.
  SchemaBusinessFunction? businessFunction;

  /// The typical delay between the receipt of the order and the goods either
  /// leaving the warehouse or being prepared for pickup, in case the delivery
  /// method is on site pickup.
  SchemaQuantitativeValue? deliveryLeadTime;

  /// The type(s) of customers for which the given offer is valid.
  SchemaBusinessEntityType? eligibleCustomerType;

  /// The duration for which the given offer is valid.
  SchemaQuantitativeValue? eligibleDuration;

  /// The interval and unit of measurement of ordering quantities for which the
  /// offer or price specification is valid. This allows e.g. specifying that a
  /// certain freight charge is valid only for a certain quantity.
  SchemaQuantitativeValue? eligibleQuantity;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is valid.\n\nSee also [SchemaineligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic eligibleRegion;

  /// The transaction volume, in a monetary unit, for which the offer or price
  /// specification is valid, e.g. for indicating a minimal purchasing volume,
  /// to express free shipping above a certain order volume, or to limit the
  /// acceptance of credit cards to purchases to a certain minimal amount.
  SchemaPriceSpecification? eligibleTransactionVolume;

  /// //en.wikipedia.org/wiki/Global_Trade_Item_Number) for more details.
  /// Left-padding of the gtin values is not required or encouraged. The
  /// [Schemagtin] property generalizes the earlier [Schemagtin8],
  /// [Schemagtin12], [Schemagtin13], and [Schemagtin14] properties.
  ///
  /// Note also that this is a definition for how to include GTINs in
  /// Schema.org data, and not a definition of GTINs in general - see the GS1
  /// documentation for authoritative details.
  ///
  /// Supported types: [String], [String]
  String? gtin;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin12;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin13;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin14;

  /// //www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
  String? gtin8;

  /// This links to a node or nodes indicating the exact quantity of the
  /// products included in an [SchemaOffer] or [SchemaProductCollection].
  SchemaTypeAndQuantityNode? includesObject;

  /// The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the
  /// GeoShape for the geo-political region(s) for which the offer or delivery
  /// charge specification is not valid, e.g. a region where the transaction is
  /// not allowed.\n\nSee also [SchemaeligibleRegion].
  ///
  /// Supported types: [SchemaGeoShape], [SchemaPlace], [String]
  dynamic ineligibleRegion;

  /// The current approximate inventory level for the item or items.
  SchemaQuantitativeValue? inventoryLevel;

  /// A predefined value from OfferItemCondition specifying the condition of
  /// the product or service, or the products or services included in the
  /// offer. Also used for product return policies to specify the condition of
  /// products accepted for returns.
  SchemaOfferItemCondition? itemCondition;

  /// An item being offered (or demanded). The transactional nature of the
  /// offer or demand is documented using [SchemabusinessFunction], e.g. sell,
  /// lease etc. While several common expected types are listed explicitly in
  /// this definition, others can be used. Using a second type, such as Product
  /// or a subtype of Product, can clarify the nature of the offer.
  ///
  /// Supported types: [SchemaAggregateOffer], [SchemaCreativeWork],
  /// [SchemaEvent], [SchemaMenuItem], [SchemaProduct], [SchemaService],
  /// [SchemaTrip]
  dynamic itemOffered;

  /// The Manufacturer Part Number (MPN) of the product, or the product to
  /// which the offer refers.
  String? mpn;

  /// One or more detailed price specifications, indicating the unit price and
  /// delivery or payment charges.
  SchemaPriceSpecification? priceSpecification;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// The serial number or any alphanumeric identifier of a particular product.
  /// When attached to an offer, it is a shortcut for the serial number of the
  /// product included in the offer.
  String? serialNumber;

  /// The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a
  /// product or service, or the product to which the offer refers.
  String? sku;

  /// The date when the item becomes valid.
  ///
  /// Supported types: [String], [String]
  String? validFrom;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  ///
  /// Supported types: [String], [String]
  String? validThrough;

  /// The warranty promise(s) included in the offer.
  SchemaWarrantyPromise? warranty;

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

  /// Create a new instance of [SchemaDemand]
  SchemaDemand({
    this.acceptedPaymentMethod,
    this.advanceBookingRequirement,
    this.areaServed,
    this.asin,
    this.availability,
    this.availabilityEnds,
    this.availabilityStarts,
    this.availableAtOrFrom,
    this.availableDeliveryMethod,
    this.businessFunction,
    this.deliveryLeadTime,
    this.eligibleCustomerType,
    this.eligibleDuration,
    this.eligibleQuantity,
    this.eligibleRegion,
    this.eligibleTransactionVolume,
    this.gtin,
    this.gtin12,
    this.gtin13,
    this.gtin14,
    this.gtin8,
    this.includesObject,
    this.ineligibleRegion,
    this.inventoryLevel,
    this.itemCondition,
    this.itemOffered,
    this.mpn,
    this.priceSpecification,
    this.seller,
    this.serialNumber,
    this.sku,
    this.validFrom,
    this.validThrough,
    this.warranty,
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

  /// Serialize [SchemaDemand] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Demand',
        'acceptedPaymentMethod': convertToJsonLd(
            acceptedPaymentMethod, [SchemaLoanOrCredit, SchemaPaymentMethod]),
        'advanceBookingRequirement': convertToJsonLd(
            advanceBookingRequirement, [SchemaQuantitativeValue]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'asin': convertToJsonLd(asin, [String, String]),
        'availability': convertToJsonLd(availability, [SchemaItemAvailability]),
        'availabilityEnds':
            convertToJsonLd(availabilityEnds, [String, String, String]),
        'availabilityStarts':
            convertToJsonLd(availabilityStarts, [String, String, String]),
        'availableAtOrFrom': convertToJsonLd(availableAtOrFrom, [SchemaPlace]),
        'availableDeliveryMethod':
            convertToJsonLd(availableDeliveryMethod, [SchemaDeliveryMethod]),
        'businessFunction':
            convertToJsonLd(businessFunction, [SchemaBusinessFunction]),
        'deliveryLeadTime':
            convertToJsonLd(deliveryLeadTime, [SchemaQuantitativeValue]),
        'eligibleCustomerType':
            convertToJsonLd(eligibleCustomerType, [SchemaBusinessEntityType]),
        'eligibleDuration':
            convertToJsonLd(eligibleDuration, [SchemaQuantitativeValue]),
        'eligibleQuantity':
            convertToJsonLd(eligibleQuantity, [SchemaQuantitativeValue]),
        'eligibleRegion': convertToJsonLd(
            eligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'eligibleTransactionVolume': convertToJsonLd(
            eligibleTransactionVolume, [SchemaPriceSpecification]),
        'gtin': convertToJsonLd(gtin, [String, String]),
        'gtin12': convertToJsonLd(gtin12, [String]),
        'gtin13': convertToJsonLd(gtin13, [String]),
        'gtin14': convertToJsonLd(gtin14, [String]),
        'gtin8': convertToJsonLd(gtin8, [String]),
        'includesObject':
            convertToJsonLd(includesObject, [SchemaTypeAndQuantityNode]),
        'ineligibleRegion': convertToJsonLd(
            ineligibleRegion, [SchemaGeoShape, SchemaPlace, String]),
        'inventoryLevel':
            convertToJsonLd(inventoryLevel, [SchemaQuantitativeValue]),
        'itemCondition':
            convertToJsonLd(itemCondition, [SchemaOfferItemCondition]),
        'itemOffered': convertToJsonLd(itemOffered, [
          SchemaAggregateOffer,
          SchemaCreativeWork,
          SchemaEvent,
          SchemaMenuItem,
          SchemaProduct,
          SchemaService,
          SchemaTrip
        ]),
        'mpn': convertToJsonLd(mpn, [String]),
        'priceSpecification':
            convertToJsonLd(priceSpecification, [SchemaPriceSpecification]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
        'serialNumber': convertToJsonLd(serialNumber, [String]),
        'sku': convertToJsonLd(sku, [String]),
        'validFrom': convertToJsonLd(validFrom, [String, String]),
        'validThrough': convertToJsonLd(validThrough, [String, String]),
        'warranty': convertToJsonLd(warranty, [SchemaWarrantyPromise]),
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
