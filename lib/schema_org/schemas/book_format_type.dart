import 'package:meta_seo/schema_org/schemas.dart';

/// The publication format of the book.
/// See https://schema.org/BookFormatType
enum SchemaBookFormatType implements SchemaSerializable {
  /// Audiobook. This is an enumerated value for use with the bookFormat
  /// property. There is also a type 'Audiobook' in the bib extension which
  /// includes Audiobook specific properties.
  audiobookFormat('https://schema.org/BookFormatType'),

  /// Ebook.
  eBook('https://schema.org/BookFormatType'),

  /// GraphicNovel. May represent a bound collection of ComicIssue
  /// instances.
  graphicNovel('https://schema.org/BookFormatType'),

  /// Hardcover.
  hardcover('https://schema.org/BookFormatType'),

  /// Paperback.
  paperback('https://schema.org/BookFormatType');

  /// Constructor for [SchemaBookFormatType]
  const SchemaBookFormatType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaBookFormatType] to JSON-LD
  @override
  String toJsonLd() => value;
}
