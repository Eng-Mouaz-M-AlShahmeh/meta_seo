import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A contact point&#x2014;for example, a Customer Complaints department.
/// See https://schema.org/ContactPoint
class SchemaContactPoint implements SchemaSerializable {
  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// //tools.ietf.org/html/bcp47). See also [SchemainLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic availableLanguage;

  /// An option available on this contact point (e.g. a toll-free number or
  /// support for hearing-impaired callers).
  SchemaContactPointOption? contactOption;

  /// A person or organization can have different contact points, for different
  /// purposes. For example, a sales contact point, a PR contact point and so
  /// on. This property is used to specify the kind of contact point.
  String? contactType;

  /// Email address.
  String? email;

  /// The fax number.
  String? faxNumber;

  /// The hours during which this service or contact is available.
  SchemaOpeningHoursSpecification? hoursAvailable;

  /// The product or service this support contact point is related to (such as
  /// product support for a particular product line). This can be a specific
  /// product or product line (e.g. "iPhone") or a general category of products
  /// or services (e.g. "smartphones").
  ///
  /// Supported types: [SchemaProduct], [String]
  dynamic productSupported;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  dynamic serviceArea;

  /// The telephone number.
  String? telephone;

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

  /// Create a new instance of [SchemaContactPoint]
  SchemaContactPoint({
    this.areaServed,
    this.availableLanguage,
    this.contactOption,
    this.contactType,
    this.email,
    this.faxNumber,
    this.hoursAvailable,
    this.productSupported,
    this.serviceArea,
    this.telephone,
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

  /// Serialize [SchemaContactPoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'ContactPoint',
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'availableLanguage':
            convertToJsonLd(availableLanguage, [SchemaLanguage, String]),
        'contactOption':
            convertToJsonLd(contactOption, [SchemaContactPointOption]),
        'contactType': convertToJsonLd(contactType, [String]),
        'email': convertToJsonLd(email, [String]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'hoursAvailable':
            convertToJsonLd(hoursAvailable, [SchemaOpeningHoursSpecification]),
        'productSupported':
            convertToJsonLd(productSupported, [SchemaProduct, String]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'telephone': convertToJsonLd(telephone, [String]),
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
