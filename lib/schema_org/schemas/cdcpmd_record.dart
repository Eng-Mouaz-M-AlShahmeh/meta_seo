import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A CDCPMDRecord is a data structure representing a record in a CDC tabular
/// data format used for hospital data reporting. See
/// [documentation](/docs/cdc-covid.html) for details, and the linked CDC
/// materials for authoritative definitions used as the source here.
/// See https://schema.org/CDCPMDRecord
class SchemaCDCPMDRecord implements SchemaSerializable {
  /// collectiondate - Date for which patient counts are reported.
  ///
  /// Supported types: [String], [String]
  String? cvdCollectionDate;

  /// Name of the County of the NHSN facility that this data record applies to.
  /// Use [SchemacvdFacilityId] to identify the facility. To provide other
  /// details, [SchemahealthcareReportingData] can be used on a
  /// [SchemaHospital] entry.
  String? cvdFacilityCounty;

  /// Identifier of the NHSN facility that this data record applies to. Use
  /// [SchemacvdFacilityCounty] to indicate the county. To provide other
  /// details, [SchemahealthcareReportingData] can be used on a
  /// [SchemaHospital] entry.
  String? cvdFacilityId;

  /// Inpatient beds, including all staffed, licensed, and overflow (surge)
  /// beds used for inpatients.
  int? cvdNumBeds;

  /// Total number of staffed inpatient beds that are occupied.
  int? cvdNumBedsOcc;

  /// Patients with suspected or confirmed COVID-19 who died in the hospital,
  /// ED, or any overflow location.
  int? cvdNumC19Died;

  /// Patients hospitalized in an NHSN inpatient care location with onset of
  /// suspected or confirmed COVID-19 14 or more days after hospitalization.
  int? cvdNumC19HOPats;

  /// Patients currently hospitalized in an inpatient care location who have
  /// suspected or confirmed COVID-19.
  int? cvdNumC19HospPats;

  /// Patients hospitalized in an NHSN inpatient care location who have
  /// suspected or confirmed COVID-19 and are on a mechanical ventilator.
  int? cvdNumC19MechVentPats;

  /// Patients with suspected or confirmed COVID-19 who are in the ED or any
  /// overflow location awaiting an inpatient bed and on a mechanical
  /// ventilator.
  int? cvdNumC19OFMechVentPats;

  /// Patients with suspected or confirmed COVID-19 who are in the ED or any
  /// overflow location awaiting an inpatient bed.
  int? cvdNumC19OverflowPats;

  /// Total number of staffed inpatient intensive care unit (ICU) beds.
  int? cvdNumICUBeds;

  /// Total number of staffed inpatient ICU beds that are occupied.
  int? cvdNumICUBedsOcc;

  /// Total number of all inpatient and outpatient beds, including all staffed,
  /// ICU, licensed, and overflow (surge) beds used for inpatients or
  /// outpatients.
  int? cvdNumTotBeds;

  /// Total number of ventilators available.
  int? cvdNumVent;

  /// Total number of ventilators in use.
  int? cvdNumVentUse;

  /// Publication date of an online listing.
  ///
  /// Supported types: [String], [String]
  String? datePosted;

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

  /// Create a new instance of [SchemaCDCPMDRecord]
  SchemaCDCPMDRecord({
    this.cvdCollectionDate,
    this.cvdFacilityCounty,
    this.cvdFacilityId,
    this.cvdNumBeds,
    this.cvdNumBedsOcc,
    this.cvdNumC19Died,
    this.cvdNumC19HOPats,
    this.cvdNumC19HospPats,
    this.cvdNumC19MechVentPats,
    this.cvdNumC19OFMechVentPats,
    this.cvdNumC19OverflowPats,
    this.cvdNumICUBeds,
    this.cvdNumICUBedsOcc,
    this.cvdNumTotBeds,
    this.cvdNumVent,
    this.cvdNumVentUse,
    this.datePosted,
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

  /// Serialize [SchemaCDCPMDRecord] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'CDCPMDRecord',
        'cvdCollectionDate':
            convertToJsonLd(cvdCollectionDate, [String, String]),
        'cvdFacilityCounty': convertToJsonLd(cvdFacilityCounty, [String]),
        'cvdFacilityId': convertToJsonLd(cvdFacilityId, [String]),
        'cvdNumBeds': convertToJsonLd(cvdNumBeds, [int]),
        'cvdNumBedsOcc': convertToJsonLd(cvdNumBedsOcc, [int]),
        'cvdNumC19Died': convertToJsonLd(cvdNumC19Died, [int]),
        'cvdNumC19HOPats': convertToJsonLd(cvdNumC19HOPats, [int]),
        'cvdNumC19HospPats': convertToJsonLd(cvdNumC19HospPats, [int]),
        'cvdNumC19MechVentPats': convertToJsonLd(cvdNumC19MechVentPats, [int]),
        'cvdNumC19OFMechVentPats':
            convertToJsonLd(cvdNumC19OFMechVentPats, [int]),
        'cvdNumC19OverflowPats': convertToJsonLd(cvdNumC19OverflowPats, [int]),
        'cvdNumICUBeds': convertToJsonLd(cvdNumICUBeds, [int]),
        'cvdNumICUBedsOcc': convertToJsonLd(cvdNumICUBedsOcc, [int]),
        'cvdNumTotBeds': convertToJsonLd(cvdNumTotBeds, [int]),
        'cvdNumVent': convertToJsonLd(cvdNumVent, [int]),
        'cvdNumVentUse': convertToJsonLd(cvdNumVentUse, [int]),
        'datePosted': convertToJsonLd(datePosted, [String, String]),
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
