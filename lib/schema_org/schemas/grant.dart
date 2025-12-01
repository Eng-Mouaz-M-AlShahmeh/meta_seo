import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A grant, typically financial or otherwise quantifiable, of resources.
/// Typically a [Schemafunder] sponsors some [SchemaMonetaryAmount] to an
/// [SchemaOrganization] or [SchemaPerson], sometimes not necessarily via a
/// dedicated or long-lived [SchemaProject], resulting in one or more
/// outputs, or [SchemafundedItem]s. For financial sponsorship, indicate the
/// [Schemafunder] of a [SchemaMonetaryGrant]. For non-financial support,
/// indicate [Schemasponsor] of [SchemaGrant]s of resources (e.g. office
/// space).
///
/// Grants support activities directed towards some agreed collective goals,
/// often but not always organized as [SchemaProject]s. Long-lived projects
/// are sometimes sponsored by a variety of grants over time, but it is also
/// common for a project to be associated with a single grant.
///
/// The amount of a [SchemaGrant] is represented using [Schemaamount] as a
/// [SchemaMonetaryAmount].
/// See https://schema.org/Grant
class SchemaGrant implements SchemaSerializable {
  /// Indicates something directly or indirectly funded or sponsored through a
  /// [SchemaGrant]. See also [SchemaownershipFundingInfo].
  ///
  /// Supported types: [SchemaBioChemEntity], [SchemaCreativeWork],
  /// [SchemaEvent], [SchemaMedicalEntity], [SchemaOrganization],
  /// [SchemaPerson], [SchemaProduct]
  dynamic fundedItem;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

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

  /// Create a new instance of [SchemaGrant]
  SchemaGrant({
    this.fundedItem,
    this.funder,
    this.sponsor,
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

  /// Serialize [SchemaGrant] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Grant',
        'fundedItem': convertToJsonLd(fundedItem, [
          SchemaBioChemEntity,
          SchemaCreativeWork,
          SchemaEvent,
          SchemaMedicalEntity,
          SchemaOrganization,
          SchemaPerson,
          SchemaProduct
        ]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
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
