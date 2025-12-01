import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Instances of the class [SchemaObservation] are used to specify
/// observations about an entity at a particular time. The principal
/// properties of an [SchemaObservation] are [SchemaobservationAbout],
/// [SchemameasuredProperty], [SchemastatType], [Schemavalue] and
/// [[observationDate] and [SchemameasuredProperty]. Some but not all
/// Observations represent a [SchemaQuantitativeValue]. Quantitative
/// observations can be about a [SchemaStatisticalVariable], which is an
/// abstract specification about which we can make observations that are
/// grounded at a particular location and time. Observations can also encode
/// a subset of simple RDF-like statements (its observationAbout, a
/// StatisticalVariable, defining the measuredPoperty; its observationAbout
/// property indicating the entity the statement is about, and [Schemavalue]
/// )
///
/// In the context of a quantitative knowledge graph, typical properties
/// could include [SchemameasuredProperty], [SchemaobservationAbout],
/// [SchemaobservationDate], [Schemavalue], [SchemaunitCode],
/// [SchemaunitText], [SchemameasurementMethod].
/// See https://schema.org/Observation
class SchemaObservation implements SchemaSerializable {
  /// A [SchemamarginOfError] for an [SchemaObservation].
  SchemaQuantitativeValue? marginOfError;

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

  /// The [SchemaobservationAbout] property identifies an entity, often a
  /// [SchemaPlace], associated with an [SchemaObservation].
  ///
  /// Supported types: [SchemaPlace], [SchemaThing]
  dynamic observationAbout;

  /// The observationDate of an [SchemaObservation].
  String? observationDate;

  /// The length of time an Observation took place over. The format follows
  /// `P[0-9]*[Y|M|D|h|m|s]`. For example, P1Y is Period 1 Year, P3M is Period
  /// 3 Months, P3h is Period 3 hours.
  String? observationPeriod;

  /// The variableMeasured property can indicate (repeated as necessary) the
  /// variables that are measured in some dataset, either described as text or
  /// as pairs of identifier and description using PropertyValue, or more
  /// explicitly as a [SchemaStatisticalVariable].
  ///
  /// Supported types: [SchemaProperty], [SchemaPropertyValue],
  /// [SchemaStatisticalVariable], [String]
  dynamic variableMeasured;

  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// The upper value of some characteristic or property.
  int? maxValue;

  /// The lower value of some characteristic or property.
  int? minValue;

  /// The unit of measurement given using the UN/CEFACT Common Code (3
  /// characters) or a URL. Other codes than the UN/CEFACT Common Code may be
  /// used with a prefix followed by a colon.
  ///
  /// Supported types: [String], [String]
  String? unitCode;

  /// A string or text indicating the unit of measurement. Useful if you cannot
  /// provide a standard unit code for <a href='unitCode'>unitCode</a>.
  String? unitText;

  /// The value of a [SchemaQuantitativeValue] (including [SchemaObservation])
  /// or property value node.\n\n* For [SchemaQuantitativeValue] and
  /// [SchemaMonetaryAmount], the recommended type for values is 'Number'.\n*
  /// For [SchemaPropertyValue], it can be 'Text', 'Number', 'Boolean', or
  /// 'StructuredValue'.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO'
  /// (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar
  /// Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than
  /// ',' to indicate a decimal point. Avoid using these symbols as a
  /// readability separator.
  ///
  /// Supported types: [String], [SchemaStructuredValue], [bool], [int]
  dynamic value;

  /// A secondary value that provides additional information on the original
  /// value, e.g. a reference temperature or a type of measurement.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaEnumeration],
  /// [SchemaMeasurementTypeEnumeration], [SchemaPropertyValue],
  /// [SchemaQualitativeValue], [SchemaQuantitativeValue], [String],
  /// [SchemaStructuredValue]
  dynamic valueReference;

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

  /// Create a new instance of [SchemaObservation]
  SchemaObservation({
    this.marginOfError,
    this.measuredProperty,
    this.measurementDenominator,
    this.measurementMethod,
    this.measurementQualifier,
    this.measurementTechnique,
    this.observationAbout,
    this.observationDate,
    this.observationPeriod,
    this.variableMeasured,
    this.additionalProperty,
    this.maxValue,
    this.minValue,
    this.unitCode,
    this.unitText,
    this.value,
    this.valueReference,
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

  /// Serialize [SchemaObservation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Observation',
        'marginOfError':
            convertToJsonLd(marginOfError, [SchemaQuantitativeValue]),
        'measuredProperty': convertToJsonLd(measuredProperty, [SchemaProperty]),
        'measurementDenominator': convertToJsonLd(
            measurementDenominator, [SchemaStatisticalVariable]),
        'measurementMethod': convertToJsonLd(measurementMethod,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'measurementQualifier':
            convertToJsonLd(measurementQualifier, [SchemaEnumeration]),
        'measurementTechnique': convertToJsonLd(measurementTechnique,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'observationAbout':
            convertToJsonLd(observationAbout, [SchemaPlace, SchemaThing]),
        'observationDate': convertToJsonLd(observationDate, [String]),
        'observationPeriod': convertToJsonLd(observationPeriod, [String]),
        'variableMeasured': convertToJsonLd(variableMeasured, [
          SchemaProperty,
          SchemaPropertyValue,
          SchemaStatisticalVariable,
          String
        ]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'maxValue': convertToJsonLd(maxValue, [int]),
        'minValue': convertToJsonLd(minValue, [int]),
        'unitCode': convertToJsonLd(unitCode, [String, String]),
        'unitText': convertToJsonLd(unitText, [String]),
        'value':
            convertToJsonLd(value, [String, SchemaStructuredValue, bool, int]),
        'valueReference': convertToJsonLd(valueReference, [
          SchemaDefinedTerm,
          SchemaEnumeration,
          SchemaMeasurementTypeEnumeration,
          SchemaPropertyValue,
          SchemaQualitativeValue,
          SchemaQuantitativeValue,
          String,
          SchemaStructuredValue
        ]),
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
