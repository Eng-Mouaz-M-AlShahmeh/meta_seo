import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Full (compile ready) solutions, code snippet samples, scripts, templates.
/// See https://schema.org/Code
class SchemaCode implements SchemaSerializable {
  /// The subject matter of the content.
  SchemaThing? about;

  /// An abstract is a short description that summarizes a
  /// [SchemaCreativeWork].
  String? abstract;

  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessMode-vocabulary).
  String? accessMode;

  ///
  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessModeSufficient-vocabulary).
  SchemaItemList? accessModeSufficient;

  ///
  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityAPI-vocabulary).
  String? accessibilityAPI;

  ///
  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityControl-vocabulary).
  String? accessibilityControl;

  ///
  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityFeature-vocabulary).
  String? accessibilityFeature;

  ///
  /// //www.w3.org/2021/a11y-discov-vocab/latest/#accessibilityHazard-vocabulary).
  String? accessibilityHazard;

  /// A human-readable summary of specific accessibility features or
  /// deficiencies, consistent with the other accessibility metadata but
  /// expressing subtleties such as "short descriptions are present but long
  /// descriptions will be needed for non-visual users" or "short descriptions
  /// are present and no long descriptions are needed".
  String? accessibilitySummary;

  /// Specifies the Person that is legally accountable for the CreativeWork.
  SchemaPerson? accountablePerson;

  /// Indicates a page documenting how licenses can be purchased or otherwise
  /// acquired, for the current item.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic acquireLicensePage;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// A secondary title of the CreativeWork.
  String? alternativeHeadline;

  /// Indicates a page or other link involved in archival of a
  /// [SchemaCreativeWork]. In the case of [SchemaMediaReview], the items in a
  /// [SchemaMediaReviewItem] may often become inaccessible, but be archived by
  /// archival, journalistic, activist, or law enforcement organizations. In
  /// such cases, the referenced page may not directly publish the content.
  ///
  /// Supported types: [String], [SchemaWebPage]
  dynamic archivedAt;

  /// The item being described is intended to assess the competency or learning
  /// outcome defined by the referenced term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic assesses;

  /// A media object that encodes this CreativeWork. This property is a synonym
  /// for encoding.
  SchemaMediaObject? associatedMedia;

  /// An intended audience, i.e. a group for whom something was created.
  SchemaAudience? audience;

  /// An embedded audio object.
  ///
  /// Supported types: [SchemaAudioObject], [SchemaClip],
  /// [SchemaMusicRecording]
  dynamic audio;

  /// The author of this content or rating. Please note that author is special
  /// in that HTML 5 provides a special mechanism for indicating authorship via
  /// the rel tag. That is equivalent to this and may be used interchangeably.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic author;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  String? awards;

  /// Fictional person connected with a creative work.
  SchemaPerson? character;

  /// A citation or reference to another creative work, such as another
  /// publication, web page, scholarly article, etc.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic citation;

  /// Comments, typically from users.
  SchemaComment? comment;

  /// The number of comments this CreativeWork (e.g. Article, Question or
  /// Answer) has received. This is most applicable to works published in Web
  /// sites with commenting system; additional comments may exist elsewhere.
  int? commentCount;

  /// Conditions that affect the availability of, or method(s) of access to, an
  /// item. Typically used for real world items such as an
  /// [SchemaArchiveComponent] held by an [SchemaArchiveOrganization]. This
  /// property is not suitable for use as a general Web access control
  /// mechanism. It is expressed only in natural language.\n\nFor example
  /// "Available by appointment from the Reading Room" or "Accessible only from
  /// logged-in accounts ".
  String? conditionsOfAccess;

  /// The location depicted or described in the content. For example, the
  /// location in a photograph or painting.
  SchemaPlace? contentLocation;

  /// Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'.
  ///
  /// Supported types: [SchemaRating], [String]
  dynamic contentRating;

  /// The specific time described by a creative work, for works (e.g. articles,
  /// video objects etc.) that emphasise a particular moment within an Event.
  String? contentReferenceTime;

  /// A secondary contributor to the CreativeWork or Event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic contributor;

  /// The party holding the legal copyright to the CreativeWork.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic copyrightHolder;

  /// Text of a notice appropriate for describing the copyright aspects of this
  /// Creative Work, ideally indicating the owner of the copyright for the
  /// Work.
  String? copyrightNotice;

  /// The year during which the claimed copyright for the CreativeWork was
  /// first asserted.
  int? copyrightYear;

  /// Indicates a correction to a [SchemaCreativeWork], either via a
  /// [SchemaCorrectionComment], textually or in another document.
  ///
  /// Supported types: [SchemaCorrectionComment], [String], [String]
  dynamic correction;

  /// The country of origin of something, including products as well as
  /// creative works such as movie and TV content.
  ///
  /// In the case of TV and movie, this would be the country of the principle
  /// offices of the production company or individual responsible for the
  /// movie. For other kinds of [SchemaCreativeWork] it is difficult to provide
  /// fully general guidance, and properties such as [SchemacontentLocation]
  /// and [SchemalocationCreated] may be more applicable.
  ///
  /// In the case of products, the country of origin of the product. The exact
  /// interpretation of this may vary by context and product type, and cannot
  /// be fully enumerated here.
  SchemaCountry? countryOfOrigin;

  /// The status of a creative work in terms of its stage in a lifecycle.
  /// Example terms include Incomplete, Draft, Published, Obsolete. Some
  /// organizations define a set of terms for the stages of their publication
  /// lifecycle.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic creativeWorkStatus;

  /// The creator/author of this CreativeWork. This is the same as the Author
  /// property for CreativeWork.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic creator;

  /// Text that can be used to credit person(s) and/or organization(s)
  /// associated with a published Creative Work.
  String? creditText;

  /// The date on which the CreativeWork was created or the item was added to a
  /// DataFeed.
  ///
  /// Supported types: [String], [String]
  String? dateCreated;

  /// The date on which the CreativeWork was most recently modified or when the
  /// item's entry was modified within a DataFeed.
  ///
  /// Supported types: [String], [String]
  String? dateModified;

  /// Date of first publication or broadcast. For example the date a
  /// [SchemaCreativeWork] was broadcast or a [SchemaCertification] was issued.
  ///
  /// Supported types: [String], [String]
  String? datePublished;

  /// Indicates an IPTCDigitalSourceEnumeration code indicating the nature of
  /// the digital source(s) for some [SchemaCreativeWork].
  SchemaIPTCDigitalSourceEnumeration? digitalSourceType;

  /// A link to the page containing the comments of the CreativeWork.
  String? discussionUrl;

  /// //eidr.org/) (Entertainment Identifier Registry) [Schemaidentifier]
  /// representing a specific edit / edition for a work of film or television.
  ///
  /// For example, the motion picture known as "Ghostbusters" whose
  /// [SchematitleEIDR] is "10.5240/7EC7-228A-510A-053E-CBB8-J" has several
  /// edits, e.g. "10.5240/1F2A-E1C5-680A-14C6-E76B-I" and
  /// "10.5240/8A35-3BEE-6497-5D12-9E4F-3".
  ///
  /// Since schema.org types like [SchemaMovie] and [SchemaTVEpisode] can be
  /// used for both works and their multiple expressions, it is possible to use
  /// [SchematitleEIDR] alone (for a general description), or alongside
  /// [SchemaeditEIDR] for a more edit-specific description.
  ///
  /// Supported types: [String], [String]
  String? editEIDR;

  /// Specifies the Person who edited the CreativeWork.
  SchemaPerson? editor;

  /// An alignment to an established educational framework.
  ///
  /// This property should not be used where the nature of the alignment can be
  /// described using a simple property, for example to express that a resource
  /// [Schemateaches] or [Schemaassesses] a competency.
  SchemaAlignmentObject? educationalAlignment;

  /// The level in terms of progression through an educational or training
  /// context. Examples of educational levels include 'beginner',
  /// 'intermediate' or 'advanced', and formal sets of level indicators.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic educationalLevel;

  /// The purpose of a work in the context of education; for example,
  /// 'assignment', 'group work'.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic educationalUse;

  /// A media object that encodes this CreativeWork. This property is a synonym
  /// for associatedMedia.
  SchemaMediaObject? encoding;

  /// //developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)),
  /// e.g. application/zip for a SoftwareApplication binary, audio/mpeg for
  /// .mp3 etc.
  ///
  /// In cases where a [SchemaCreativeWork] has several media type
  /// representations, [Schemaencoding] can be used to indicate each
  /// [SchemaMediaObject] alongside particular [SchemaencodingFormat]
  /// information.
  ///
  /// Unregistered or niche encoding and file formats can be indicated instead
  /// via the most appropriate URL, e.g. defining Web page or a
  /// Wikipedia/Wikidata entry.
  ///
  /// Supported types: [String], [String]
  String? encodingFormat;

  /// A media object that encodes this CreativeWork.
  SchemaMediaObject? encodings;

  /// A creative work that this work is an
  /// example/instance/realization/derivation of.
  SchemaCreativeWork? exampleOfWork;

  /// Date the content expires and is no longer useful or available. For
  /// example a [SchemaVideoObject] or [SchemaNewsArticle] whose availability
  /// or relevance is time-limited, a [SchemaClaimReview] fact check whose
  /// publisher wants to indicate that it may no longer be relevant (or helpful
  /// to highlight) after some date, or a [SchemaCertification] the validity
  /// has expired.
  ///
  /// Supported types: [String], [String]
  String? expires;

  /// //www.iana.org/assignments/media-types/media-types.xhtml)) of the
  /// content, e.g. application/zip of a SoftwareApplication binary. In cases
  /// where a CreativeWork has several media type representations, 'encoding'
  /// can be used to indicate each MediaObject alongside particular fileFormat
  /// information. Unregistered or niche file formats can be indicated instead
  /// via the most appropriate URL, e.g. defining Web page or a Wikipedia
  /// entry.
  ///
  /// Supported types: [String], [String]
  String? fileFormat;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// Genre of the creative work, broadcast channel or group.
  ///
  /// Supported types: [String], [String]
  String? genre;

  /// Indicates an item or CreativeWork that is part of this item, or
  /// CreativeWork (in some sense).
  SchemaCreativeWork? hasPart;

  /// Headline of the article.
  String? headline;

  /// //tools.ietf.org/html/bcp47). See also [SchemaavailableLanguage].
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic inLanguage;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The predominant mode of learning supported by the learning resource.
  /// Acceptable values are 'active', 'expositive', or 'mixed'.
  String? interactivityType;

  /// Used to indicate a specific claim contained, implied, translated or
  /// refined from the content of a [SchemaMediaObject] or other
  /// [SchemaCreativeWork]. The interpreting party can be indicated using
  /// [SchemaclaimInterpreter].
  SchemaClaim? interpretedAsClaim;

  /// A flag to signal that the item, event, or place is accessible for free.
  bool? isAccessibleForFree;

  /// A resource from which this work is derived or from which it is a
  /// modification or adaptation.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaProduct], [String]
  dynamic isBasedOn;

  /// //example.com/great-multiplication-intro.html.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaProduct], [String]
  dynamic isBasedOnUrl;

  /// Indicates whether this content is family friendly.
  bool? isFamilyFriendly;

  /// Indicates an item or CreativeWork that this item, or CreativeWork (in
  /// some sense), is part of.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic isPartOf;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic keywords;

  /// The predominant type or kind characterizing the learning resource. For
  /// example, 'presentation', 'handout'.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic learningResourceType;

  /// A license document that applies to this content, typically indicated by
  /// URL.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic license;

  /// The location where the CreativeWork was created, which may not be the
  /// same as the location depicted in the CreativeWork.
  SchemaPlace? locationCreated;

  /// Indicates the primary entity described in some page or other
  /// CreativeWork.
  SchemaThing? mainEntity;

  /// A maintainer of a [SchemaDataset], software package
  /// ([SchemaSoftwareApplication]), or other [SchemaProject]. A maintainer is
  /// a [SchemaPerson] or [SchemaOrganization] that manages contributions to,
  /// and/or publication of, some (typically complex) artifact. It is common
  /// for distributions of software and data to be based on "upstream" sources.
  /// When [Schemamaintainer] is applied to a specific version of something
  /// e.g. a particular version or packaging of a [SchemaDataset], it is always
  /// possible that the upstream source has a different maintainer. The
  /// [SchemaisBasedOn] property can be used to indicate such relationships
  /// between datasets to make the different maintenance roles clear. Similarly
  /// in the case of software, a package may have dedicated maintainers working
  /// on integration into software distributions such as Ubuntu, as well as
  /// upstream maintainers of the underlying work.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic maintainer;

  /// A material that something is made from, e.g. leather, wool, cotton,
  /// paper.
  ///
  /// Supported types: [SchemaProduct], [String], [String]
  dynamic material;

  /// The quantity of the materials being described or an expression of the
  /// physical space they occupy.
  ///
  /// Supported types: [SchemaQuantitativeValue], [String]
  dynamic materialExtent;

  /// Indicates that the CreativeWork contains a reference to, but is not
  /// necessarily about a concept.
  SchemaThing? mentions;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// A pattern that something has, for example 'polka dot', 'striped',
  /// 'Canadian flag'. Values are typically expressed as text, although links
  /// to controlled value schemes are also supported.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic pattern;

  /// The position of an item in a series or sequence of items.
  ///
  /// Supported types: [String], [int]
  dynamic position;

  /// The person or organization who produced the work (e.g. music album,
  /// movie, TV/radio series etc.).
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic producer;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// A publication event associated with the item.
  SchemaPublicationEvent? publication;

  /// The publisher of the creative work.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic publisher;

  /// The publishing division which published the comic.
  SchemaOrganization? publisherImprint;

  /// The publishingPrinciples property indicates (typically via [SchemaURL]) a
  /// document describing the editorial principles of an [SchemaOrganization]
  /// (or individual, e.g. a [SchemaPerson] writing a blog) that relate to
  /// their activities as a publisher, e.g. ethics or diversity policies. When
  /// applied to a [SchemaCreativeWork] (e.g. [SchemaNewsArticle]) the
  /// principles are those of the party primarily responsible for the creation
  /// of the [SchemaCreativeWork].
  ///
  /// While such policies are most typically expressed in natural language,
  /// sometimes related information (e.g. indicating a [Schemafunder]) can be
  /// expressed using schema.org terminology.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic publishingPrinciples;

  /// The Event where the CreativeWork was recorded. The CreativeWork may
  /// capture all or part of the event.
  SchemaEvent? recordedAt;

  /// The place and time the release was issued, expressed as a
  /// PublicationEvent.
  SchemaPublicationEvent? releasedEvent;

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  SchemaReview? reviews;

  /// //dublincore.org/specifications/dublin-core/dces/1999-07-02/``` but this
  /// has not been carefully explored in the community.
  ///
  /// Supported types: [String], [String]
  String? schemaVersion;

  /// Indicates the date on which the current structured data was generated /
  /// published. Typically used alongside [SchemasdPublisher].
  String? sdDatePublished;

  /// A license document that applies to this structured data, typically
  /// indicated by URL.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic sdLicense;

  /// Indicates the party responsible for generating and publishing the current
  /// structured data markup, typically in cases where the structured data is
  /// derived automatically from existing published content but published on a
  /// different site. For example, student projects and open data initiatives
  /// often re-publish existing content with more explicitly structured
  /// metadata. The [SchemasdPublisher] property helps make such practices more
  /// explicit.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sdPublisher;

  /// A standardized size of a product or creative work, specified either
  /// through a simple textual string (for example 'XL', '32Wx34L'), a
  /// QuantitativeValue with a unitCode, or a comprehensive and structured
  /// [SchemaSizeSpecification]; in other cases, the [Schemawidth],
  /// [Schemaheight], [Schemadepth] and [Schemaweight] properties may be more
  /// applicable.
  ///
  /// Supported types: [SchemaDefinedTerm], [SchemaQuantitativeValue],
  /// [SchemaSizeSpecification], [String]
  dynamic size;

  /// The Organization on whose behalf the creator was working.
  SchemaOrganization? sourceOrganization;

  /// The "spatial" property can be used in cases when more specific properties
  /// (e.g. [SchemalocationCreated], [SchemaspatialCoverage],
  /// [SchemacontentLocation]) are not known to be appropriate.
  SchemaPlace? spatial;

  /// the state of New York.
  SchemaPlace? spatialCoverage;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The item being described is intended to help a person learn the
  /// competency or learning outcome defined by the referenced term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic teaches;

  /// The "temporal" property can be used in cases where more specific
  /// properties (e.g. [SchematemporalCoverage], [SchemadateCreated],
  /// [SchemadateModified], [SchemadatePublished]) are not known to be
  /// appropriate.
  ///
  /// Supported types: [String], [String]
  String? temporal;

  /// //en.wikipedia.org/wiki/ISO_8601#Time_intervals). In the case of a
  /// Dataset it will typically indicate the relevant time period in a precise
  /// notation (e.g. for a 2011 census dataset, the year 2011 would be written
  /// "2011/2012"). Other forms of content, e.g. ScholarlyArticle, Book,
  /// TVSeries or TVEpisode, may indicate their temporalCoverage in broader
  /// terms - textually or via well-known URL. Written works such as books may
  /// sometimes have precise temporal coverage too, e.g. a work set in 1939 -
  /// 1945 can be indicated in ISO 8601 interval format format via "1939/1945".
  ///
  /// Open-ended date ranges can be written with ".." in place of the end date.
  /// For example, "2015-11/.." indicates a range beginning in November 2015
  /// and with no specified final date. This is tentative and might be updated
  /// in future when ISO 8601 is officially updated.
  ///
  /// Supported types: [String], [String], [String]
  String? temporalCoverage;

  /// The textual content of this CreativeWork.
  String? text;

  /// Thumbnail image for an image or video.
  SchemaImageObject? thumbnail;

  /// A thumbnail image relevant to the Thing.
  String? thumbnailUrl;

  /// Approximate or typical time it usually takes to work with or through the
  /// content of this work for the typical or target audience.
  SchemaDuration? timeRequired;

  /// The work that this work has been translated from. E.g. 物种起源 is a
  /// translationOf “On the Origin of Species”.
  SchemaCreativeWork? translationOfWork;

  /// Organization or person who adapts a creative work to different languages,
  /// regional differences and technical requirements of a target market, or
  /// that translates during some event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic translator;

  /// The typical expected age range, e.g. '7-9', '11-'.
  String? typicalAgeRange;

  /// The schema.org [SchemausageInfo] property indicates further information
  /// about a [SchemaCreativeWork]. This property is applicable both to works
  /// that are freely available and to those that require payment or other
  /// transactions. It can reference additional information, e.g. community
  /// expectations on preferred linking and citation conventions, as well as
  /// purchasing details. For something that can be commercially licensed,
  /// usageInfo can provide detailed, resource-specific information about
  /// licensing options.
  ///
  /// This property can be used alongside the license property which indicates
  /// license(s) applicable to some piece of content. The usageInfo property
  /// can provide information about other licensing options, e.g. acquiring
  /// commercial usage rights for an image that is also available under
  /// non-commercial creative commons licenses.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic usageInfo;

  /// The version of the CreativeWork embodied by a specified resource.
  ///
  /// Supported types: [String], [int]
  dynamic version;

  /// An embedded video object.
  ///
  /// Supported types: [SchemaClip], [SchemaVideoObject]
  dynamic video;

  /// Example/instance/realization/derivation of the concept of this creative
  /// work. E.g. the paperback edition, first edition, or e-book.
  SchemaCreativeWork? workExample;

  /// A work that is a translation of the content of this work. E.g. 西遊記 has an
  /// English workTranslation “Journey to the West”, a German workTranslation
  /// “Monkeys Pilgerfahrt” and a Vietnamese translation Tây du ký bình khảo.
  SchemaCreativeWork? workTranslation;

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

  /// Create a new instance of [SchemaCode]
  SchemaCode({
    this.about,
    this.abstract,
    this.accessMode,
    this.accessModeSufficient,
    this.accessibilityAPI,
    this.accessibilityControl,
    this.accessibilityFeature,
    this.accessibilityHazard,
    this.accessibilitySummary,
    this.accountablePerson,
    this.acquireLicensePage,
    this.aggregateRating,
    this.alternativeHeadline,
    this.archivedAt,
    this.assesses,
    this.associatedMedia,
    this.audience,
    this.audio,
    this.author,
    this.award,
    this.awards,
    this.character,
    this.citation,
    this.comment,
    this.commentCount,
    this.conditionsOfAccess,
    this.contentLocation,
    this.contentRating,
    this.contentReferenceTime,
    this.contributor,
    this.copyrightHolder,
    this.copyrightNotice,
    this.copyrightYear,
    this.correction,
    this.countryOfOrigin,
    this.creativeWorkStatus,
    this.creator,
    this.creditText,
    this.dateCreated,
    this.dateModified,
    this.datePublished,
    this.digitalSourceType,
    this.discussionUrl,
    this.editEIDR,
    this.editor,
    this.educationalAlignment,
    this.educationalLevel,
    this.educationalUse,
    this.encoding,
    this.encodingFormat,
    this.encodings,
    this.exampleOfWork,
    this.expires,
    this.fileFormat,
    this.funder,
    this.funding,
    this.genre,
    this.hasPart,
    this.headline,
    this.inLanguage,
    this.interactionStatistic,
    this.interactivityType,
    this.interpretedAsClaim,
    this.isAccessibleForFree,
    this.isBasedOn,
    this.isBasedOnUrl,
    this.isFamilyFriendly,
    this.isPartOf,
    this.keywords,
    this.learningResourceType,
    this.license,
    this.locationCreated,
    this.mainEntity,
    this.maintainer,
    this.material,
    this.materialExtent,
    this.mentions,
    this.offers,
    this.pattern,
    this.position,
    this.producer,
    this.provider,
    this.publication,
    this.publisher,
    this.publisherImprint,
    this.publishingPrinciples,
    this.recordedAt,
    this.releasedEvent,
    this.review,
    this.reviews,
    this.schemaVersion,
    this.sdDatePublished,
    this.sdLicense,
    this.sdPublisher,
    this.size,
    this.sourceOrganization,
    this.spatial,
    this.spatialCoverage,
    this.sponsor,
    this.teaches,
    this.temporal,
    this.temporalCoverage,
    this.text,
    this.thumbnail,
    this.thumbnailUrl,
    this.timeRequired,
    this.translationOfWork,
    this.translator,
    this.typicalAgeRange,
    this.usageInfo,
    this.version,
    this.video,
    this.workExample,
    this.workTranslation,
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

  /// Serialize [SchemaCode] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Code',
        'about': convertToJsonLd(about, [SchemaThing]),
        'abstract': convertToJsonLd(abstract, [String]),
        'accessMode': convertToJsonLd(accessMode, [String]),
        'accessModeSufficient':
            convertToJsonLd(accessModeSufficient, [SchemaItemList]),
        'accessibilityAPI': convertToJsonLd(accessibilityAPI, [String]),
        'accessibilityControl': convertToJsonLd(accessibilityControl, [String]),
        'accessibilityFeature': convertToJsonLd(accessibilityFeature, [String]),
        'accessibilityHazard': convertToJsonLd(accessibilityHazard, [String]),
        'accessibilitySummary': convertToJsonLd(accessibilitySummary, [String]),
        'accountablePerson': convertToJsonLd(accountablePerson, [SchemaPerson]),
        'acquireLicensePage':
            convertToJsonLd(acquireLicensePage, [SchemaCreativeWork, String]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'alternativeHeadline': convertToJsonLd(alternativeHeadline, [String]),
        'archivedAt': convertToJsonLd(archivedAt, [String, SchemaWebPage]),
        'assesses': convertToJsonLd(assesses, [SchemaDefinedTerm, String]),
        'associatedMedia':
            convertToJsonLd(associatedMedia, [SchemaMediaObject]),
        'audience': convertToJsonLd(audience, [SchemaAudience]),
        'audio': convertToJsonLd(
            audio, [SchemaAudioObject, SchemaClip, SchemaMusicRecording]),
        'author': convertToJsonLd(author, [SchemaOrganization, SchemaPerson]),
        'award': convertToJsonLd(award, [String]),
        'awards': convertToJsonLd(awards, [String]),
        'character': convertToJsonLd(character, [SchemaPerson]),
        'citation': convertToJsonLd(citation, [SchemaCreativeWork, String]),
        'comment': convertToJsonLd(comment, [SchemaComment]),
        'commentCount': convertToJsonLd(commentCount, [int]),
        'conditionsOfAccess': convertToJsonLd(conditionsOfAccess, [String]),
        'contentLocation': convertToJsonLd(contentLocation, [SchemaPlace]),
        'contentRating': convertToJsonLd(contentRating, [SchemaRating, String]),
        'contentReferenceTime': convertToJsonLd(contentReferenceTime, [String]),
        'contributor':
            convertToJsonLd(contributor, [SchemaOrganization, SchemaPerson]),
        'copyrightHolder': convertToJsonLd(
            copyrightHolder, [SchemaOrganization, SchemaPerson]),
        'copyrightNotice': convertToJsonLd(copyrightNotice, [String]),
        'copyrightYear': convertToJsonLd(copyrightYear, [int]),
        'correction': convertToJsonLd(
            correction, [SchemaCorrectionComment, String, String]),
        'countryOfOrigin': convertToJsonLd(countryOfOrigin, [SchemaCountry]),
        'creativeWorkStatus':
            convertToJsonLd(creativeWorkStatus, [SchemaDefinedTerm, String]),
        'creator': convertToJsonLd(creator, [SchemaOrganization, SchemaPerson]),
        'creditText': convertToJsonLd(creditText, [String]),
        'dateCreated': convertToJsonLd(dateCreated, [String, String]),
        'dateModified': convertToJsonLd(dateModified, [String, String]),
        'datePublished': convertToJsonLd(datePublished, [String, String]),
        'digitalSourceType': convertToJsonLd(
            digitalSourceType, [SchemaIPTCDigitalSourceEnumeration]),
        'discussionUrl': convertToJsonLd(discussionUrl, [String]),
        'editEIDR': convertToJsonLd(editEIDR, [String, String]),
        'editor': convertToJsonLd(editor, [SchemaPerson]),
        'educationalAlignment':
            convertToJsonLd(educationalAlignment, [SchemaAlignmentObject]),
        'educationalLevel': convertToJsonLd(
            educationalLevel, [SchemaDefinedTerm, String, String]),
        'educationalUse':
            convertToJsonLd(educationalUse, [SchemaDefinedTerm, String]),
        'encoding': convertToJsonLd(encoding, [SchemaMediaObject]),
        'encodingFormat': convertToJsonLd(encodingFormat, [String, String]),
        'encodings': convertToJsonLd(encodings, [SchemaMediaObject]),
        'exampleOfWork': convertToJsonLd(exampleOfWork, [SchemaCreativeWork]),
        'expires': convertToJsonLd(expires, [String, String]),
        'fileFormat': convertToJsonLd(fileFormat, [String, String]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'genre': convertToJsonLd(genre, [String, String]),
        'hasPart': convertToJsonLd(hasPart, [SchemaCreativeWork]),
        'headline': convertToJsonLd(headline, [String]),
        'inLanguage': convertToJsonLd(inLanguage, [SchemaLanguage, String]),
        'interactionStatistic':
            convertToJsonLd(interactionStatistic, [SchemaInteractionCounter]),
        'interactivityType': convertToJsonLd(interactivityType, [String]),
        'interpretedAsClaim':
            convertToJsonLd(interpretedAsClaim, [SchemaClaim]),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree, [bool]),
        'isBasedOn': convertToJsonLd(
            isBasedOn, [SchemaCreativeWork, SchemaProduct, String]),
        'isBasedOnUrl': convertToJsonLd(
            isBasedOnUrl, [SchemaCreativeWork, SchemaProduct, String]),
        'isFamilyFriendly': convertToJsonLd(isFamilyFriendly, [bool]),
        'isPartOf': convertToJsonLd(isPartOf, [SchemaCreativeWork, String]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'learningResourceType':
            convertToJsonLd(learningResourceType, [SchemaDefinedTerm, String]),
        'license': convertToJsonLd(license, [SchemaCreativeWork, String]),
        'locationCreated': convertToJsonLd(locationCreated, [SchemaPlace]),
        'mainEntity': convertToJsonLd(mainEntity, [SchemaThing]),
        'maintainer':
            convertToJsonLd(maintainer, [SchemaOrganization, SchemaPerson]),
        'material': convertToJsonLd(material, [SchemaProduct, String, String]),
        'materialExtent':
            convertToJsonLd(materialExtent, [SchemaQuantitativeValue, String]),
        'mentions': convertToJsonLd(mentions, [SchemaThing]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'pattern': convertToJsonLd(pattern, [SchemaDefinedTerm, String]),
        'position': convertToJsonLd(position, [String, int]),
        'producer':
            convertToJsonLd(producer, [SchemaOrganization, SchemaPerson]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'publication': convertToJsonLd(publication, [SchemaPublicationEvent]),
        'publisher':
            convertToJsonLd(publisher, [SchemaOrganization, SchemaPerson]),
        'publisherImprint':
            convertToJsonLd(publisherImprint, [SchemaOrganization]),
        'publishingPrinciples':
            convertToJsonLd(publishingPrinciples, [SchemaCreativeWork, String]),
        'recordedAt': convertToJsonLd(recordedAt, [SchemaEvent]),
        'releasedEvent':
            convertToJsonLd(releasedEvent, [SchemaPublicationEvent]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'schemaVersion': convertToJsonLd(schemaVersion, [String, String]),
        'sdDatePublished': convertToJsonLd(sdDatePublished, [String]),
        'sdLicense': convertToJsonLd(sdLicense, [SchemaCreativeWork, String]),
        'sdPublisher':
            convertToJsonLd(sdPublisher, [SchemaOrganization, SchemaPerson]),
        'size': convertToJsonLd(size, [
          SchemaDefinedTerm,
          SchemaQuantitativeValue,
          SchemaSizeSpecification,
          String
        ]),
        'sourceOrganization':
            convertToJsonLd(sourceOrganization, [SchemaOrganization]),
        'spatial': convertToJsonLd(spatial, [SchemaPlace]),
        'spatialCoverage': convertToJsonLd(spatialCoverage, [SchemaPlace]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'teaches': convertToJsonLd(teaches, [SchemaDefinedTerm, String]),
        'temporal': convertToJsonLd(temporal, [String, String]),
        'temporalCoverage':
            convertToJsonLd(temporalCoverage, [String, String, String]),
        'text': convertToJsonLd(text, [String]),
        'thumbnail': convertToJsonLd(thumbnail, [SchemaImageObject]),
        'thumbnailUrl': convertToJsonLd(thumbnailUrl, [String]),
        'timeRequired': convertToJsonLd(timeRequired, [SchemaDuration]),
        'translationOfWork':
            convertToJsonLd(translationOfWork, [SchemaCreativeWork]),
        'translator':
            convertToJsonLd(translator, [SchemaOrganization, SchemaPerson]),
        'typicalAgeRange': convertToJsonLd(typicalAgeRange, [String]),
        'usageInfo': convertToJsonLd(usageInfo, [SchemaCreativeWork, String]),
        'version': convertToJsonLd(version, [String, int]),
        'video': convertToJsonLd(video, [SchemaClip, SchemaVideoObject]),
        'workExample': convertToJsonLd(workExample, [SchemaCreativeWork]),
        'workTranslation':
            convertToJsonLd(workTranslation, [SchemaCreativeWork]),
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
