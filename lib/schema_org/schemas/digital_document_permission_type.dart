import 'package:meta_seo/schema_org/schemas.dart';

/// A type of permission which can be granted for accessing a digital
/// document.
/// See https://schema.org/DigitalDocumentPermissionType
enum SchemaDigitalDocumentPermissionType implements SchemaSerializable {
  /// Permission to add comments to the document.
  commentPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to read or view the document.
  readPermission('https://schema.org/DigitalDocumentPermissionType'),

  /// Permission to write or edit the document.
  writePermission('https://schema.org/DigitalDocumentPermissionType');

  /// Constructor for [SchemaDigitalDocumentPermissionType]
  const SchemaDigitalDocumentPermissionType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDigitalDocumentPermissionType] to JSON-LD
  @override
  String toJsonLd() => value;
}
