import 'package:meta_seo/schema_org/schemas.dart';

/// Enumerated status values for Reservation.
/// See https://schema.org/ReservationStatusType
enum SchemaReservationStatusType implements SchemaStatusEnumeration {
  /// The status for a previously confirmed reservation that is now
  /// cancelled.
  reservationCancelled('https://schema.org/ReservationStatusType'),

  /// The status of a confirmed reservation.
  reservationConfirmed('https://schema.org/ReservationStatusType'),

  /// The status of a reservation on hold pending an update like credit
  /// card number or flight changes.
  reservationHold('https://schema.org/ReservationStatusType'),

  /// The status of a reservation when a request has been sent, but not
  /// confirmed.
  reservationPending('https://schema.org/ReservationStatusType');

  /// Constructor for [SchemaReservationStatusType]
  const SchemaReservationStatusType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaReservationStatusType] to JSON-LD
  String toJsonLd() => value;
}
