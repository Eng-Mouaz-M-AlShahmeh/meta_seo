import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Used to describe membership in a loyalty programs (e.g. "StarAliance"),
/// traveler clubs (e.g. "AAA"), purchase clubs ("Safeway Club"), etc.
/// See https://schema.org/ProgramMembership
class SchemaProgramMembership implements SchemaSerializable {
  /// The organization (airline, travelers' club, etc.) the membership is made
  /// with.
  SchemaOrganization? hostingOrganization;

  /// A member of an Organization or a ProgramMembership. Organizations can be
  /// members of organizations; ProgramMembership is typically for individuals.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic member;

  /// A member of this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic members;

  /// A unique identifier for the membership.
  String? membershipNumber;

  /// The number of membership points earned by the member. If necessary, the
  /// unitText can be used to express the units the points are issued in. (E.g.
  /// stars, miles, etc.)
  ///
  /// Supported types: [SchemaQuantitativeValue], [int]
  dynamic membershipPointsEarned;

  /// The program providing the membership.
  String? programName;

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

  /// Create a new instance of [SchemaProgramMembership]
  SchemaProgramMembership({
    this.hostingOrganization,
    this.member,
    this.members,
    this.membershipNumber,
    this.membershipPointsEarned,
    this.programName,
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

  /// Serialize [SchemaProgramMembership] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'ProgramMembership',
        'hostingOrganization':
            convertToJsonLd(hostingOrganization, [SchemaOrganization]),
        'member': convertToJsonLd(member, [SchemaOrganization, SchemaPerson]),
        'members': convertToJsonLd(members, [SchemaOrganization, SchemaPerson]),
        'membershipNumber': convertToJsonLd(membershipNumber, [String]),
        'membershipPointsEarned': convertToJsonLd(
            membershipPointsEarned, [SchemaQuantitativeValue, int]),
        'programName': convertToJsonLd(programName, [String]),
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
