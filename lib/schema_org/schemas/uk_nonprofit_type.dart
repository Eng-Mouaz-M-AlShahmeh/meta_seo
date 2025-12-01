import 'package:meta_seo/schema_org/schemas.dart';

/// Non-profit organization type originating from the United Kingdom.
/// See https://schema.org/UKNonprofitType
enum SchemaUKNonprofitType implements SchemaNonprofitType {
  /// Non-profit type referring to a Charitable Incorporated Organization
  /// (UK).
  charitableIncorporatedOrganization('https://schema.org/UKNonprofitType'),

  /// Non-profit type referring to a charitable company that is limited by
  /// guarantee (UK).
  limitedByGuaranteeCharity('https://schema.org/UKNonprofitType'),

  /// Non-profit type referring to a UK trust.
  uKTrust('https://schema.org/UKNonprofitType'),

  /// Non-profit type referring to a charitable company that is not
  /// incorporated (UK).
  unincorporatedAssociationCharity('https://schema.org/UKNonprofitType');

  /// Constructor for [SchemaUKNonprofitType]
  const SchemaUKNonprofitType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaUKNonprofitType] to JSON-LD
  String toJsonLd() => value;
}
