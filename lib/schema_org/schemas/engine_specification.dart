import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Information about the engine of the vehicle. A vehicle can have multiple
/// engines represented by multiple engine specification entities.
/// See https://schema.org/EngineSpecification
class SchemaEngineSpecification implements SchemaSerializable {
  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? engineDisplacement;

  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? enginePower;

  /// The type of engine or engines powering the vehicle.
  ///
  /// Supported types: [SchemaQualitativeValue], [String], [String]
  dynamic engineType;

  /// The type of fuel suitable for the engine or engines of the vehicle. If
  /// the vehicle has only one engine, this property can be attached directly
  /// to the vehicle.
  ///
  /// Supported types: [SchemaQualitativeValue], [String], [String]
  dynamic fuelType;

  /// You can use [SchemaminValue] and [SchemamaxValue] to indicate ranges.
  SchemaQuantitativeValue? torque;

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

  /// Create a new instance of [SchemaEngineSpecification]
  SchemaEngineSpecification({
    this.engineDisplacement,
    this.enginePower,
    this.engineType,
    this.fuelType,
    this.torque,
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

  /// Serialize [SchemaEngineSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'EngineSpecification',
        'engineDisplacement':
            convertToJsonLd(engineDisplacement, [SchemaQuantitativeValue]),
        'enginePower': convertToJsonLd(enginePower, [SchemaQuantitativeValue]),
        'engineType': convertToJsonLd(
            engineType, [SchemaQualitativeValue, String, String]),
        'fuelType':
            convertToJsonLd(fuelType, [SchemaQualitativeValue, String, String]),
        'torque': convertToJsonLd(torque, [SchemaQuantitativeValue]),
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
