import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A particular physical or virtual business of an organization for medical
/// purposes. Examples of MedicalBusiness include different businesses run by
/// health professionals.
/// See https://schema.org/MedicalBusiness
class SchemaMedicalBusiness implements SchemaSerializable {
  /// The larger organization that this local business is a branch of, if any.
  /// Not to be confused with (anatomical) [Schemabranch].
  SchemaOrganization? branchOf;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? currenciesAccepted;

  /// 00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n* If a
  /// business is open 7 days a week, then it can be specified as
  /// <code>&lt;time itemprop=&quot;openingHours&quot;
  /// datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
  /// day&lt;/time&gt;</code>.
  String? openingHours;

  /// Cash, Credit Card, Cryptocurrency, Local Exchange Tradings System, etc.
  String? paymentAccepted;

  /// The price range of the business, for example ```$$$```.
  String? priceRange;

  /// For a [SchemaNewsMediaOrganization] or other news-related
  /// [SchemaOrganization], a statement about public engagement activities (for
  /// news media, the newsroom’s), including involving the public - digitally
  /// or otherwise -- in coverage decisions, reporting and activities after
  /// publication.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic actionableFeedbackPolicy;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// The number of completed interactions for this entity, in a particular
  /// role (the 'agent'), in a particular action (indicated in the statistic),
  /// and in a particular context (i.e. interactionService).
  SchemaInteractionCounter? agentInteractionStatistic;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

  /// Alumni of an organization.
  SchemaPerson? alumni;

  /// The geographic area where a service or offered item is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace], [String]
  dynamic areaServed;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  String? awards;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoints;

  /// For an [SchemaOrganization] (e.g. [SchemaNewsMediaOrganization]), a
  /// statement describing (in news media, the newsroom’s) disclosure and
  /// correction policy for errors.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic correctionsPolicy;

  /// a store with a pharmacy, or a bakery with a cafe.
  SchemaOrganization? department;

  /// The date that this organization was dissolved.
  String? dissolutionDate;

  /// Statement on diversity policy by an [SchemaOrganization] e.g. a
  /// [SchemaNewsMediaOrganization]. For a [SchemaNewsMediaOrganization], a
  /// statement describing the newsroom’s diversity policy on both staffing and
  /// sources, typically providing staffing data.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic diversityPolicy;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a report on staffing diversity issues. In
  /// a news context this might be for example ASNE or RTDNA (US) reports, or
  /// self-reported.
  ///
  /// Supported types: [SchemaArticle], [String]
  dynamic diversityStaffingReport;

  /// The Dun & Bradstreet DUNS number for identifying an organization or
  /// business person.
  String? duns;

  /// Email address.
  String? email;

  /// Someone working for this organization.
  SchemaPerson? employee;

  /// People working for this organization.
  SchemaPerson? employees;

  /// Statement about ethics policy, e.g. of a [SchemaNewsMediaOrganization]
  /// regarding journalistic and publishing practices, or of a
  /// [SchemaRestaurant], a page describing food source policies. In the case
  /// of a [SchemaNewsMediaOrganization], an ethicsPolicy is typically a
  /// statement describing the personal, organizational, and corporate
  /// standards of behavior expected by the organization.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic ethicsPolicy;

  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Upcoming or past events associated with this place or organization.
  SchemaEvent? events;

  /// The fax number.
  String? faxNumber;

  /// A person who founded this organization.
  SchemaPerson? founder;

  /// A person who founded this organization.
  SchemaPerson? founders;

  /// The date that this organization was founded.
  String? foundingDate;

  /// The place where the Organization was founded.
  SchemaPlace? foundingLocation;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as International
  /// Location Number or ILN) of the respective organization, person, or place.
  /// The GLN is a 13-digit number used to identify parties and physical
  /// locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// A credential awarded to the Person or Organization.
  SchemaEducationalOccupationalCredential? hasCredential;

  /// Specifies a MerchantReturnPolicy that may be applicable.
  SchemaMerchantReturnPolicy? hasMerchantReturnPolicy;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  SchemaPlace? hasPOS;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// //schema.org/taxID), as ISO identifiers are less ambiguous.
  String? iso6523Code;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic keywords;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a topic that is known about - suggesting possible expertise but
  /// not implying it. We do not distinguish skill levels here, or relate this
  /// to educational content, events, objectives or [SchemaJobPosting]
  /// descriptions.
  ///
  /// Supported types: [String], [String], [SchemaThing]
  dynamic knowsAbout;

  /// //tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic knowsLanguage;

  /// The official name of the organization, e.g. the registered company name.
  String? legalName;

  /// An organization identifier that uniquely identifies a legal entity as
  /// defined in ISO 17442.
  String? leiCode;

  /// The location of, for example, where an event is happening, where an
  /// organization is located, or where an action takes place.
  ///
  /// Supported types: [SchemaPlace], [SchemaPostalAddress], [String],
  /// [SchemaVirtualLocation]
  dynamic location;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

  /// A pointer to products or services offered by the organization or person.
  SchemaOffer? makesOffer;

  /// A member of an Organization or a ProgramMembership. Organizations can be
  /// members of organizations; ProgramMembership is typically for individuals.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic member;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.
  ///
  /// Supported types: [SchemaOrganization], [SchemaProgramMembership]
  dynamic memberOf;

  /// A member of this organization.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic members;

  /// The North American Industry Classification System (NAICS) code for a
  /// particular organization or business person.
  String? naics;

  /// nonprofitStatus indicates the legal status of a non-profit organization
  /// in its primary place of business.
  SchemaNonprofitType? nonprofitStatus;

  /// The number of employees in an organization, e.g. business.
  SchemaQuantitativeValue? numberOfEmployees;

  /// For an [SchemaOrganization] (often but not necessarily a
  /// [SchemaNewsMediaOrganization]), a description of organizational ownership
  /// structure; funding and grants. In a news/media setting, this is with
  /// particular reference to editorial independence. Note that the
  /// [Schemafunder] is also available and can be used to make basic funder
  /// information machine-readable.
  ///
  /// Supported types: [SchemaAboutPage], [SchemaCreativeWork], [String],
  /// [String]
  dynamic ownershipFundingInfo;

  /// Products owned by the organization or person.
  ///
  /// Supported types: [SchemaOwnershipInfo], [SchemaProduct]
  dynamic owns;

  /// The larger organization that this organization is a
  /// [SchemasubOrganization] of, if any.
  SchemaOrganization? parentOrganization;

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

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  SchemaReview? reviews;

  /// A pointer to products or services sought by the organization or person
  /// (demand).
  SchemaDemand? seeks;

  /// The geographic area where the service is provided.
  ///
  /// Supported types: [SchemaAdministrativeArea], [SchemaGeoShape],
  /// [SchemaPlace]
  dynamic serviceArea;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// the more specific 'department' property.
  SchemaOrganization? subOrganization;

  /// The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
  /// or the CIF/NIF in Spain.
  String? taxID;

  /// The telephone number.
  String? telephone;

  /// For an [SchemaOrganization] (typically a [SchemaNewsMediaOrganization]),
  /// a statement about policy on use of unnamed sources and the decision
  /// process required.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic unnamedSourcesPolicy;

  /// The Value-added Tax ID of the organization or person.
  String? vatID;

  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// An amenity feature (e.g. a characteristic or service) of the
  /// Accommodation. This generic property does not make a statement about
  /// whether the feature is included in an offer for the main accommodation or
  /// available at extra costs.
  SchemaLocationFeatureSpecification? amenityFeature;

  /// //www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is a
  /// branchCode for a particular branch.
  String? branchCode;

  /// The basic containment relation between a place and one that contains it.
  SchemaPlace? containedIn;

  /// The basic containment relation between a place and one that contains it.
  SchemaPlace? containedInPlace;

  /// The basic containment relation between a place and another that it
  /// contains.
  SchemaPlace? containsPlace;

  /// The geo coordinates of the place.
  ///
  /// Supported types: [SchemaGeoCoordinates], [SchemaGeoShape]
  dynamic geo;

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

  /// Indicates whether some facility (e.g. [SchemaFoodEstablishment],
  /// [SchemaCovidTestingFacility]) offers a service that can be used by
  /// driving through in a car. In the case of [SchemaCovidTestingFacility]
  /// such facilities could potentially help with social distancing from other
  /// potentially-infected users.
  bool? hasDriveThroughService;

  /// A URL to a map of the place.
  ///
  /// Supported types: [SchemaMap], [String]
  dynamic hasMap;

  /// A flag to signal that the item, event, or place is accessible for free.
  bool? isAccessibleForFree;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [int]
  dynamic latitude;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [int]
  dynamic longitude;

  /// A URL to a map of the place.
  String? map;

  /// A URL to a map of the place.
  String? maps;

  /// The total number of individuals that may attend an event or venue.
  int? maximumAttendeeCapacity;

  /// The opening hours of a certain place.
  SchemaOpeningHoursSpecification? openingHoursSpecification;

  /// A photograph of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  dynamic photo;

  /// Photographs of this place.
  ///
  /// Supported types: [SchemaImageObject], [SchemaPhotograph]
  dynamic photos;

  /// A flag to signal that the [SchemaPlace] is open to public visitors. If
  /// this property is omitted there is no assumed default boolean value.
  bool? publicAccess;

  /// Indicates whether it is allowed to smoke in the place, e.g. in the
  /// restaurant, hotel or hotel room.
  bool? smokingAllowed;

  /// The special opening hours of a certain place.\n\nUse this to explicitly
  /// override general opening hours brought in scope by
  /// [SchemaopeningHoursSpecification] or [SchemaopeningHours].
  SchemaOpeningHoursSpecification? specialOpeningHoursSpecification;

  /// A page providing information on how to book a tour of some [SchemaPlace],
  /// such as an [SchemaAccommodation] or [SchemaApartmentComplex] in a real
  /// estate setting, as well as other kinds of tours as appropriate.
  String? tourBookingPage;

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

  /// Create a new instance of [SchemaMedicalBusiness]
  SchemaMedicalBusiness({
    this.branchOf,
    this.currenciesAccepted,
    this.openingHours,
    this.paymentAccepted,
    this.priceRange,
    this.actionableFeedbackPolicy,
    this.address,
    this.agentInteractionStatistic,
    this.aggregateRating,
    this.alumni,
    this.areaServed,
    this.award,
    this.awards,
    this.brand,
    this.contactPoint,
    this.contactPoints,
    this.correctionsPolicy,
    this.department,
    this.dissolutionDate,
    this.diversityPolicy,
    this.diversityStaffingReport,
    this.duns,
    this.email,
    this.employee,
    this.employees,
    this.ethicsPolicy,
    this.event,
    this.events,
    this.faxNumber,
    this.founder,
    this.founders,
    this.foundingDate,
    this.foundingLocation,
    this.funder,
    this.funding,
    this.globalLocationNumber,
    this.hasCertification,
    this.hasCredential,
    this.hasMerchantReturnPolicy,
    this.hasOfferCatalog,
    this.hasPOS,
    this.interactionStatistic,
    this.isicV4,
    this.iso6523Code,
    this.keywords,
    this.knowsAbout,
    this.knowsLanguage,
    this.legalName,
    this.leiCode,
    this.location,
    this.logo,
    this.makesOffer,
    this.member,
    this.memberOf,
    this.members,
    this.naics,
    this.nonprofitStatus,
    this.numberOfEmployees,
    this.ownershipFundingInfo,
    this.owns,
    this.parentOrganization,
    this.publishingPrinciples,
    this.review,
    this.reviews,
    this.seeks,
    this.serviceArea,
    this.slogan,
    this.sponsor,
    this.subOrganization,
    this.taxID,
    this.telephone,
    this.unnamedSourcesPolicy,
    this.vatID,
    this.additionalProperty,
    this.amenityFeature,
    this.branchCode,
    this.containedIn,
    this.containedInPlace,
    this.containsPlace,
    this.geo,
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
    this.hasDriveThroughService,
    this.hasMap,
    this.isAccessibleForFree,
    this.latitude,
    this.longitude,
    this.map,
    this.maps,
    this.maximumAttendeeCapacity,
    this.openingHoursSpecification,
    this.photo,
    this.photos,
    this.publicAccess,
    this.smokingAllowed,
    this.specialOpeningHoursSpecification,
    this.tourBookingPage,
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

  /// Serialize [SchemaMedicalBusiness] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MedicalBusiness',
        'branchOf': convertToJsonLd(branchOf, [SchemaOrganization]),
        'currenciesAccepted': convertToJsonLd(currenciesAccepted, [String]),
        'openingHours': convertToJsonLd(openingHours, [String]),
        'paymentAccepted': convertToJsonLd(paymentAccepted, [String]),
        'priceRange': convertToJsonLd(priceRange, [String]),
        'actionableFeedbackPolicy': convertToJsonLd(
            actionableFeedbackPolicy, [SchemaCreativeWork, String]),
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'agentInteractionStatistic': convertToJsonLd(
            agentInteractionStatistic, [SchemaInteractionCounter]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'alumni': convertToJsonLd(alumni, [SchemaPerson]),
        'areaServed': convertToJsonLd(areaServed,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace, String]),
        'award': convertToJsonLd(award, [String]),
        'awards': convertToJsonLd(awards, [String]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'contactPoint': convertToJsonLd(contactPoint, [SchemaContactPoint]),
        'contactPoints': convertToJsonLd(contactPoints, [SchemaContactPoint]),
        'correctionsPolicy':
            convertToJsonLd(correctionsPolicy, [SchemaCreativeWork, String]),
        'department': convertToJsonLd(department, [SchemaOrganization]),
        'dissolutionDate': convertToJsonLd(dissolutionDate, [String]),
        'diversityPolicy':
            convertToJsonLd(diversityPolicy, [SchemaCreativeWork, String]),
        'diversityStaffingReport':
            convertToJsonLd(diversityStaffingReport, [SchemaArticle, String]),
        'duns': convertToJsonLd(duns, [String]),
        'email': convertToJsonLd(email, [String]),
        'employee': convertToJsonLd(employee, [SchemaPerson]),
        'employees': convertToJsonLd(employees, [SchemaPerson]),
        'ethicsPolicy':
            convertToJsonLd(ethicsPolicy, [SchemaCreativeWork, String]),
        'event': convertToJsonLd(event, [SchemaEvent]),
        'events': convertToJsonLd(events, [SchemaEvent]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'founder': convertToJsonLd(founder, [SchemaPerson]),
        'founders': convertToJsonLd(founders, [SchemaPerson]),
        'foundingDate': convertToJsonLd(foundingDate, [String]),
        'foundingLocation': convertToJsonLd(foundingLocation, [SchemaPlace]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasCredential': convertToJsonLd(
            hasCredential, [SchemaEducationalOccupationalCredential]),
        'hasMerchantReturnPolicy': convertToJsonLd(
            hasMerchantReturnPolicy, [SchemaMerchantReturnPolicy]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hasPOS': convertToJsonLd(hasPOS, [SchemaPlace]),
        'interactionStatistic':
            convertToJsonLd(interactionStatistic, [SchemaInteractionCounter]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'iso6523Code': convertToJsonLd(iso6523Code, [String]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'knowsAbout':
            convertToJsonLd(knowsAbout, [String, String, SchemaThing]),
        'knowsLanguage':
            convertToJsonLd(knowsLanguage, [SchemaLanguage, String]),
        'legalName': convertToJsonLd(legalName, [String]),
        'leiCode': convertToJsonLd(leiCode, [String]),
        'location': convertToJsonLd(location,
            [SchemaPlace, SchemaPostalAddress, String, SchemaVirtualLocation]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
        'makesOffer': convertToJsonLd(makesOffer, [SchemaOffer]),
        'member': convertToJsonLd(member, [SchemaOrganization, SchemaPerson]),
        'memberOf': convertToJsonLd(
            memberOf, [SchemaOrganization, SchemaProgramMembership]),
        'members': convertToJsonLd(members, [SchemaOrganization, SchemaPerson]),
        'naics': convertToJsonLd(naics, [String]),
        'nonprofitStatus':
            convertToJsonLd(nonprofitStatus, [SchemaNonprofitType]),
        'numberOfEmployees':
            convertToJsonLd(numberOfEmployees, [SchemaQuantitativeValue]),
        'ownershipFundingInfo': convertToJsonLd(ownershipFundingInfo,
            [SchemaAboutPage, SchemaCreativeWork, String, String]),
        'owns': convertToJsonLd(owns, [SchemaOwnershipInfo, SchemaProduct]),
        'parentOrganization':
            convertToJsonLd(parentOrganization, [SchemaOrganization]),
        'publishingPrinciples':
            convertToJsonLd(publishingPrinciples, [SchemaCreativeWork, String]),
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'seeks': convertToJsonLd(seeks, [SchemaDemand]),
        'serviceArea': convertToJsonLd(serviceArea,
            [SchemaAdministrativeArea, SchemaGeoShape, SchemaPlace]),
        'slogan': convertToJsonLd(slogan, [String]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'subOrganization':
            convertToJsonLd(subOrganization, [SchemaOrganization]),
        'taxID': convertToJsonLd(taxID, [String]),
        'telephone': convertToJsonLd(telephone, [String]),
        'unnamedSourcesPolicy':
            convertToJsonLd(unnamedSourcesPolicy, [SchemaCreativeWork, String]),
        'vatID': convertToJsonLd(vatID, [String]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'amenityFeature': convertToJsonLd(
            amenityFeature, [SchemaLocationFeatureSpecification]),
        'branchCode': convertToJsonLd(branchCode, [String]),
        'containedIn': convertToJsonLd(containedIn, [SchemaPlace]),
        'containedInPlace': convertToJsonLd(containedInPlace, [SchemaPlace]),
        'containsPlace': convertToJsonLd(containsPlace, [SchemaPlace]),
        'geo': convertToJsonLd(geo, [SchemaGeoCoordinates, SchemaGeoShape]),
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
        'hasDriveThroughService':
            convertToJsonLd(hasDriveThroughService, [bool]),
        'hasMap': convertToJsonLd(hasMap, [SchemaMap, String]),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree, [bool]),
        'latitude': convertToJsonLd(latitude, [String, int]),
        'longitude': convertToJsonLd(longitude, [String, int]),
        'map': convertToJsonLd(map, [String]),
        'maps': convertToJsonLd(maps, [String]),
        'maximumAttendeeCapacity':
            convertToJsonLd(maximumAttendeeCapacity, [int]),
        'openingHoursSpecification': convertToJsonLd(
            openingHoursSpecification, [SchemaOpeningHoursSpecification]),
        'photo': convertToJsonLd(photo, [SchemaImageObject, SchemaPhotograph]),
        'photos':
            convertToJsonLd(photos, [SchemaImageObject, SchemaPhotograph]),
        'publicAccess': convertToJsonLd(publicAccess, [bool]),
        'smokingAllowed': convertToJsonLd(smokingAllowed, [bool]),
        'specialOpeningHoursSpecification': convertToJsonLd(
            specialOpeningHoursSpecification,
            [SchemaOpeningHoursSpecification]),
        'tourBookingPage': convertToJsonLd(tourBookingPage, [String]),
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
