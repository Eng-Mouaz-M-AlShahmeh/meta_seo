import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Used to describe a ticket to an event, a flight, a bus ride, etc.
/// See https://schema.org/Ticket
class SchemaTicket implements SchemaSerializable {
  /// The date the ticket was issued.
  ///
  /// Supported types: [String], [String]
  String? dateIssued;

  /// The organization issuing the item, for example a [SchemaPermit],
  /// [SchemaTicket], or [SchemaCertification].
  SchemaOrganization? issuedBy;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? priceCurrency;

  /// The unique identifier for the ticket.
  String? ticketNumber;

  /// Reference to an asset (e.g., Barcode, QR code image or PDF) usable for
  /// entrance.
  ///
  /// Supported types: [String], [String]
  String? ticketToken;

  /// The seat associated with the ticket.
  SchemaSeat? ticketedSeat;

  /// \n\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT
  /// NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use
  /// '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal
  /// point. Avoid using these symbols as a readability separator.
  ///
  /// Supported types: [SchemaPriceSpecification], [String], [int]
  dynamic totalPrice;

  /// The person or organization the reservation or ticket is for.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic underName;

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

  /// Create a new instance of [SchemaTicket]
  SchemaTicket({
    this.dateIssued,
    this.issuedBy,
    this.priceCurrency,
    this.ticketNumber,
    this.ticketToken,
    this.ticketedSeat,
    this.totalPrice,
    this.underName,
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

  /// Serialize [SchemaTicket] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Ticket',
        'dateIssued': convertToJsonLd(dateIssued, [String, String]),
        'issuedBy': convertToJsonLd(issuedBy, [SchemaOrganization]),
        'priceCurrency': convertToJsonLd(priceCurrency, [String]),
        'ticketNumber': convertToJsonLd(ticketNumber, [String]),
        'ticketToken': convertToJsonLd(ticketToken, [String, String]),
        'ticketedSeat': convertToJsonLd(ticketedSeat, [SchemaSeat]),
        'totalPrice': convertToJsonLd(
            totalPrice, [SchemaPriceSpecification, String, int]),
        'underName':
            convertToJsonLd(underName, [SchemaOrganization, SchemaPerson]),
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
