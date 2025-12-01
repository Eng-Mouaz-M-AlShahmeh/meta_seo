import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// (Eventually to be defined as) a supertype of GeoShape designed to
/// accommodate definitions from Geo-Spatial best practices.
/// See https://schema.org/GeospatialGeometry
class SchemaGeospatialGeometry implements SchemaSerializable {
  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoContains;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCoveredBy;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCovers;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoCrosses;

  /// //en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoDisjoint;

  /// //en.wikipedia.org/wiki/DE-9IM). "Two geometries are topologically equal
  /// if their interiors intersect and no part of the interior or boundary of
  /// one geometry intersects the exterior of the other" (a symmetric
  /// relationship).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoEquals;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoIntersects;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoOverlaps;

  /// //en.wikipedia.org/wiki/DE-9IM).)
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoTouches;

  /// //en.wikipedia.org/wiki/DE-9IM).
  ///
  /// Supported types: [SchemaGeospatialGeometry], [SchemaPlace]
  dynamic geoWithin;

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

  /// Create a new instance of [SchemaGeospatialGeometry]
  SchemaGeospatialGeometry({
    this.geoContains,
    this.geoCoveredBy,
    this.geoCovers,
    this.geoCrosses,
    this.geoDisjoint,
    this.geoEquals,
    this.geoIntersects,
    this.geoOverlaps,
    this.geoTouches,
    this.geoWithin,
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

  /// Serialize [SchemaGeospatialGeometry] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'GeospatialGeometry',
        'geoContains': convertToJsonLd(
            geoContains, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCoveredBy': convertToJsonLd(
            geoCoveredBy, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCovers':
            convertToJsonLd(geoCovers, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoCrosses': convertToJsonLd(
            geoCrosses, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoDisjoint': convertToJsonLd(
            geoDisjoint, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoEquals':
            convertToJsonLd(geoEquals, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoIntersects': convertToJsonLd(
            geoIntersects, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoOverlaps': convertToJsonLd(
            geoOverlaps, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoTouches': convertToJsonLd(
            geoTouches, [SchemaGeospatialGeometry, SchemaPlace]),
        'geoWithin':
            convertToJsonLd(geoWithin, [SchemaGeospatialGeometry, SchemaPlace]),
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
