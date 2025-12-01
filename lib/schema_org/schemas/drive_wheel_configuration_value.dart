import 'package:meta_seo/schema_org/schemas.dart';

/// A value indicating which roadwheels will receive torque.
/// See https://schema.org/DriveWheelConfigurationValue
enum SchemaDriveWheelConfigurationValue implements SchemaQualitativeValue {
  /// All-wheel Drive is a transmission layout where the engine drives all
  /// four wheels.
  allWheelDriveConfiguration('https://schema.org/DriveWheelConfigurationValue'),

  /// Four-wheel drive is a transmission layout where the engine primarily
  /// drives two wheels with a part-time four-wheel drive capability.
  fourWheelDriveConfiguration(
      'https://schema.org/DriveWheelConfigurationValue'),

  /// Front-wheel drive is a transmission layout where the engine drives
  /// the front wheels.
  frontWheelDriveConfiguration(
      'https://schema.org/DriveWheelConfigurationValue'),

  /// Real-wheel drive is a transmission layout where the engine drives the
  /// rear wheels.
  rearWheelDriveConfiguration(
      'https://schema.org/DriveWheelConfigurationValue');

  /// Constructor for [SchemaDriveWheelConfigurationValue]
  const SchemaDriveWheelConfigurationValue(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDriveWheelConfigurationValue] to JSON-LD
  String toJsonLd() => value;
}
