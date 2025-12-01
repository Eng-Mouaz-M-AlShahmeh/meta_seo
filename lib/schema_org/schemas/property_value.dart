import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A property-value pair, e.g. representing a feature of a product or place.
/// Use the 'name' property for the name of the property. If there is an
/// additional human-readable version of the value, put that into the
/// 'description' property.\n\n Always use specific schema.org properties
/// when a) they exist and b) you can populate them. Using PropertyValue as a
/// substitute will typically not trigger the same effect as using the
/// original, specific property.
/// See https://schema.org/PropertyValue
class SchemaPropertyValue implements SchemaSerializable {
  /// The upper value of some characteristic or property.
  int? maxValue;

  /// A subproperty of [SchemameasurementTechnique] that can be used for
  /// specifying specific methods, in particular via
  /// [SchemaMeasurementMethodEnum].
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaMeasurementMethodEnum],
  /// [String], [String]
  dynamic measurementMethod;

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

  /// The lower value of some characteristic or property.
  int? minValue;

  /// A commonly used identifier for the characteristic represented by the
  /// property, e.g. a manufacturer or a standard code for a property.
  /// propertyID can be (1) a prefixed string, mainly meant to be used with
  /// standards for product properties; (2) a site-specific, non-prefixed
  /// string (e.g. the primary key of the property or the vendor-specific ID of
  /// the property), or (3) a URL indicating the type of the property, either
  /// pointing to an external vocabulary, or a Web resource that describes the
  /// property (e.g. a glossary entry). Standards bodies should promote a
  /// standard prefix for the identifiers of properties from their standards.
  ///
  /// Supported types: [String], [String]
  String? propertyID;

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

  /// Create a new instance of [SchemaPropertyValue]
  SchemaPropertyValue({
    this.maxValue,
    this.measurementMethod,
    this.measurementTechnique,
    this.minValue,
    this.propertyID,
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

  /// Serialize [SchemaPropertyValue] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'PropertyValue',
        'maxValue': convertToJsonLd(maxValue, [int]),
        'measurementMethod': convertToJsonLd(measurementMethod,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'measurementTechnique': convertToJsonLd(measurementTechnique,
            [SchemaDefinedTerm, SchemaMeasurementMethodEnum, String, String]),
        'minValue': convertToJsonLd(minValue, [int]),
        'propertyID': convertToJsonLd(propertyID, [String, String]),
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
