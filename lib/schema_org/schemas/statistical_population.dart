import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A StatisticalPopulation is a set of instances of a certain given type
/// that satisfy some set of constraints. The property [SchemapopulationType]
/// is used to specify the type. Any property that can be used on instances
/// of that type can appear on the statistical population. For example, a
/// [SchemaStatisticalPopulation] representing all [SchemaPerson]s with a
/// [SchemahomeLocation] of East Podunk California would be described by
/// applying the appropriate [SchemahomeLocation] and [SchemapopulationType]
/// properties to a [SchemaStatisticalPopulation] item that stands for that
/// set of people. The properties [SchemanumConstraints] and
/// [SchemaconstraintProperty] are used to specify which of the populations
/// properties are used to specify the population. Note that the sense of
/// "population" used here is the general sense of a statistical population,
/// and does not imply that the population consists of people. For example, a
/// [SchemapopulationType] of [SchemaEvent] or [SchemaNewsArticle] could be
/// used. See also [SchemaObservation], where a [SchemapopulationType] such
/// as [SchemaPerson] or [SchemaEvent] can be indicated directly. In most
/// cases it may be better to use [SchemaStatisticalVariable] instead of
/// [SchemaStatisticalPopulation].
/// See https://schema.org/StatisticalPopulation
class SchemaStatisticalPopulation implements SchemaSerializable {
  /// Indicates the populationType common to all members of a
  /// [SchemaStatisticalPopulation] or all cases within the scope of a
  /// [SchemaStatisticalVariable].
  SchemaClass? populationType;

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

  /// Create a new instance of [SchemaStatisticalPopulation]
  SchemaStatisticalPopulation({
    this.populationType,
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

  /// Serialize [SchemaStatisticalPopulation] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'StatisticalPopulation',
        'populationType': convertToJsonLd(populationType, [SchemaClass]),
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
