import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerated status values for Order.
/// See https://schema.org/OrderStatus
enum SchemaOrderStatus implements SchemaStatusEnumeration {
  /// OrderStatus representing cancellation of an order.
  orderCancelled('https://schema.org/OrderStatus'),

  /// OrderStatus representing successful delivery of an order.
  orderDelivered('https://schema.org/OrderStatus'),

  /// OrderStatus representing that an order is in transit.
  orderInTransit('https://schema.org/OrderStatus'),

  /// OrderStatus representing that payment is due on an order.
  orderPaymentDue('https://schema.org/OrderStatus'),

  /// OrderStatus representing availability of an order for pickup.
  orderPickupAvailable('https://schema.org/OrderStatus'),

  /// OrderStatus representing that there is a problem with the order.
  orderProblem('https://schema.org/OrderStatus'),

  /// OrderStatus representing that an order is being processed.
  orderProcessing('https://schema.org/OrderStatus'),

  /// OrderStatus representing that an order has been returned.
  orderReturned('https://schema.org/OrderStatus');

  /// Constructor for [SchemaOrderStatus]
  const SchemaOrderStatus(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaOrderStatus] to JSON-LD
  String toJsonLd() => value;
}
