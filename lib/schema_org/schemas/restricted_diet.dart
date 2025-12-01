import 'package:meta_seo/schema_org/schemas.dart';

/// A diet restricted to certain foods or preparations for cultural,
/// religious, health or lifestyle reasons.
/// See https://schema.org/RestrictedDiet
enum SchemaRestrictedDiet implements SchemaSerializable {
  /// A diet appropriate for people with diabetes.
  diabeticDiet('https://schema.org/RestrictedDiet'),

  /// A diet exclusive of gluten.
  glutenFreeDiet('https://schema.org/RestrictedDiet'),

  /// A diet conforming to Islamic dietary practices.
  halalDiet('https://schema.org/RestrictedDiet'),

  /// A diet conforming to Hindu dietary practices, in particular,
  /// beef-free.
  hinduDiet('https://schema.org/RestrictedDiet'),

  /// A diet conforming to Jewish dietary practices.
  kosherDiet('https://schema.org/RestrictedDiet'),

  /// A diet focused on reduced calorie intake.
  lowCalorieDiet('https://schema.org/RestrictedDiet'),

  /// A diet focused on reduced fat and cholesterol intake.
  lowFatDiet('https://schema.org/RestrictedDiet'),

  /// A diet appropriate for people with lactose intolerance.
  lowLactoseDiet('https://schema.org/RestrictedDiet'),

  /// A diet focused on reduced sodium intake.
  lowSaltDiet('https://schema.org/RestrictedDiet'),

  /// A diet exclusive of all animal products.
  veganDiet('https://schema.org/RestrictedDiet'),

  /// A diet exclusive of animal meat.
  vegetarianDiet('https://schema.org/RestrictedDiet');

  /// Constructor for [SchemaRestrictedDiet]
  const SchemaRestrictedDiet(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaRestrictedDiet] to JSON-LD
  @override
  String toJsonLd() => value;
}
