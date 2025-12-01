import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

///
/// //www.ftc.gov/enforcement/rules/rulemaking-regulatory-reform-proceedings/energy-water-use-labeling-consumer)
/// under the Energy Policy and Conservation Act (EPCA) in the US.
/// See https://schema.org/EnergyConsumptionDetails
class SchemaEnergyConsumptionDetails implements SchemaSerializable {
  /// Specifies the most energy efficient class on the regulated EU energy
  /// consumption scale for the product category a product belongs to. For
  /// example, energy consumption for televisions placed on the market after
  /// January 1, 2020 is scaled from D to A+++.
  SchemaEUEnergyEfficiencyEnumeration? energyEfficiencyScaleMax;

  /// Specifies the least energy efficient class on the regulated EU energy
  /// consumption scale for the product category a product belongs to. For
  /// example, energy consumption for televisions placed on the market after
  /// January 1, 2020 is scaled from D to A+++.
  SchemaEUEnergyEfficiencyEnumeration? energyEfficiencyScaleMin;

  /// Defines the energy efficiency Category (which could be either a rating
  /// out of range of values or a yes/no certification) for a product according
  /// to an international energy efficiency standard.
  SchemaEnergyEfficiencyEnumeration? hasEnergyEfficiencyCategory;

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

  /// Create a new instance of [SchemaEnergyConsumptionDetails]
  SchemaEnergyConsumptionDetails({
    this.energyEfficiencyScaleMax,
    this.energyEfficiencyScaleMin,
    this.hasEnergyEfficiencyCategory,
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

  /// Serialize [SchemaEnergyConsumptionDetails] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'EnergyConsumptionDetails',
        'energyEfficiencyScaleMax': convertToJsonLd(
            energyEfficiencyScaleMax, [SchemaEUEnergyEfficiencyEnumeration]),
        'energyEfficiencyScaleMin': convertToJsonLd(
            energyEfficiencyScaleMin, [SchemaEUEnergyEfficiencyEnumeration]),
        'hasEnergyEfficiencyCategory': convertToJsonLd(
            hasEnergyEfficiencyCategory, [SchemaEnergyEfficiencyEnumeration]),
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
