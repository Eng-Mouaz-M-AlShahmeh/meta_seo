import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Any medical intervention designed to prevent, treat, and cure human
/// diseases and medical conditions, including both curative and palliative
/// therapies. Medical therapies are typically processes of care relying upon
/// pharmacotherapy, behavioral therapy, supportive therapy (with fluid or
/// nutrition for example), or detoxification (e.g. hemodialysis) aimed at
/// improving or preventing a health condition.
/// See https://schema.org/MedicalTherapy
class SchemaMedicalTherapy implements SchemaSerializable {
  /// A contraindication for this therapy.
  ///
  /// Supported types: [SchemaMedicalContraindication], [String]
  dynamic contraindication;

  /// A therapy that duplicates or overlaps this one.
  SchemaMedicalTherapy? duplicateTherapy;

  /// A possible serious complication and/or serious side effect of this
  /// therapy. Serious adverse outcomes include those that are
  /// life-threatening; result in death, disability, or permanent damage;
  /// require hospitalization or prolong existing hospitalization; cause
  /// congenital anomalies or birth defects; or jeopardize the patient and may
  /// require medical or surgical intervention to prevent one of the outcomes
  /// in this definition.
  SchemaMedicalEntity? seriousAdverseOutcome;

  /// A possible complication and/or side effect of this therapy. If it is
  /// known that an adverse outcome is serious (resulting in death, disability,
  /// or permanent damage; requiring hospitalization; or otherwise
  /// life-threatening or requiring immediate medical attention), tag it as a
  /// seriousAdverseOutcome instead.
  SchemaMedicalEntity? adverseOutcome;

  /// A dosing schedule for the drug for a given population, either observed,
  /// recommended, or maximum dose based on the type used.
  SchemaDoseSchedule? doseSchedule;

  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

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

  /// Location in the body of the anatomical structure.
  String? bodyLocation;

  /// Typical or recommended followup care after the procedure is performed.
  String? followup;

  /// How the procedure is performed.
  String? howPerformed;

  /// Typical preparation that a patient must undergo before having the
  /// procedure performed.
  ///
  /// Supported types: [SchemaMedicalEntity], [String]
  dynamic preparation;

  /// The type of procedure, for example Surgical, Noninvasive, or
  /// Percutaneous.
  SchemaMedicalProcedureType? procedureType;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

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

  /// Create a new instance of [SchemaMedicalTherapy]
  SchemaMedicalTherapy({
    this.contraindication,
    this.duplicateTherapy,
    this.seriousAdverseOutcome,
    this.adverseOutcome,
    this.doseSchedule,
    this.drug,
    this.code,
    this.funding,
    this.guideline,
    this.legalStatus,
    this.medicineSystem,
    this.recognizingAuthority,
    this.relevantSpecialty,
    this.study,
    this.bodyLocation,
    this.followup,
    this.howPerformed,
    this.preparation,
    this.procedureType,
    this.status,
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

  /// Serialize [SchemaMedicalTherapy] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'MedicalTherapy',
        'contraindication': convertToJsonLd(
            contraindication, [SchemaMedicalContraindication, String]),
        'duplicateTherapy':
            convertToJsonLd(duplicateTherapy, [SchemaMedicalTherapy]),
        'seriousAdverseOutcome':
            convertToJsonLd(seriousAdverseOutcome, [SchemaMedicalEntity]),
        'adverseOutcome':
            convertToJsonLd(adverseOutcome, [SchemaMedicalEntity]),
        'doseSchedule': convertToJsonLd(doseSchedule, [SchemaDoseSchedule]),
        'drug': convertToJsonLd(drug, [SchemaDrug]),
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
        'bodyLocation': convertToJsonLd(bodyLocation, [String]),
        'followup': convertToJsonLd(followup, [String]),
        'howPerformed': convertToJsonLd(howPerformed, [String]),
        'preparation':
            convertToJsonLd(preparation, [SchemaMedicalEntity, String]),
        'procedureType':
            convertToJsonLd(procedureType, [SchemaMedicalProcedureType]),
        'status': convertToJsonLd(
            status, [SchemaEventStatusType, SchemaMedicalStudyStatus, String]),
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
