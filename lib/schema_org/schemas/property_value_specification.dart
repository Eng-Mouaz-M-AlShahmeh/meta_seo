import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A Property value specification.
/// See https://schema.org/PropertyValueSpecification
class SchemaPropertyValueSpecification implements SchemaSerializable {
  /// The default value of the input. For properties that expect a literal, the
  /// default is a literal value, for properties that expect an object, it's an
  /// ID reference to one of the current values.
  ///
  /// Supported types: [String], [SchemaThing]
  dynamic defaultValue;

  /// The upper value of some characteristic or property.
  int? maxValue;

  /// The lower value of some characteristic or property.
  int? minValue;

  /// Whether multiple values are allowed for the property. Default is false.
  bool? multipleValues;

  /// Whether or not a property is mutable. Default is false. Specifying this
  /// for a property that also has a value makes it act similar to a "hidden"
  /// input in an HTML form.
  bool? readonlyValue;

  /// The stepValue attribute indicates the granularity that is expected (and
  /// required) of the value in a PropertyValueSpecification.
  int? stepValue;

  /// Specifies the allowed range for number of characters in a literal value.
  int? valueMaxLength;

  /// Specifies the minimum allowed range for number of characters in a literal
  /// value.
  int? valueMinLength;

  /// Indicates the name of the PropertyValueSpecification to be used in URL
  /// templates and form encoding in a manner analogous to HTML's input@name.
  String? valueName;

  /// Specifies a regular expression for testing literal values according to
  /// the HTML spec.
  String? valuePattern;

  /// Whether the property must be filled in to complete the action. Default is
  /// false.
  bool? valueRequired;

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

  /// Create a new instance of [SchemaPropertyValueSpecification]
  SchemaPropertyValueSpecification({
    this.defaultValue,
    this.maxValue,
    this.minValue,
    this.multipleValues,
    this.readonlyValue,
    this.stepValue,
    this.valueMaxLength,
    this.valueMinLength,
    this.valueName,
    this.valuePattern,
    this.valueRequired,
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

  /// Serialize [SchemaPropertyValueSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'PropertyValueSpecification',
        'defaultValue': convertToJsonLd(defaultValue, [String, SchemaThing]),
        'maxValue': convertToJsonLd(maxValue, [int]),
        'minValue': convertToJsonLd(minValue, [int]),
        'multipleValues': convertToJsonLd(multipleValues, [bool]),
        'readonlyValue': convertToJsonLd(readonlyValue, [bool]),
        'stepValue': convertToJsonLd(stepValue, [int]),
        'valueMaxLength': convertToJsonLd(valueMaxLength, [int]),
        'valueMinLength': convertToJsonLd(valueMinLength, [int]),
        'valueName': convertToJsonLd(valueName, [String]),
        'valuePattern': convertToJsonLd(valuePattern, [String]),
        'valueRequired': convertToJsonLd(valueRequired, [bool]),
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
