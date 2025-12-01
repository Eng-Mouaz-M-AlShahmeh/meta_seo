import 'package:meta_seo/schema_org/schemas.dart';

/// Categories of physical activity, organized by physiologic classification.
/// See https://schema.org/PhysicalActivityCategory
enum SchemaPhysicalActivityCategory implements SchemaSerializable {
  /// Physical activity of relatively low intensity that depends primarily
  /// on the aerobic energy-generating process; during activity, the
  /// aerobic metabolism uses oxygen to adequately meet energy demands
  /// during exercise.
  aerobicActivity('https://schema.org/PhysicalActivityCategory'),

  /// Physical activity that is of high-intensity which utilizes the
  /// anaerobic metabolism of the body.
  anaerobicActivity('https://schema.org/PhysicalActivityCategory'),

  /// Physical activity that is engaged to help maintain posture and
  /// balance.
  balance('https://schema.org/PhysicalActivityCategory'),

  /// Physical activity that is engaged in to improve joint and muscle
  /// flexibility.
  flexibility('https://schema.org/PhysicalActivityCategory'),

  /// Any physical activity engaged in for recreational purposes. Examples
  /// may include ballroom dancing, roller skating, canoeing, fishing, etc.
  leisureTimeActivity('https://schema.org/PhysicalActivityCategory'),

  /// Any physical activity engaged in for job-related purposes. Examples
  /// may include waiting tables, maid service, carrying a mailbag, picking
  /// fruits or vegetables, construction work, etc.
  occupationalActivity('https://schema.org/PhysicalActivityCategory'),

  /// Physical activity that is engaged in to improve muscle and bone
  /// strength. Also referred to as resistance training.
  strengthTraining('https://schema.org/PhysicalActivityCategory');

  /// Constructor for [SchemaPhysicalActivityCategory]
  const SchemaPhysicalActivityCategory(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaPhysicalActivityCategory] to JSON-LD
  @override
  String toJsonLd() => value;
}
