import 'package:meta_seo/schema_org/schemas.dart';

/// GovernmentBenefitsType enumerates several kinds of government benefits to
/// support the COVID-19 situation. Note that this structure may not capture
/// all benefits offered.
/// See https://schema.org/GovernmentBenefitsType
enum SchemaGovernmentBenefitsType implements SchemaSerializable {
  /// this is a benefit for basic income.
  basicIncome('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for supporting businesses.
  businessSupport('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for disability support.
  disabilitySupport('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for health care.
  healthCare('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for one-time payments for individuals.
  oneTimePayments('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for paid leave.
  paidLeave('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for parental support.
  parentalSupport('https://schema.org/GovernmentBenefitsType'),

  /// this is a benefit for unemployment support.
  unemploymentSupport('https://schema.org/GovernmentBenefitsType');

  /// Constructor for [SchemaGovernmentBenefitsType]
  const SchemaGovernmentBenefitsType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaGovernmentBenefitsType] to JSON-LD
  @override
  String toJsonLd() => value;
}
