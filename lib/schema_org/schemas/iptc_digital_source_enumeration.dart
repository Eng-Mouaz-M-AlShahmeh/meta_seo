import 'package:meta_seo/schema_org/schemas.dart';

/// //cv.iptc.org/newscodes/digitalsourcetype/">detailed definitions</a> of
/// all terms.
/// See https://schema.org/IPTCDigitalSourceEnumeration
enum SchemaIPTCDigitalSourceEnumeration implements SchemaMediaEnumeration {
  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  algorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  algorithmicallyEnhancedDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeCaptureDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeSyntheticDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  compositeWithTrainedAlgorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  dataDrivenMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  digitalArtDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  digitalCaptureDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  minorHumanEditsDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  negativeFilmDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  positiveFilmDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  printDigitalSource('https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  trainedAlgorithmicMediaDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration'),

  /// //cv.iptc.org/newscodes/digitalsourcetype/">digital source type</a>
  /// vocabulary.
  virtualRecordingDigitalSource(
      'https://schema.org/IPTCDigitalSourceEnumeration');

  /// Constructor for [SchemaIPTCDigitalSourceEnumeration]
  const SchemaIPTCDigitalSourceEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaIPTCDigitalSourceEnumeration] to JSON-LD
  String toJsonLd() => value;
}
