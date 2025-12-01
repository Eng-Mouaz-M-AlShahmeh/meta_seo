import 'package:html_character_entities/html_character_entities.dart';

/// Utility for safe text processing for SEO meta tags
class SeoUtils {
  /// Cleans and encodes text for safe use in SEO tags
  ///
  /// Removes all problematic characters:
  /// - Line breaks (\n, \r)
  /// - Tabs (\t)
  /// - Control characters
  /// - Extra spaces
  ///
  /// Then encodes HTML entities
  static String encodeSeoText(String? text) {
    if (text == null || text.isEmpty) return '';

    // Remove all problematic characters
    String cleanText = text
        // Remove line breaks and carriage returns
        .replaceAll('\n', ' ')
        .replaceAll('\r', ' ')
        // Remove tabs
        .replaceAll('\t', ' ')
        // Remove other control characters (ASCII 0-31)
        .replaceAll(RegExp(r'[\x00-\x1F]'), ' ')
        // Remove extra spaces
        .replaceAll(RegExp(r'\s+'), ' ')
        // Remove spaces at the beginning and end
        .trim();

    // Encode HTML entities for security
    return HtmlCharacterEntities.encode(
      cleanText,
      characters: '&<>"\'\\',
    );
  }
}
