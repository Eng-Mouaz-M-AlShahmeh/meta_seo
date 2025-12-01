import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// Vital signs are measures of various physiological functions in order to
/// assess the most basic body functions.
/// See https://schema.org/VitalSign
class SchemaVitalSign implements SchemaSerializable {
  /// A physical examination that can identify this sign.
  SchemaPhysicalExam? identifyingExam;

  /// A diagnostic test that can identify this sign.
  SchemaMedicalTest? identifyingTest;

  /// The anatomy of the underlying organ system or structures associated with
  /// this entity.
  ///
  /// Supported types: [SchemaAnatomicalStructure], [SchemaAnatomicalSystem],
  /// [SchemaSuperficialAnatomy]
  dynamic associatedAnatomy;

  /// One of a set of differential diagnoses for the condition. Specifically, a
  /// closely-related or competing diagnosis typically considered later in the
  /// cognitive process whereby this medical condition is distinguished from
  /// others most likely responsible for a similar collection of signs and
  /// symptoms to reach the most parsimonious diagnosis or diagnoses in a
  /// patient.
  SchemaDDxElement? differentialDiagnosis;

  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

  /// The characteristics of associated patients, such as age, gender, race
  /// etc.
  String? epidemiology;

  /// The likely outcome in either the short term or long term of the medical
  /// condition.
  String? expectedPrognosis;

  /// The expected progression of the condition if it is not treated and
  /// allowed to progress naturally.
  String? naturalProgression;

  /// Changes in the normal mechanical, physical, and biochemical functions
  /// that are associated with this activity or condition.
  String? pathophysiology;

  /// A possible unexpected and unfavorable evolution of a medical condition.
  /// Complications may include worsening of the signs or symptoms of the
  /// disease, extension of the condition to other organ systems, etc.
  String? possibleComplication;

  /// A possible treatment to address this condition, sign or symptom.
  SchemaMedicalTherapy? possibleTreatment;

  /// A preventative therapy used to prevent an initial occurrence of the
  /// medical condition, such as vaccination.
  SchemaMedicalTherapy? primaryPrevention;

  /// A modifiable or non-modifiable factor that increases the risk of a
  /// patient contracting this condition, e.g. age, coexisting condition.
  SchemaMedicalRiskFactor? riskFactor;

  /// A preventative therapy used to prevent reoccurrence of the medical
  /// condition after an initial episode of the condition.
  SchemaMedicalTherapy? secondaryPrevention;

  /// A sign or symptom of this condition. Signs are objective or physically
  /// observable manifestations of the medical condition while symptoms are the
  /// subjective experience of the medical condition.
  SchemaMedicalSignOrSymptom? signOrSymptom;

  /// The stage of the condition, if applicable.
  SchemaMedicalConditionStage? stage;

  /// The status of the study (enumerated).
  ///
  /// Supported types: [SchemaEventStatusType], [SchemaMedicalStudyStatus],
  /// [String]
  dynamic status;

  /// A medical test typically performed given this condition.
  SchemaMedicalTest? typicalTest;

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

  /// Create a new instance of [SchemaVitalSign]
  SchemaVitalSign({
    this.identifyingExam,
    this.identifyingTest,
    this.associatedAnatomy,
    this.differentialDiagnosis,
    this.drug,
    this.epidemiology,
    this.expectedPrognosis,
    this.naturalProgression,
    this.pathophysiology,
    this.possibleComplication,
    this.possibleTreatment,
    this.primaryPrevention,
    this.riskFactor,
    this.secondaryPrevention,
    this.signOrSymptom,
    this.stage,
    this.status,
    this.typicalTest,
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

  /// Serialize [SchemaVitalSign] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'VitalSign',
        'identifyingExam':
            convertToJsonLd(identifyingExam, [SchemaPhysicalExam]),
        'identifyingTest':
            convertToJsonLd(identifyingTest, [SchemaMedicalTest]),
        'associatedAnatomy': convertToJsonLd(associatedAnatomy, [
          SchemaAnatomicalStructure,
          SchemaAnatomicalSystem,
          SchemaSuperficialAnatomy
        ]),
        'differentialDiagnosis':
            convertToJsonLd(differentialDiagnosis, [SchemaDDxElement]),
        'drug': convertToJsonLd(drug, [SchemaDrug]),
        'epidemiology': convertToJsonLd(epidemiology, [String]),
        'expectedPrognosis': convertToJsonLd(expectedPrognosis, [String]),
        'naturalProgression': convertToJsonLd(naturalProgression, [String]),
        'pathophysiology': convertToJsonLd(pathophysiology, [String]),
        'possibleComplication': convertToJsonLd(possibleComplication, [String]),
        'possibleTreatment':
            convertToJsonLd(possibleTreatment, [SchemaMedicalTherapy]),
        'primaryPrevention':
            convertToJsonLd(primaryPrevention, [SchemaMedicalTherapy]),
        'riskFactor': convertToJsonLd(riskFactor, [SchemaMedicalRiskFactor]),
        'secondaryPrevention':
            convertToJsonLd(secondaryPrevention, [SchemaMedicalTherapy]),
        'signOrSymptom':
            convertToJsonLd(signOrSymptom, [SchemaMedicalSignOrSymptom]),
        'stage': convertToJsonLd(stage, [SchemaMedicalConditionStage]),
        'status': convertToJsonLd(
            status, [SchemaEventStatusType, SchemaMedicalStudyStatus, String]),
        'typicalTest': convertToJsonLd(typicalTest, [SchemaMedicalTest]),
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
