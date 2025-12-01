import 'package:meta_seo/schema_org/schemas.dart';

/// //github.com/schemaorg/schemaorg/issues/3057).
/// See https://schema.org/DigitalPlatformEnumeration
enum SchemaDigitalPlatformEnumeration implements SchemaSerializable {
  /// Represents the broad notion of Android-based operating systems.
  androidPlatform('https://schema.org/DigitalPlatformEnumeration'),

  /// Represents the broad notion of 'desktop' browsers as a Web Platform.
  desktopWebPlatform('https://schema.org/DigitalPlatformEnumeration'),

  /// Represents the generic notion of the Web Platform. More specific
  /// codes include [SchemaMobileWebPlatform] and
  /// [SchemaDesktopWebPlatform], as an incomplete list.
  genericWebPlatform('https://schema.org/DigitalPlatformEnumeration'),

  /// Represents the broad notion of iOS-based operating systems.
  iOSPlatform('https://schema.org/DigitalPlatformEnumeration'),

  /// Represents the broad notion of 'mobile' browsers as a Web Platform.
  mobileWebPlatform('https://schema.org/DigitalPlatformEnumeration');

  /// Constructor for [SchemaDigitalPlatformEnumeration]
  const SchemaDigitalPlatformEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDigitalPlatformEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
