import 'package:meta_seo/schema_org/schemas.dart';

/// Non-profit organization type originating from the Netherlands.
/// See https://schema.org/NLNonprofitType
enum SchemaNLNonprofitType implements SchemaNonprofitType {
  /// Non-profit type referring to a Public Benefit Organization (NL).
  nonprofitANBI('https://schema.org/NLNonprofitType'),

  /// Non-profit type referring to a Social Interest Promoting Institution
  /// (NL).
  nonprofitSBBI('https://schema.org/NLNonprofitType');

  /// Constructor for [SchemaNLNonprofitType]
  const SchemaNLNonprofitType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaNLNonprofitType] to JSON-LD
  String toJsonLd() => value;
}
