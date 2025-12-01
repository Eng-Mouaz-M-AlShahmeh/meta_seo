import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A profession, may involve prolonged training and/or a formal
/// qualification.
/// See https://schema.org/Occupation
class SchemaOccupation implements SchemaSerializable {
  /// Educational background needed for the position or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationRequirements;

  /// An estimated salary for a job posting or occupation, based on a variety
  /// of variables including, but not limited to industry, job title, and
  /// location. Estimated salaries are often computed by outside organizations
  /// rather than the hiring organization, who may not have committed to the
  /// estimated value.
  ///
  /// Supported types: [SchemaMonetaryAmount],
  /// [SchemaMonetaryAmountDistribution], [int]
  dynamic estimatedSalary;

  /// Description of skills and experience needed for the position or
  /// Occupation.
  ///
  /// Supported types: [SchemaOccupationalExperienceRequirements], [String]
  dynamic experienceRequirements;

  /// The region/country for which this occupational description is
  /// appropriate. Note that educational requirements and qualifications can
  /// vary between jurisdictions.
  SchemaAdministrativeArea? occupationLocation;

  /// for historical reasons, any textual label and formal code provided as a
  /// literal may be assumed to be from O*NET-SOC.
  ///
  /// Supported types: [SchemaCategoryCode], [String]
  dynamic occupationalCategory;

  /// Specific qualifications required for this role or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic qualifications;

  /// Responsibilities associated with this role or Occupation.
  String? responsibilities;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is desired or required to fulfill this role
  /// or to work in this occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

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

  /// Create a new instance of [SchemaOccupation]
  SchemaOccupation({
    this.educationRequirements,
    this.estimatedSalary,
    this.experienceRequirements,
    this.occupationLocation,
    this.occupationalCategory,
    this.qualifications,
    this.responsibilities,
    this.skills,
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

  /// Serialize [SchemaOccupation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Occupation',
        'educationRequirements': convertToJsonLd(educationRequirements,
            [SchemaEducationalOccupationalCredential, String]),
        'estimatedSalary': convertToJsonLd(estimatedSalary,
            [SchemaMonetaryAmount, SchemaMonetaryAmountDistribution, int]),
        'experienceRequirements': convertToJsonLd(experienceRequirements,
            [SchemaOccupationalExperienceRequirements, String]),
        'occupationLocation':
            convertToJsonLd(occupationLocation, [SchemaAdministrativeArea]),
        'occupationalCategory':
            convertToJsonLd(occupationalCategory, [SchemaCategoryCode, String]),
        'qualifications': convertToJsonLd(
            qualifications, [SchemaEducationalOccupationalCredential, String]),
        'responsibilities': convertToJsonLd(responsibilities, [String]),
        'skills': convertToJsonLd(skills, [SchemaDefinedTerm, String]),
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
