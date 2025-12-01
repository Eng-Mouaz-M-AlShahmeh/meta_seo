import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A DeliveryTimeSettings represents re-usable pieces of shipping
/// information, relating to timing. It is designed for publication on an URL
/// that may be referenced via the [SchemashippingSettingsLink] property of
/// an [SchemaOfferShippingDetails]. Several occurrences can be published,
/// distinguished (and identified/referenced) by their different values for
/// [SchematransitTimeLabel].
/// See https://schema.org/DeliveryTimeSettings
class SchemaDeliveryTimeSettings implements SchemaSerializable {
  /// The total delay between the receipt of the order and the goods reaching
  /// the final customer.
  SchemaShippingDeliveryTime? deliveryTime;

  /// This can be marked 'true' to indicate that some published
  /// [SchemaDeliveryTimeSettings] or [SchemaShippingRateSettings] are intended
  /// to apply to all [SchemaOfferShippingDetails] published by the same
  /// merchant, when referenced by a [SchemashippingSettingsLink] in those
  /// settings. It is not meaningful to use a 'true' value for this property
  /// alongside a transitTimeLabel (for [SchemaDeliveryTimeSettings]) or
  /// shippingLabel (for [SchemaShippingRateSettings]), since this property is
  /// for use with unlabelled settings.
  bool? isUnlabelledFallback;

  /// indicates (possibly multiple) shipping destinations. These can be defined
  /// in several ways, e.g. postalCode ranges.
  SchemaDefinedRegion? shippingDestination;

  /// Label to match an [SchemaOfferShippingDetails] with a
  /// [SchemaDeliveryTimeSettings] (within the context of a
  /// [SchemashippingSettingsLink] cross-reference).
  String? transitTimeLabel;

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

  /// Create a new instance of [SchemaDeliveryTimeSettings]
  SchemaDeliveryTimeSettings({
    this.deliveryTime,
    this.isUnlabelledFallback,
    this.shippingDestination,
    this.transitTimeLabel,
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

  /// Serialize [SchemaDeliveryTimeSettings] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'DeliveryTimeSettings',
        'deliveryTime':
            convertToJsonLd(deliveryTime, [SchemaShippingDeliveryTime]),
        'isUnlabelledFallback': convertToJsonLd(isUnlabelledFallback, [bool]),
        'shippingDestination':
            convertToJsonLd(shippingDestination, [SchemaDefinedRegion]),
        'transitTimeLabel': convertToJsonLd(transitTimeLabel, [String]),
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
