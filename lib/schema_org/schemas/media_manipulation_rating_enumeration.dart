import 'package:meta_seo/schema_org/schemas.dart';

/// Codes for use with the [SchemamediaAuthenticityCategory] property,
/// indicating the authenticity of a media object (in the context of how it
/// was published or shared). In general these codes are not mutually
/// exclusive, although some combinations (such as 'original' versus
/// 'transformed', 'edited' and 'staged') would be contradictory if applied
/// in the same [SchemaMediaReview]. Note that the application of these codes
/// is with regard to a piece of media shared or published in a particular
/// context.
/// See https://schema.org/MediaManipulationRatingEnumeration
enum SchemaMediaManipulationRatingEnumeration implements SchemaSerializable {
  /// Unaltered audio presented in an inaccurate manner that misrepresents
  /// it. For example, using incorrect dates or locations, or sharing brief
  /// clips from a longer recording to mislead viewers. (Audio rated
  /// “original” can also be missing context.)
  decontextualizedContent(
      'https://schema.org/MediaManipulationRatingEnumeration'),

  /// The audio has been edited or rearranged. This category applies to
  /// time edits, including editing multiple audio clips together to alter
  /// the story being told or editing out large portions from the
  /// recording.
  editedOrCroppedContent(
      'https://schema.org/MediaManipulationRatingEnumeration'),

  /// No evidence the audio has been misleadingly altered or manipulated,
  /// though it may contain false or misleading claims.
  originalMediaContent('https://schema.org/MediaManipulationRatingEnumeration'),

  /// Audio that was created as political or humorous commentary and is
  /// presented in that context. (Reshares of satire/parody content that do
  /// not include relevant context are more likely to fall under the
  /// “missing context” rating.)
  satireOrParodyContent(
      'https://schema.org/MediaManipulationRatingEnumeration'),

  /// Audio that has been created using actors or similarly contrived.
  stagedContent('https://schema.org/MediaManipulationRatingEnumeration'),

  /// Part or all of the audio has been manipulated to alter the words or
  /// sounds, or the audio has been synthetically generated, such as to
  /// create a sound-alike voice.
  transformedContent('https://schema.org/MediaManipulationRatingEnumeration');

  /// Constructor for [SchemaMediaManipulationRatingEnumeration]
  const SchemaMediaManipulationRatingEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaMediaManipulationRatingEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
