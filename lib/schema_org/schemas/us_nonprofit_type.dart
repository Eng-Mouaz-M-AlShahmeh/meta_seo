import 'package:meta_seo/schema_org/schemas.dart';

/// Non-profit organization type originating from the United States.
/// See https://schema.org/USNonprofitType
enum SchemaUSNonprofitType implements SchemaNonprofitType {
  /// Non-profit type referring to Farmers’ Cooperative Associations.
  nonprofit501a('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Corporations Organized Under Act of
  /// Congress, including Federal Credit Unions and National Farm Loan
  /// Associations.
  nonprofit501c1('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Domestic Fraternal Societies and
  /// Associations.
  nonprofit501c10('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Teachers' Retirement Fund Associations.
  nonprofit501c11('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Benevolent Life Insurance Associations,
  /// Mutual Ditch or Irrigation Companies, Mutual or Cooperative Telephone
  /// Companies.
  nonprofit501c12('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Cemetery Companies.
  nonprofit501c13('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to State-Chartered Credit Unions, Mutual
  /// Reserve Funds.
  nonprofit501c14('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Mutual Insurance Companies or
  /// Associations.
  nonprofit501c15('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Cooperative Organizations to Finance
  /// Crop Operations.
  nonprofit501c16('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Supplemental Unemployment Benefit
  /// Trusts.
  nonprofit501c17('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Employee Funded Pension Trust (created
  /// before 25 June 1959).
  nonprofit501c18('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Post or Organization of Past or Present
  /// Members of the Armed Forces.
  nonprofit501c19('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Title-holding Corporations for Exempt
  /// Organizations.
  nonprofit501c2('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Group Legal Services Plan Organizations.
  nonprofit501c20('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Black Lung Benefit Trusts.
  nonprofit501c21('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Withdrawal Liability Payment Funds.
  nonprofit501c22('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Veterans Organizations.
  nonprofit501c23('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Section 4049 ERISA Trusts.
  nonprofit501c24('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Real Property Title-Holding Corporations
  /// or Trusts with Multiple Parents.
  nonprofit501c25('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to State-Sponsored Organizations Providing
  /// Health Coverage for High-Risk Individuals.
  nonprofit501c26('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to State-Sponsored Workers' Compensation
  /// Reinsurance Organizations.
  nonprofit501c27('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to National Railroad Retirement Investment
  /// Trusts.
  nonprofit501c28('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Religious, Educational, Charitable,
  /// Scientific, Literary, Testing for Public Safety, Fostering National
  /// or International Amateur Sports Competition, or Prevention of Cruelty
  /// to Children or Animals Organizations.
  nonprofit501c3('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Civic Leagues, Social Welfare
  /// Organizations, and Local Associations of Employees.
  nonprofit501c4('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Labor, Agricultural and Horticultural
  /// Organizations.
  nonprofit501c5('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Business Leagues, Chambers of Commerce,
  /// Real Estate Boards.
  nonprofit501c6('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Social and Recreational Clubs.
  nonprofit501c7('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Fraternal Beneficiary Societies and
  /// Associations.
  nonprofit501c8('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Voluntary Employee Beneficiary
  /// Associations.
  nonprofit501c9('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Religious and Apostolic Associations.
  nonprofit501d('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Cooperative Hospital Service
  /// Organizations.
  nonprofit501e('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Cooperative Service Organizations.
  nonprofit501f('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Child Care Organizations.
  nonprofit501k('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Charitable Risk Pools.
  nonprofit501n('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to Credit Counseling Organizations.
  nonprofit501q('https://schema.org/USNonprofitType'),

  /// Non-profit type referring to political organizations.
  nonprofit527('https://schema.org/USNonprofitType');

  /// Constructor for [SchemaUSNonprofitType]
  const SchemaUSNonprofitType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaUSNonprofitType] to JSON-LD
  String toJsonLd() => value;
}
