import 'package:meta_seo/schema_org/schemas.dart';

/// RsvpResponseType is an enumeration type whose instances represent
/// responding to an RSVP request.
/// See https://schema.org/RsvpResponseType
enum SchemaRsvpResponseType implements SchemaSerializable {
  /// The invitee may or may not attend.
  rsvpResponseMaybe('https://schema.org/RsvpResponseType'),

  /// The invitee will not attend.
  rsvpResponseNo('https://schema.org/RsvpResponseType'),

  /// The invitee will attend.
  rsvpResponseYes('https://schema.org/RsvpResponseType');

  /// Constructor for [SchemaRsvpResponseType]
  const SchemaRsvpResponseType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaRsvpResponseType] to JSON-LD
  @override
  String toJsonLd() => value;
}
