import 'package:meta_seo/schema_org/schemas.dart';

/// A list of possible levels for the legal validity of a legislation.
/// See https://schema.org/LegalValueLevel
enum SchemaLegalValueLevel implements SchemaSerializable {
  /// Indicates that the publisher gives some special status to the
  /// publication of the document. ("The Queens Printer" version of a UK
  /// Act of Parliament, or the PDF version of a Directive published by the
  /// EU Office of Publications.) Something "Authoritative" is considered
  /// to be also [SchemaOfficialLegalValue].
  authoritativeLegalValue('https://schema.org/LegalValueLevel'),

  /// Indicates a document for which the text is conclusively what the law
  /// says and is legally binding. (E.g. the digitally signed version of an
  /// Official Journal.) Something "Definitive" is considered to be also
  /// [SchemaAuthoritativeLegalValue].
  definitiveLegalValue('https://schema.org/LegalValueLevel'),

  /// All the documents published by an official publisher should have at
  /// least the legal value level "OfficialLegalValue". This indicates that
  /// the document was published by an organisation with the public task of
  /// making it available (e.g. a consolidated version of an EU directive
  /// published by the EU Office of Publications).
  officialLegalValue('https://schema.org/LegalValueLevel'),

  /// Indicates that a document has no particular or special standing (e.g.
  /// a republication of a law by a private publisher).
  unofficialLegalValue('https://schema.org/LegalValueLevel');

  /// Constructor for [SchemaLegalValueLevel]
  const SchemaLegalValueLevel(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaLegalValueLevel] to JSON-LD
  @override
  String toJsonLd() => value;
}
