import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// The geographic coordinates of a place or event.
/// See https://schema.org/GeoCoordinates
class SchemaGeoCoordinates implements SchemaSerializable {
  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// //en.wikipedia.org/wiki/ISO_3166-1).
  ///
  /// Supported types: [SchemaCountry], [String]
  dynamic addressCountry;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the
  /// form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while
  /// numbers alone should be assumed to be a value in meters.
  ///
  /// Supported types: [String], [int]
  dynamic elevation;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [int]
  dynamic latitude;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [int]
  dynamic longitude;

  /// The postal code. For example, 94043.
  String? postalCode;

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

  /// Create a new instance of [SchemaGeoCoordinates]
  SchemaGeoCoordinates({
    this.address,
    this.addressCountry,
    this.elevation,
    this.latitude,
    this.longitude,
    this.postalCode,
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

  /// Serialize [SchemaGeoCoordinates] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'GeoCoordinates',
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'addressCountry':
            convertToJsonLd(addressCountry, [SchemaCountry, String]),
        'elevation': convertToJsonLd(elevation, [String, int]),
        'latitude': convertToJsonLd(latitude, [String, int]),
        'longitude': convertToJsonLd(longitude, [String, int]),
        'postalCode': convertToJsonLd(postalCode, [String]),
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
