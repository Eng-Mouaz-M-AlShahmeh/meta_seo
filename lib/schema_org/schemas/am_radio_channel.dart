import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A radio channel that uses AM.
/// See https://schema.org/AMRadioChannel
class SchemaAMRadioChannel implements SchemaSerializable {
  /// The unique address by which the BroadcastService can be identified in a
  /// provider lineup. In US, this is typically a number.
  String? broadcastChannelId;

  /// The frequency used for over-the-air broadcasts. Numeric values or simple
  /// ranges, e.g. 87-99. In addition a shortcut idiom is supported for
  /// frequences of AM and FM radio channels, e.g. "87 FM".
  ///
  /// Supported types: [SchemaBroadcastFrequencySpecification], [String]
  dynamic broadcastFrequency;

  /// The type of service required to have access to the channel (e.g. Standard
  /// or Premium).
  String? broadcastServiceTier;

  /// Genre of the creative work, broadcast channel or group.
  ///
  /// Supported types: [String], [String]
  String? genre;

  /// The CableOrSatelliteService offering the channel.
  SchemaCableOrSatelliteService? inBroadcastLineup;

  /// The BroadcastService offered on this channel.
  SchemaBroadcastService? providesBroadcastService;

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

  /// Create a new instance of [SchemaAMRadioChannel]
  SchemaAMRadioChannel({
    this.broadcastChannelId,
    this.broadcastFrequency,
    this.broadcastServiceTier,
    this.genre,
    this.inBroadcastLineup,
    this.providesBroadcastService,
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

  /// Serialize [SchemaAMRadioChannel] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'AMRadioChannel',
        'broadcastChannelId': convertToJsonLd(broadcastChannelId, [String]),
        'broadcastFrequency': convertToJsonLd(broadcastFrequency,
            [SchemaBroadcastFrequencySpecification, String]),
        'broadcastServiceTier': convertToJsonLd(broadcastServiceTier, [String]),
        'genre': convertToJsonLd(genre, [String, String]),
        'inBroadcastLineup':
            convertToJsonLd(inBroadcastLineup, [SchemaCableOrSatelliteService]),
        'providesBroadcastService':
            convertToJsonLd(providesBroadcastService, [SchemaBroadcastService]),
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
