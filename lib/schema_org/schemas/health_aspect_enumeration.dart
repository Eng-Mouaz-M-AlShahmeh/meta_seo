import 'package:meta_seo/schema_org/schemas.dart';

/// HealthAspectEnumeration enumerates several aspects of health content
/// online, each of which might be described using [SchemahasHealthAspect]
/// and [SchemaHealthTopicContent].
/// See https://schema.org/HealthAspectEnumeration
enum SchemaHealthAspectEnumeration implements SchemaSerializable {
  /// Content about the allergy-related aspects of a health topic.
  allergiesHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about the benefits and advantages of usage or utilization of
  /// topic.
  benefitsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about the causes and main actions that gave rise to the
  /// topic.
  causesHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about contagion mechanisms and contagiousness information
  /// over the topic.
  contagiousnessHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about the effectiveness-related aspects of a health topic.
  effectivenessHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content that discusses practical and policy aspects for getting
  /// access to specific kinds of healthcare (e.g. distribution mechanisms
  /// for vaccines).
  gettingAccessHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content that discusses and explains how a particular health-related
  /// topic works, e.g. in terms of mechanisms and underlying science.
  howItWorksHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about how or where to find a topic. Also may contain
  /// location data that can be used for where to look for help if the
  /// topic is observed.
  howOrWhereHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content discussing ingredients-related aspects of a health topic.
  ingredientsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about coping or life related to the topic.
  livingWithHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Related topics may be treated by a Topic.
  mayTreatHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about common misconceptions and myths that are related to a
  /// topic.
  misconceptionsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Overview of the content. Contains a summarized view of the topic with
  /// the most relevant information for an introduction.
  overviewHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about the real life experience of patients or people that
  /// have lived a similar experience about the topic. May be forums,
  /// topics, Q-and-A and related material.
  patientExperienceHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content discussing pregnancy-related aspects of a health topic.
  pregnancyHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about actions or measures that can be taken to avoid
  /// getting the topic or reaching a critical situation related to the
  /// topic.
  preventionHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Typical progression and happenings of life course of the topic.
  prognosisHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Other prominent or relevant topics tied to the main topic.
  relatedTopicsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about the risk factors and possible complications that
  /// may follow a topic.
  risksOrComplicationsHealthAspect(
      'https://schema.org/HealthAspectEnumeration'),

  /// Content about the safety-related aspects of a health topic.
  safetyHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about how to screen or further filter a topic.
  screeningHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Information about questions that may be asked, when to see a
  /// professional, measures before seeing a doctor or content about the
  /// first consultation.
  seeDoctorHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Self care actions or measures that can be taken to sooth, health or
  /// avoid a topic. This may be carried at home and can be carried/managed
  /// by the person itself.
  selfCareHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Side effects that can be observed from the usage of the topic.
  sideEffectsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Stages that can be observed from a topic.
  stagesHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Symptoms or related symptoms of a Topic.
  symptomsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Treatments or related therapies for a Topic.
  treatmentsHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Categorization and other types related to a topic.
  typesHealthAspect('https://schema.org/HealthAspectEnumeration'),

  /// Content about how, when, frequency and dosage of a topic.
  usageOrScheduleHealthAspect('https://schema.org/HealthAspectEnumeration');

  /// Constructor for [SchemaHealthAspectEnumeration]
  const SchemaHealthAspectEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaHealthAspectEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
