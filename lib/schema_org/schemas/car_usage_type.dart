import 'package:meta_seo/schema_org/schemas.dart';

/// A value indicating a special usage of a car, e.g. commercial rental,
/// driving school, or as a taxi.
/// See https://schema.org/CarUsageType
enum SchemaCarUsageType implements SchemaSerializable {
  /// Indicates the usage of the vehicle for driving school.
  drivingSchoolVehicleUsage('https://schema.org/CarUsageType'),

  /// Indicates the usage of the vehicle as a rental car.
  rentalVehicleUsage('https://schema.org/CarUsageType'),

  /// Indicates the usage of the car as a taxi.
  taxiVehicleUsage('https://schema.org/CarUsageType');

  /// Constructor for [SchemaCarUsageType]
  const SchemaCarUsageType(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaCarUsageType] to JSON-LD
  @override
  String toJsonLd() => value;
}
