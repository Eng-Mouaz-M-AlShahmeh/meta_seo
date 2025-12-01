import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A US-style health insurance plan, including PPOs, EPOs, and HMOs.
/// See https://schema.org/HealthInsurancePlan
class SchemaHealthInsurancePlan implements SchemaSerializable {
  /// The URL that goes directly to the summary of benefits and coverage for
  /// the specific standard plan or plan variation.
  String? benefitsSummaryUrl;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// TODO.
  String? healthPlanDrugOption;

  /// The tier(s) of drugs offered by this formulary or insurance plan.
  String? healthPlanDrugTier;

  /// The 14-character, HIOS-generated Plan ID number. (Plan IDs must be
  /// unique, even across different markets.)
  String? healthPlanId;

  /// The URL that goes directly to the plan brochure for the specific standard
  /// plan or plan variation.
  String? healthPlanMarketingUrl;

  /// Formularies covered by this plan.
  SchemaHealthPlanFormulary? includesHealthPlanFormulary;

  /// Networks covered by this plan.
  SchemaHealthPlanNetwork? includesHealthPlanNetwork;

  /// The standard for interpreting the Plan ID. The preferred is "HIOS". See
  /// the Centers for Medicare & Medicaid Services for more details.
  ///
  /// Supported types: [String], [String]
  String? usesHealthPlanIdStandard;

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

  /// Create a new instance of [SchemaHealthInsurancePlan]
  SchemaHealthInsurancePlan({
    this.benefitsSummaryUrl,
    this.contactPoint,
    this.healthPlanDrugOption,
    this.healthPlanDrugTier,
    this.healthPlanId,
    this.healthPlanMarketingUrl,
    this.includesHealthPlanFormulary,
    this.includesHealthPlanNetwork,
    this.usesHealthPlanIdStandard,
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

  /// Serialize [SchemaHealthInsurancePlan] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'HealthInsurancePlan',
        'benefitsSummaryUrl': convertToJsonLd(benefitsSummaryUrl, [String]),
        'contactPoint': convertToJsonLd(contactPoint, [SchemaContactPoint]),
        'healthPlanDrugOption': convertToJsonLd(healthPlanDrugOption, [String]),
        'healthPlanDrugTier': convertToJsonLd(healthPlanDrugTier, [String]),
        'healthPlanId': convertToJsonLd(healthPlanId, [String]),
        'healthPlanMarketingUrl':
            convertToJsonLd(healthPlanMarketingUrl, [String]),
        'includesHealthPlanFormulary': convertToJsonLd(
            includesHealthPlanFormulary, [SchemaHealthPlanFormulary]),
        'includesHealthPlanNetwork': convertToJsonLd(
            includesHealthPlanNetwork, [SchemaHealthPlanNetwork]),
        'usesHealthPlanIdStandard':
            convertToJsonLd(usesHealthPlanIdStandard, [String, String]),
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
