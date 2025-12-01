import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// An airline flight.
/// See https://schema.org/Flight
class SchemaFlight implements SchemaSerializable {
  /// The kind of aircraft (e.g., "Boeing 747").
  ///
  /// Supported types: [String], [SchemaVehicle]
  dynamic aircraft;

  /// The airport where the flight terminates.
  SchemaAirport? arrivalAirport;

  /// Identifier of the flight's arrival gate.
  String? arrivalGate;

  /// Identifier of the flight's arrival terminal.
  String? arrivalTerminal;

  /// The type of boarding policy used by the airline (e.g. zone-based or
  /// group-based).
  SchemaBoardingPolicyType? boardingPolicy;

  /// 'carrier' is an out-dated term indicating the 'provider' for parcel
  /// delivery and flights.
  SchemaOrganization? carrier;

  /// The airport where the flight originates.
  SchemaAirport? departureAirport;

  /// Identifier of the flight's departure gate.
  String? departureGate;

  /// Identifier of the flight's departure terminal.
  String? departureTerminal;

  /// The estimated time the flight will take.
  ///
  /// Supported types: [SchemaDuration], [String]
  dynamic estimatedFlightDuration;

  /// The distance of the flight.
  ///
  /// Supported types: [SchemaDistance], [String]
  dynamic flightDistance;

  /// The unique identifier for a flight including the airline IATA code. For
  /// example, if describing United flight 110, where the IATA code for United
  /// is 'UA', the flightNumber is 'UA110'.
  String? flightNumber;

  /// Description of the meals that will be provided or available for purchase.
  String? mealService;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

  /// The time when a passenger can check into the flight online.
  String? webCheckinTime;

  /// The expected arrival time.
  ///
  /// Supported types: [String], [String]
  String? arrivalTime;

  /// The expected departure time.
  ///
  /// Supported types: [String], [String]
  String? departureTime;

  /// Destination(s) ( [SchemaPlace] ) that make up a trip. For a trip where
  /// destination order is important use [SchemaItemList] to specify that order
  /// (see examples).
  ///
  /// Supported types: [SchemaItemList], [SchemaPlace]
  dynamic itinerary;

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

  /// Identifies that this [SchemaTrip] is a subTrip of another Trip. For
  /// example Day 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? partOfTrip;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// Identifies a [SchemaTrip] that is a subTrip of this Trip. For example Day
  /// 1, Day 2, etc. of a multi-day trip.
  SchemaTrip? subTrip;

  /// The location of origin of the trip, prior to any destination(s).
  SchemaPlace? tripOrigin;

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

  /// Create a new instance of [SchemaFlight]
  SchemaFlight({
    this.aircraft,
    this.arrivalAirport,
    this.arrivalGate,
    this.arrivalTerminal,
    this.boardingPolicy,
    this.carrier,
    this.departureAirport,
    this.departureGate,
    this.departureTerminal,
    this.estimatedFlightDuration,
    this.flightDistance,
    this.flightNumber,
    this.mealService,
    this.seller,
    this.webCheckinTime,
    this.arrivalTime,
    this.departureTime,
    this.itinerary,
    this.offers,
    this.partOfTrip,
    this.provider,
    this.subTrip,
    this.tripOrigin,
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

  /// Serialize [SchemaFlight] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Flight',
        'aircraft': convertToJsonLd(aircraft, [String, SchemaVehicle]),
        'arrivalAirport': convertToJsonLd(arrivalAirport, [SchemaAirport]),
        'arrivalGate': convertToJsonLd(arrivalGate, [String]),
        'arrivalTerminal': convertToJsonLd(arrivalTerminal, [String]),
        'boardingPolicy':
            convertToJsonLd(boardingPolicy, [SchemaBoardingPolicyType]),
        'carrier': convertToJsonLd(carrier, [SchemaOrganization]),
        'departureAirport': convertToJsonLd(departureAirport, [SchemaAirport]),
        'departureGate': convertToJsonLd(departureGate, [String]),
        'departureTerminal': convertToJsonLd(departureTerminal, [String]),
        'estimatedFlightDuration':
            convertToJsonLd(estimatedFlightDuration, [SchemaDuration, String]),
        'flightDistance':
            convertToJsonLd(flightDistance, [SchemaDistance, String]),
        'flightNumber': convertToJsonLd(flightNumber, [String]),
        'mealService': convertToJsonLd(mealService, [String]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
        'webCheckinTime': convertToJsonLd(webCheckinTime, [String]),
        'arrivalTime': convertToJsonLd(arrivalTime, [String, String]),
        'departureTime': convertToJsonLd(departureTime, [String, String]),
        'itinerary': convertToJsonLd(itinerary, [SchemaItemList, SchemaPlace]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'partOfTrip': convertToJsonLd(partOfTrip, [SchemaTrip]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'subTrip': convertToJsonLd(subTrip, [SchemaTrip]),
        'tripOrigin': convertToJsonLd(tripOrigin, [SchemaPlace]),
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
