import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// An order is a confirmation of a transaction (a receipt), which can
/// contain multiple line items, each represented by an Offer that has been
/// accepted by the customer.
/// See https://schema.org/Order
class SchemaOrder implements SchemaSerializable {
  /// The offer(s) -- e.g., product, quantity and price combinations --
  /// included in the order.
  SchemaOffer? acceptedOffer;

  /// The billing address for the order.
  SchemaPostalAddress? billingAddress;

  /// An entity that arranges for an exchange between a buyer and a seller. In
  /// most cases a broker never acquires or releases ownership of a product or
  /// service involved in an exchange. If it is not clear whether an entity is
  /// a broker, seller, or buyer, the latter two terms are preferred.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic broker;

  /// A number that confirms the given order or payment has been received.
  String? confirmationNumber;

  /// Party placing the order or paying the invoice.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic customer;

  /// Any discount applied (to an Order).
  ///
  /// Supported types: [String], [int]
  dynamic discount;

  /// Code used to redeem a discount.
  String? discountCode;

  /// //en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other
  /// currency types, e.g. "Ithaca HOUR".
  String? discountCurrency;

  /// Indicates whether the offer was accepted as a gift for someone other than
  /// the buyer.
  bool? isGift;

  /// 'merchant' is an out-dated term for 'seller'.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic merchant;

  /// Date order was placed.
  ///
  /// Supported types: [String], [String]
  String? orderDate;

  /// The delivery of the parcel related to this order or order item.
  SchemaParcelDelivery? orderDelivery;

  /// The identifier of the transaction.
  String? orderNumber;

  /// The current status of the order.
  SchemaOrderStatus? orderStatus;

  /// The item ordered.
  ///
  /// Supported types: [SchemaOrderItem], [SchemaProduct], [SchemaService]
  dynamic orderedItem;

  /// The order is being paid as part of the referenced Invoice.
  SchemaInvoice? partOfInvoice;

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

  /// The URL for sending a payment.
  String? paymentUrl;

  /// An entity which offers (sells / leases / lends / loans) the services /
  /// goods. A seller may also be a provider.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic seller;

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

  /// Create a new instance of [SchemaOrder]
  SchemaOrder({
    this.acceptedOffer,
    this.billingAddress,
    this.broker,
    this.confirmationNumber,
    this.customer,
    this.discount,
    this.discountCode,
    this.discountCurrency,
    this.isGift,
    this.merchant,
    this.orderDate,
    this.orderDelivery,
    this.orderNumber,
    this.orderStatus,
    this.orderedItem,
    this.partOfInvoice,
    this.paymentDue,
    this.paymentDueDate,
    this.paymentMethod,
    this.paymentMethodId,
    this.paymentUrl,
    this.seller,
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

  /// Serialize [SchemaOrder] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Order',
        'acceptedOffer': convertToJsonLd(acceptedOffer, [SchemaOffer]),
        'billingAddress':
            convertToJsonLd(billingAddress, [SchemaPostalAddress]),
        'broker': convertToJsonLd(broker, [SchemaOrganization, SchemaPerson]),
        'confirmationNumber': convertToJsonLd(confirmationNumber, [String]),
        'customer':
            convertToJsonLd(customer, [SchemaOrganization, SchemaPerson]),
        'discount': convertToJsonLd(discount, [String, int]),
        'discountCode': convertToJsonLd(discountCode, [String]),
        'discountCurrency': convertToJsonLd(discountCurrency, [String]),
        'isGift': convertToJsonLd(isGift, [bool]),
        'merchant':
            convertToJsonLd(merchant, [SchemaOrganization, SchemaPerson]),
        'orderDate': convertToJsonLd(orderDate, [String, String]),
        'orderDelivery': convertToJsonLd(orderDelivery, [SchemaParcelDelivery]),
        'orderNumber': convertToJsonLd(orderNumber, [String]),
        'orderStatus': convertToJsonLd(orderStatus, [SchemaOrderStatus]),
        'orderedItem': convertToJsonLd(
            orderedItem, [SchemaOrderItem, SchemaProduct, SchemaService]),
        'partOfInvoice': convertToJsonLd(partOfInvoice, [SchemaInvoice]),
        'paymentDue': convertToJsonLd(paymentDue, [String]),
        'paymentDueDate': convertToJsonLd(paymentDueDate, [String, String]),
        'paymentMethod': convertToJsonLd(paymentMethod, [SchemaPaymentMethod]),
        'paymentMethodId': convertToJsonLd(paymentMethodId, [String]),
        'paymentUrl': convertToJsonLd(paymentUrl, [String]),
        'seller': convertToJsonLd(seller, [SchemaOrganization, SchemaPerson]),
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
