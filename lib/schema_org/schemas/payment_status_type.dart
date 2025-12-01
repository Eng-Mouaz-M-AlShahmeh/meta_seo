import 'package:meta_seo/schema_org/schemas.dart';

/// A specific payment status. For example, PaymentDue, PaymentComplete, etc.
/// See https://schema.org/PaymentStatusType
enum SchemaPaymentStatusType implements SchemaStatusEnumeration {
  /// An automatic payment system is in place and will be used.
  paymentAutomaticallyApplied('https://schema.org/PaymentStatusType'),

  /// The payment has been received and processed.
  paymentComplete('https://schema.org/PaymentStatusType'),

  /// The payee received the payment, but it was declined for some reason.
  paymentDeclined('https://schema.org/PaymentStatusType'),

  /// The payment is due, but still within an acceptable time to be
  /// received.
  paymentDue('https://schema.org/PaymentStatusType'),

  /// The payment is due and considered late.
  paymentPastDue('https://schema.org/PaymentStatusType');

  /// Constructor for [SchemaPaymentStatusType]
  const SchemaPaymentStatusType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPaymentStatusType] to JSON-LD
  String toJsonLd() => value;
}
