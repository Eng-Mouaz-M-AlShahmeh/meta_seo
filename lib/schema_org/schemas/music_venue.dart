import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A music venue.
/// See https://schema.org/MusicVenue
class SchemaMusicVenue implements SchemaSerializable {
  /// 00&quot;&gt;Tuesdays and Thursdays 4-8pm&lt;/time&gt;</code>.\n* If a
  /// business is open 7 days a week, then it can be specified as
  /// <code>&lt;time itemprop=&quot;openingHours&quot;
  /// datetime=&quot;Mo-Su&quot;&gt;Monday through Sunday, all
  /// day&lt;/time&gt;</code>.
  String? openingHours;

  /// //schema.org/gtin13, ...) will typically expect such data to be provided
  /// using those properties, rather than using the generic property/value
  /// mechanism.
  SchemaPropertyValue? additionalProperty;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// The overall rating, based on a collection of reviews or ratings, of the
  /// item.
  SchemaAggregateRating? aggregateRating;

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

  /// Upcoming or past event associated with this place, organization, or
  /// action.
  SchemaEvent? event;

  /// Upcoming or past events associated with this place or organization.
  SchemaEvent? events;

  /// The fax number.
  String? faxNumber;

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

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as International
  /// Location Number or ILN) of the respective organization, person, or place.
  /// The GLN is a 13-digit number used to identify parties and physical
  /// locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

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

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// Keywords or tags used to describe some item. Multiple textual entries in
  /// a keywords list are typically delimited by commas, or by repeating the
  /// property.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic keywords;

  /// //en.wikipedia.org/wiki/World_Geodetic_System)).
  ///
  /// Supported types: [String], [int]
  dynamic latitude;

  /// An associated logo.
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic logo;

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

  /// A review of the item.
  SchemaReview? review;

  /// Review of the item.
  SchemaReview? reviews;

  /// A slogan or motto associated with the item.
  String? slogan;

  /// Indicates whether it is allowed to smoke in the place, e.g. in the
  /// restaurant, hotel or hotel room.
  bool? smokingAllowed;

  /// The special opening hours of a certain place.\n\nUse this to explicitly
  /// override general opening hours brought in scope by
  /// [SchemaopeningHoursSpecification] or [SchemaopeningHours].
  SchemaOpeningHoursSpecification? specialOpeningHoursSpecification;

  /// The telephone number.
  String? telephone;

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

  /// Create a new instance of [SchemaMusicVenue]
  SchemaMusicVenue({
    this.openingHours,
    this.additionalProperty,
    this.address,
    this.aggregateRating,
    this.amenityFeature,
    this.branchCode,
    this.containedIn,
    this.containedInPlace,
    this.containsPlace,
    this.event,
    this.events,
    this.faxNumber,
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
    this.globalLocationNumber,
    this.hasCertification,
    this.hasDriveThroughService,
    this.hasMap,
    this.isAccessibleForFree,
    this.isicV4,
    this.keywords,
    this.latitude,
    this.logo,
    this.longitude,
    this.map,
    this.maps,
    this.maximumAttendeeCapacity,
    this.openingHoursSpecification,
    this.photo,
    this.photos,
    this.publicAccess,
    this.review,
    this.reviews,
    this.slogan,
    this.smokingAllowed,
    this.specialOpeningHoursSpecification,
    this.telephone,
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

  /// Serialize [SchemaMusicVenue] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MusicVenue',
        'openingHours': convertToJsonLd(openingHours, [String]),
        'additionalProperty':
            convertToJsonLd(additionalProperty, [SchemaPropertyValue]),
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'aggregateRating':
            convertToJsonLd(aggregateRating, [SchemaAggregateRating]),
        'amenityFeature': convertToJsonLd(
            amenityFeature, [SchemaLocationFeatureSpecification]),
        'branchCode': convertToJsonLd(branchCode, [String]),
        'containedIn': convertToJsonLd(containedIn, [SchemaPlace]),
        'containedInPlace': convertToJsonLd(containedInPlace, [SchemaPlace]),
        'containsPlace': convertToJsonLd(containsPlace, [SchemaPlace]),
        'event': convertToJsonLd(event, [SchemaEvent]),
        'events': convertToJsonLd(events, [SchemaEvent]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
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
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasDriveThroughService':
            convertToJsonLd(hasDriveThroughService, [bool]),
        'hasMap': convertToJsonLd(hasMap, [SchemaMap, String]),
        'isAccessibleForFree': convertToJsonLd(isAccessibleForFree, [bool]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'keywords':
            convertToJsonLd(keywords, [SchemaDefinedTerm, String, String]),
        'latitude': convertToJsonLd(latitude, [String, int]),
        'logo': convertToJsonLd(logo, [SchemaImageObject, String]),
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
        'review': convertToJsonLd(review, [SchemaReview]),
        'reviews': convertToJsonLd(reviews, [SchemaReview]),
        'slogan': convertToJsonLd(slogan, [String]),
        'smokingAllowed': convertToJsonLd(smokingAllowed, [bool]),
        'specialOpeningHoursSpecification': convertToJsonLd(
            specialOpeningHoursSpecification,
            [SchemaOpeningHoursSpecification]),
        'telephone': convertToJsonLd(telephone, [String]),
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
