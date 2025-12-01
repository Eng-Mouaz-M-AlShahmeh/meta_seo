import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A statement of the money due for goods or services; a bill.
/// See https://schema.org/Invoice
class SchemaInvoice implements SchemaSerializable {
  /// The identifier for the account the payment will be applied to.
  String? accountId;

  /// The time interval used to compute the invoice.
  SchemaDuration? billingPeriod;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// A category for the item. Greater signs or slashes can be used to
  /// informally indicate a category hierarchy.
  ///
  /// Supported types: [SchemaCategoryCode], [SchemaPhysicalActivityCategory],
  /// [String], [String], [SchemaThing]
  dynamic category;

  /// A number that confirms the given order or payment has been received.
  String? confirmationNumber;

  /// Party placing the order or paying the invoice.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic customer;

  /// The minimum payment required at this time.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic minimumPaymentDue;

  /// The date that payment is due.
  String? paymentDue;

  /// The date that payment is due.
  ///
  /// Supported types: [String], [String]
  String? paymentDueDate;

  /// The name of the credit card or other method of payment for the order.
  SchemaPaymentMethod? paymentMethod;

  /// An identifier for the method of payment used (e.g. the last 4 digits of
  /// the credit card).
  String? paymentMethodId;

  /// The status of payment; whether the invoice has been paid or not.
  ///
  /// Supported types: [SchemaPaymentStatusType], [String]
  dynamic paymentStatus;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The Order(s) related to this Invoice. One or more Orders may be combined
  /// into a single Invoice.
  SchemaOrder? referencesOrder;

  /// The date the invoice is scheduled to be paid.
  String? scheduledPaymentDate;

  /// The total amount due.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic totalPaymentDue;

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

  /// Create a new instance of [SchemaInvoice]
  SchemaInvoice({
    this.accountId,
    this.billingPeriod,
    this.broker,
    this.category,
    this.confirmationNumber,
    this.customer,
    this.minimumPaymentDue,
    this.paymentDue,
    this.paymentDueDate,
    this.paymentMethod,
    this.paymentMethodId,
    this.paymentStatus,
    this.provider,
    this.referencesOrder,
    this.scheduledPaymentDate,
    this.totalPaymentDue,
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

  /// Serialize [SchemaInvoice] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Invoice',
        'accountId': convertToJsonLd(accountId, [String]),
        'billingPeriod': convertToJsonLd(billingPeriod, [SchemaDuration]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'category': convertToJsonLd(category, [
          SchemaCategoryCode,
          SchemaPhysicalActivityCategory,
          String,
          String,
          SchemaThing
        ]),
        'confirmationNumber': convertToJsonLd(confirmationNumber, [String]),
        'customer':
            convertToJsonLd(customer, [SchemaOrganization, SchemaPerson]),
        'minimumPaymentDue': convertToJsonLd(minimumPaymentDue,
            [SchemaMonetaryAmount, SchemaPriceSpecification]),
        'paymentDue': convertToJsonLd(paymentDue, [String]),
        'paymentDueDate': convertToJsonLd(paymentDueDate, [String, String]),
        'paymentMethod': convertToJsonLd(paymentMethod, [SchemaPaymentMethod]),
        'paymentMethodId': convertToJsonLd(paymentMethodId, [String]),
        'paymentStatus':
            convertToJsonLd(paymentStatus, [SchemaPaymentStatusType, String]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'referencesOrder': convertToJsonLd(referencesOrder, [SchemaOrder]),
        'scheduledPaymentDate': convertToJsonLd(scheduledPaymentDate, [String]),
        'totalPaymentDue': convertToJsonLd(
            totalPaymentDue, [SchemaMonetaryAmount, SchemaPriceSpecification]),
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
