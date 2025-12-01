import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// The average rating based on multiple ratings or reviews.
/// See https://schema.org/AggregateRating
class SchemaAggregateRating implements SchemaSerializable {
  /// The item that is being reviewed/rated.
  SchemaThing? itemReviewed;

  /// The count of total number of ratings.
  int? ratingCount;

  /// The count of total number of reviews.
  int? reviewCount;

  /// The author of this content or rating. Please note that author is special
  /// in that HTML 5 provides a special mechanism for indicating authorship via
  /// the rel tag. That is equivalent to this and may be used interchangeably.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic author;

  /// The highest value allowed in this rating system. If bestRating is
  /// omitted, 5 is assumed.
  ///
  /// Supported types: [String], [int]
  dynamic bestRating;

  /// A short explanation (e.g. one to two sentences) providing background
  /// context and other information that led to the conclusion expressed in the
  /// rating. This is particularly applicable to ratings associated with "fact
  /// check" markup using [SchemaClaimReview].
  String? ratingExplanation;

  /// \n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT
  /// NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use
  /// '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal
  /// point. Avoid using these symbols as a readability separator.
  ///
  /// Supported types: [String], [int]
  dynamic ratingValue;

  /// This Review or Rating is relevant to this part or facet of the
  /// itemReviewed.
  String? reviewAspect;

  /// The lowest value allowed in this rating system. If worstRating is
  /// omitted, 1 is assumed.
  ///
  /// Supported types: [String], [int]
  dynamic worstRating;

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

  /// Create a new instance of [SchemaAggregateRating]
  SchemaAggregateRating({
    this.itemReviewed,
    this.ratingCount,
    this.reviewCount,
    this.author,
    this.bestRating,
    this.ratingExplanation,
    this.ratingValue,
    this.reviewAspect,
    this.worstRating,
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

  /// Serialize [SchemaAggregateRating] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'AggregateRating',
        'itemReviewed': convertToJsonLd(itemReviewed, [SchemaThing]),
        'ratingCount': convertToJsonLd(ratingCount, [int]),
        'reviewCount': convertToJsonLd(reviewCount, [int]),
        'author': convertToJsonLd(author, [SchemaOrganization, SchemaPerson]),
        'bestRating': convertToJsonLd(bestRating, [String, int]),
        'ratingExplanation': convertToJsonLd(ratingExplanation, [String]),
        'ratingValue': convertToJsonLd(ratingValue, [String, int]),
        'reviewAspect': convertToJsonLd(reviewAspect, [String]),
        'worstRating': convertToJsonLd(worstRating, [String, int]),
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
