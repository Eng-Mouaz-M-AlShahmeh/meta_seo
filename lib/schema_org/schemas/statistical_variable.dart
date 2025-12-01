import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// the population type is [SchemaPerson]; the measuredProperty
/// [Schemaheight]; the [SchemastatType] [Schemamedian]; the [Schemagender]
/// [SchemaFemale]. It is important to note that there are many kinds of
/// scientific quantitative observation which are not fully, perfectly or
/// unambiguously described following this pattern, or with solely Schema.org
/// terminology. The approach taken here is designed to allow partial,
/// incremental or minimal description of [SchemaStatisticalVariable]s, and
/// the use of detailed sets of entity and property IDs from external
/// repositories. The [SchemameasurementMethod], [SchemaunitCode] and
/// [SchemaunitText] properties can also be used to clarify the specific
/// nature and notation of an observed measurement.
/// See https://schema.org/StatisticalVariable
class SchemaStatisticalVariable implements SchemaSerializable {
  /// //www.gs1.org/voc/?show=properties).
  SchemaProperty? measuredProperty;

  /// Identifies the denominator variable when an observation represents a
  /// ratio or percentage.
  SchemaStatisticalVariable? measurementDenominator;

  /// A subproperty of [SchemameasurementTechnique] that can be used for
  /// specifying specific methods, in particular via
  /// [SchemaMeasurementMethodEnum].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String], [String]
  dynamic measurementMethod;

  /// Provides additional qualification to an observation. For example, a GDP
  /// observation measures the Nominal value.
  SchemaEnumeration? measurementQualifier;

  /// "mass spectrometry" or "nmr spectroscopy" or "colorimetry" or
  /// "immunofluorescence". If the [SchemavariableMeasured] is "depression
  /// rating", the [SchemameasurementTechnique] could be "Zung Scale" or
  /// "HAM-D" or "Beck Depression Inventory".
  ///
  /// If there are several [SchemavariableMeasured] properties recorded for
  /// some given data object, use a [SchemaPropertyValue] for each
  /// [SchemavariableMeasured] and attach the corresponding
  /// [SchemameasurementTechnique]. The value can also be from an enumeration,
  /// organized as a [SchemaMeasurementMetholdEnumeration].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String], [String]
  dynamic measurementTechnique;

  /// Indicates the populationType common to all members of a
  /// [SchemaStatisticalPopulation] or all cases within the scope of a
  /// [SchemaStatisticalVariable].
  SchemaClass? populationType;

  /// Indicates the kind of statistic represented by a
  /// [SchemaStatisticalVariable], e.g. mean, count etc. The value of statType
  /// is a property, either from within Schema.org (e.g. [Schemacount],
  /// [Schemamedian], [SchemamarginOfError], [SchemamaxValue],
  /// [SchemaminValue]) or from other compatible (e.g. RDF) systems such as
  /// DataCommons.org or Wikidata.org.
  ///
  /// Supported types: [SchemaProperty], [String], [String]
  dynamic statType;

  /// Indicates a property used as a constraint. For example, in the definition
  /// of a [SchemaStatisticalVariable]. The value is a property, either from
  /// within Schema.org or from other compatible (e.g. RDF) systems such as
  /// DataCommons.org or Wikidata.org.
  ///
  /// Supported types: [SchemaProperty], [String]
  dynamic constraintProperty;

  /// Indicates the number of constraints property values defined for a
  /// particular [SchemaConstraintNode] such as [SchemaStatisticalVariable].
  /// This helps applications understand if they have access to a sufficiently
  /// complete description of a [SchemaStatisticalVariable] or other construct
  /// that is defined using properties on template-style nodes.
  int? numConstraints;

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

  /// Create a new instance of [SchemaStatisticalVariable]
  SchemaStatisticalVariable({
    this.measuredProperty,
    this.measurementDenominator,
    this.measurementMethod,
    this.measurementQualifier,
    this.measurementTechnique,
    this.populationType,
    this.statType,
    this.constraintProperty,
    this.numConstraints,
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

  /// Serialize [SchemaStatisticalVariable] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'StatisticalVariable',
        'measuredProperty': convertToJsonLd(measuredProperty, [SchemaProperty]),
        'measurementDenominator': convertToJsonLd(
            measurementDenominator, [SchemaStatisticalVariable]),
        'measurementMethod': convertToJsonLd(measurementMethod,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'measurementQualifier':
            convertToJsonLd(measurementQualifier, [SchemaEnumeration]),
        'measurementTechnique': convertToJsonLd(measurementTechnique,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'populationType': convertToJsonLd(populationType, [SchemaClass]),
        'statType': convertToJsonLd(statType, [SchemaProperty, String, String]),
        'constraintProperty':
            convertToJsonLd(constraintProperty, [SchemaProperty, String]),
        'numConstraints': convertToJsonLd(numConstraints, [int]),
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
