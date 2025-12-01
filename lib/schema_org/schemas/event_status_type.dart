import 'package:meta_seo/schema_org/schemas.dart';

/// EventStatusType is an enumeration type whose instances represent several
/// states that an Event may be in.
/// See https://schema.org/EventStatusType
enum SchemaEventStatusType implements SchemaStatusEnumeration {
  /// The event has been cancelled. If the event has multiple startDate
  /// values, all are assumed to be cancelled. Either startDate or
  /// previousStartDate may be used to specify the event's cancelled
  /// date(s).
  eventCancelled('https://schema.org/EventStatusType'),

  /// Indicates that the event was changed to allow online participation.
  /// See [SchemaeventAttendanceMode] for specifics of whether it is now
  /// fully or partially online.
  eventMovedOnline('https://schema.org/EventStatusType'),

  /// The event has been postponed and no new date has been set. The
  /// event's previousStartDate should be set.
  eventPostponed('https://schema.org/EventStatusType'),

  /// The event has been rescheduled. The event's previousStartDate should
  /// be set to the old date and the startDate should be set to the event's
  /// new date. (If the event has been rescheduled multiple times, the
  /// previousStartDate property may be repeated.)
  eventRescheduled('https://schema.org/EventStatusType'),

  /// The event is taking place or has taken place on the startDate as
  /// scheduled. Use of this value is optional, as it is assumed by
  /// default.
  eventScheduled('https://schema.org/EventStatusType');

  /// Constructor for [SchemaEventStatusType]
  const SchemaEventStatusType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaEventStatusType] to JSON-LD
  String toJsonLd() => value;
}
