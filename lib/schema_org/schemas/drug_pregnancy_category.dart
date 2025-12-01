import 'package:meta_seo/schema_org/schemas.dart';

/// Categories that represent an assessment of the risk of fetal injury due
/// to a drug or pharmaceutical used as directed by the mother during
/// pregnancy.
/// See https://schema.org/DrugPregnancyCategory
enum SchemaDrugPregnancyCategory implements SchemaMedicalEnumeration {
  /// A designation by the US FDA signifying that adequate and
  /// well-controlled studies have failed to demonstrate a risk to the
  /// fetus in the first trimester of pregnancy (and there is no evidence
  /// of risk in later trimesters).
  fDAcategoryA('https://schema.org/DrugPregnancyCategory'),

  /// A designation by the US FDA signifying that animal reproduction
  /// studies have failed to demonstrate a risk to the fetus and there are
  /// no adequate and well-controlled studies in pregnant women.
  fDAcategoryB('https://schema.org/DrugPregnancyCategory'),

  /// A designation by the US FDA signifying that animal reproduction
  /// studies have shown an adverse effect on the fetus and there are no
  /// adequate and well-controlled studies in humans, but potential
  /// benefits may warrant use of the drug in pregnant women despite
  /// potential risks.
  fDAcategoryC('https://schema.org/DrugPregnancyCategory'),

  /// A designation by the US FDA signifying that there is positive
  /// evidence of human fetal risk based on adverse reaction data from
  /// investigational or marketing experience or studies in humans, but
  /// potential benefits may warrant use of the drug in pregnant women
  /// despite potential risks.
  fDAcategoryD('https://schema.org/DrugPregnancyCategory'),

  /// A designation by the US FDA signifying that studies in animals or
  /// humans have demonstrated fetal abnormalities and/or there is positive
  /// evidence of human fetal risk based on adverse reaction data from
  /// investigational or marketing experience, and the risks involved in
  /// use of the drug in pregnant women clearly outweigh potential
  /// benefits.
  fDAcategoryX('https://schema.org/DrugPregnancyCategory'),

  /// A designation that the drug in question has not been assigned a
  /// pregnancy category designation by the US FDA.
  fDAnotEvaluated('https://schema.org/DrugPregnancyCategory');

  /// Constructor for [SchemaDrugPregnancyCategory]
  const SchemaDrugPregnancyCategory(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDrugPregnancyCategory] to JSON-LD
  String toJsonLd() => value;
}
