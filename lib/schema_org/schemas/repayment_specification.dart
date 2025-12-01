import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A structured value representing repayment.
/// See https://schema.org/RepaymentSpecification
class SchemaRepaymentSpecification implements SchemaSerializable {
  /// a type of payment made in cash during the onset of the purchase of an
  /// expensive good/service. The payment typically represents only a
  /// percentage of the full purchase price.
  ///
  /// Supported types: [SchemaMonetaryAmount], [int]
  dynamic downPayment;

  /// The amount to be paid as a penalty in the event of early payment of the
  /// loan.
  SchemaMonetaryAmount? earlyPrepaymentPenalty;

  /// The amount of money to pay in a single payment.
  SchemaMonetaryAmount? loanPaymentAmount;

  /// Frequency of payments due, i.e. number of months between payments. This
  /// is defined as a frequency, i.e. the reciprocal of a period of time.
  int? loanPaymentFrequency;

  /// The number of payments contractually required at origination to repay the
  /// loan. For monthly paying loans this is the number of months from the
  /// contractual first payment date to the maturity date.
  int? numberOfLoanPayments;

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

  /// Create a new instance of [SchemaRepaymentSpecification]
  SchemaRepaymentSpecification({
    this.downPayment,
    this.earlyPrepaymentPenalty,
    this.loanPaymentAmount,
    this.loanPaymentFrequency,
    this.numberOfLoanPayments,
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

  /// Serialize [SchemaRepaymentSpecification] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'RepaymentSpecification',
        'downPayment':
            convertToJsonLd(downPayment, [SchemaMonetaryAmount, int]),
        'earlyPrepaymentPenalty':
            convertToJsonLd(earlyPrepaymentPenalty, [SchemaMonetaryAmount]),
        'loanPaymentAmount':
            convertToJsonLd(loanPaymentAmount, [SchemaMonetaryAmount]),
        'loanPaymentFrequency': convertToJsonLd(loanPaymentFrequency, [int]),
        'numberOfLoanPayments': convertToJsonLd(numberOfLoanPayments, [int]),
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
