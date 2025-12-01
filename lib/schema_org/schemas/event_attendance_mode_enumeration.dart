import 'package:meta_seo/schema_org/schemas.dart';

/// An EventAttendanceModeEnumeration value is one of potentially several
/// modes of organising an event, relating to whether it is online or
/// offline.
/// See https://schema.org/EventAttendanceModeEnumeration
enum SchemaEventAttendanceModeEnumeration implements SchemaSerializable {
  /// MixedEventAttendanceMode - an event that is conducted as a
  /// combination of both offline and online modes.
  mixedEventAttendanceMode('https://schema.org/EventAttendanceModeEnumeration'),

  /// OfflineEventAttendanceMode - an event that is primarily conducted
  /// offline.
  offlineEventAttendanceMode(
      'https://schema.org/EventAttendanceModeEnumeration'),

  /// OnlineEventAttendanceMode - an event that is primarily conducted
  /// online.
  onlineEventAttendanceMode(
      'https://schema.org/EventAttendanceModeEnumeration');

  /// Constructor for [SchemaEventAttendanceModeEnumeration]
  const SchemaEventAttendanceModeEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaEventAttendanceModeEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
