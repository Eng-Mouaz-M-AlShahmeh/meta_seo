import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// An entry point, within some Web-based protocol.
/// See https://schema.org/EntryPoint
class SchemaEntryPoint implements SchemaSerializable {
  /// An application that can complete the request.
  SchemaSoftwareApplication? actionApplication;

  /// The high level platform(s) where the Action can be performed for the
  /// given URL. To specify a specific application or operating system
  /// instance, use actionApplication.
  ///
  /// Supported types: [SchemaDigitalPlatformEnumeration], [String], [String]
  dynamic actionPlatform;

  /// An application that can complete the request.
  SchemaSoftwareApplication? application;

  /// The supported content type(s) for an EntryPoint response.
  String? contentType;

  /// The supported encoding type(s) for an EntryPoint request.
  String? encodingType;

  /// An HTTP method that specifies the appropriate HTTP method for a request
  /// to an HTTP EntryPoint. Values are capitalized strings as used in HTTP.
  String? httpMethod;

  /// An url template (RFC6570) that will be used to construct the target of
  /// the execution of the action.
  String? urlTemplate;

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

  /// Create a new instance of [SchemaEntryPoint]
  SchemaEntryPoint({
    this.actionApplication,
    this.actionPlatform,
    this.application,
    this.contentType,
    this.encodingType,
    this.httpMethod,
    this.urlTemplate,
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

  /// Serialize [SchemaEntryPoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'EntryPoint',
        'actionApplication':
            convertToJsonLd(actionApplication, [SchemaSoftwareApplication]),
        'actionPlatform': convertToJsonLd(
            actionPlatform, [SchemaDigitalPlatformEnumeration, String, String]),
        'application':
            convertToJsonLd(application, [SchemaSoftwareApplication]),
        'contentType': convertToJsonLd(contentType, [String]),
        'encodingType': convertToJsonLd(encodingType, [String]),
        'httpMethod': convertToJsonLd(httpMethod, [String]),
        'urlTemplate': convertToJsonLd(urlTemplate, [String]),
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
