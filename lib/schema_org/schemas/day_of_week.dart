import 'package:meta_seo/schema_org/schemas.dart';

/// //purl.org/goodrelations/v1) were used (for [SchemaMonday],
/// [SchemaTuesday], [SchemaWednesday], [SchemaThursday], [SchemaFriday],
/// [SchemaSaturday], [SchemaSunday] plus a special entry for
/// [SchemaPublicHolidays]); these have now been integrated directly into
/// schema.org.
/// See https://schema.org/DayOfWeek
enum SchemaDayOfWeek implements SchemaSerializable {
  /// The day of the week between Thursday and Saturday.
  friday('https://schema.org/DayOfWeek'),

  /// The day of the week between Sunday and Tuesday.
  monday('https://schema.org/DayOfWeek'),

  /// This stands for any day that is a public holiday; it is a placeholder
  /// for all official public holidays in some particular location. While
  /// not technically a "day of the week", it can be used with
  /// [SchemaOpeningHoursSpecification]. In the context of an opening hours
  /// specification it can be used to indicate opening hours on public
  /// holidays, overriding general opening hours for the day of the week on
  /// which a public holiday occurs.
  publicHolidays('https://schema.org/DayOfWeek'),

  /// The day of the week between Friday and Sunday.
  saturday('https://schema.org/DayOfWeek'),

  /// The day of the week between Saturday and Monday.
  sunday('https://schema.org/DayOfWeek'),

  /// The day of the week between Wednesday and Friday.
  thursday('https://schema.org/DayOfWeek'),

  /// The day of the week between Monday and Wednesday.
  tuesday('https://schema.org/DayOfWeek'),

  /// The day of the week between Tuesday and Thursday.
  wednesday('https://schema.org/DayOfWeek');

  /// Constructor for [SchemaDayOfWeek]
  const SchemaDayOfWeek(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaDayOfWeek] to JSON-LD
  @override
  String toJsonLd() => value;
}
