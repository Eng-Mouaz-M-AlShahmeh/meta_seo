import 'package:meta_seo/schema_org/schemas.dart';

/// Design models for observational medical studies. Enumerated type.
/// See https://schema.org/MedicalObservationalStudyDesign
enum SchemaMedicalObservationalStudyDesign implements SchemaMedicalEnumeration {
  /// A case series (also known as a clinical series) is a medical research
  /// study that tracks patients with a known exposure given similar
  /// treatment or examines their medical records for exposure and outcome.
  /// A case series can be retrospective or prospective and usually
  /// involves a smaller number of patients than the more powerful
  /// case-control studies or randomized controlled trials. Case series may
  /// be consecutive or non-consecutive, depending on whether all cases
  /// presenting to the reporting authors over a period of time were
  /// included, or only a selection.
  caseSeries('https://schema.org/MedicalObservationalStudyDesign'),

  /// Also known as a panel study. A cohort study is a form of longitudinal
  /// study used in medicine and social science. It is one type of study
  /// design and should be compared with a cross-sectional study. A cohort
  /// is a group of people who share a common characteristic or experience
  /// within a defined period (e.g., are born, leave school, lose their
  /// job, are exposed to a drug or a vaccine, etc.). The comparison group
  /// may be the general population from which the cohort is drawn, or it
  /// may be another cohort of persons thought to have had little or no
  /// exposure to the substance under investigation, but otherwise similar.
  /// Alternatively, subgroups within the cohort may be compared with each
  /// other.
  cohortStudy('https://schema.org/MedicalObservationalStudyDesign'),

  /// Studies carried out on pre-existing data (usually from 'snapshot'
  /// surveys), such as that collected by the Census Bureau. Sometimes
  /// called Prevalence Studies.
  crossSectional('https://schema.org/MedicalObservationalStudyDesign'),

  /// Unlike cross-sectional studies, longitudinal studies track the same
  /// people, and therefore the differences observed in those people are
  /// less likely to be the result of cultural differences across
  /// generations. Longitudinal studies are also used in medicine to
  /// uncover predictors of certain diseases.
  longitudinal('https://schema.org/MedicalObservationalStudyDesign'),

  /// An observational study design.
  observational('https://schema.org/MedicalObservationalStudyDesign'),

  /// A registry-based study design.
  registry('https://schema.org/MedicalObservationalStudyDesign');

  /// Constructor for [SchemaMedicalObservationalStudyDesign]
  const SchemaMedicalObservationalStudyDesign(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMedicalObservationalStudyDesign] to JSON-LD
  String toJsonLd() => value;
}
