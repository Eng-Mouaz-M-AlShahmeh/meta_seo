import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// The anatomical location at which two or more bones make contact.
/// See https://schema.org/Joint
class SchemaJoint implements SchemaSerializable {
  /// The biomechanical properties of the bone.
  String? biomechnicalClass;

  /// The degree of mobility the joint allows.
  ///
  /// Supported types: [SchemaMedicalEntity], [String]
  dynamic functionalClass;

  /// The name given to how bone physically connects to each other.
  String? structuralClass;

  /// If applicable, a description of the pathophysiology associated with the
  /// anatomical system, including potential abnormal changes in the
  /// mechanical, physical, and biochemical functions of the system.
  String? associatedPathophysiology;

  /// Location in the body of the anatomical structure.
  String? bodyLocation;

  /// Other anatomical structures to which this structure is connected.
  SchemaAnatomicalStructure? connectedTo;

  /// An image containing a diagram that illustrates the structure and/or its
  /// component substructures and/or connections with other structures.
  SchemaImageObject? diagram;

  /// The anatomical or organ system that this structure is part of.
  SchemaAnatomicalSystem? partOfSystem;

  /// A medical condition associated with this anatomy.
  SchemaMedicalCondition? relatedCondition;

  /// A medical therapy related to this anatomy.
  SchemaMedicalTherapy? relatedTherapy;

  /// Component (sub-)structure(s) that comprise this anatomical structure.
  SchemaAnatomicalStructure? subStructure;

  /// A medical code for the entity, taken from a controlled vocabulary or
  /// ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
  SchemaMedicalCode? code;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// A medical guideline related to this entity.
  SchemaMedicalGuideline? guideline;

  /// The drug or supplement's legal status, including any controlled substance
  /// schedules that apply.
  ///
  /// Supported types: [SchemaDrugLegalStatus], [SchemaMedicalEnumeration],
  /// [String]
  dynamic legalStatus;

  /// The system of medicine that includes this MedicalEntity, for example
  /// 'evidence-based', 'homeopathic', 'chiropractic', etc.
  SchemaMedicineSystem? medicineSystem;

  /// If applicable, the organization that officially recognizes this entity as
  /// part of its endorsed system of medicine.
  SchemaOrganization? recognizingAuthority;

  /// If applicable, a medical specialty in which this entity is relevant.
  SchemaMedicalSpecialty? relevantSpecialty;

  /// A medical study or trial related to this entity.
  SchemaMedicalStudy? study;

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

  /// Create a new instance of [SchemaJoint]
  SchemaJoint({
    this.biomechnicalClass,
    this.functionalClass,
    this.structuralClass,
    this.associatedPathophysiology,
    this.bodyLocation,
    this.connectedTo,
    this.diagram,
    this.partOfSystem,
    this.relatedCondition,
    this.relatedTherapy,
    this.subStructure,
    this.code,
    this.funding,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
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

  /// Serialize [SchemaJoint] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Joint',
        'biomechnicalClass': convertToJsonLd(biomechnicalClass, [String]),
        'functionalClass':
            convertToJsonLd(functionalClass, [SchemaMedicalEntity, String]),
        'structuralClass': convertToJsonLd(structuralClass, [String]),
        'associatedPathophysiology':
            convertToJsonLd(associatedPathophysiology, [String]),
        'bodyLocation': convertToJsonLd(bodyLocation, [String]),
        'connectedTo':
            convertToJsonLd(connectedTo, [SchemaAnatomicalStructure]),
        'diagram': convertToJsonLd(diagram, [SchemaImageObject]),
        'partOfSystem': convertToJsonLd(partOfSystem, [SchemaAnatomicalSystem]),
        'relatedCondition':
            convertToJsonLd(relatedCondition, [SchemaMedicalCondition]),
        'relatedTherapy':
            convertToJsonLd(relatedTherapy, [SchemaMedicalTherapy]),
        'subStructure':
            convertToJsonLd(subStructure, [SchemaAnatomicalStructure]),
        'code': convertToJsonLd(code, [SchemaMedicalCode]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'guideline': convertToJsonLd(guideline, [SchemaMedicalGuideline]),
        'legalStatus': convertToJsonLd(legalStatus,
            [SchemaDrugLegalStatus, SchemaMedicalEnumeration, String]),
        'medicineSystem':
            convertToJsonLd(medicineSystem, [SchemaMedicineSystem]),
        'recognizingAuthority':
            convertToJsonLd(recognizingAuthority, [SchemaOrganization]),
        'relevantSpecialty':
            convertToJsonLd(relevantSpecialty, [SchemaMedicalSpecialty]),
        'study': convertToJsonLd(study, [SchemaMedicalStudy]),
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
