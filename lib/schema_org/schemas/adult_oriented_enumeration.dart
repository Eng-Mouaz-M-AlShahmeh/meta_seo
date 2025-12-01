import 'package:meta_seo/schema_org/schemas.dart';

/// Enumeration of considerations that make a product relevant or potentially
/// restricted for adults only.
/// See https://schema.org/AdultOrientedEnumeration
enum SchemaAdultOrientedEnumeration implements SchemaSerializable {
  /// Item contains alcohol or promotes alcohol consumption.
  alcoholConsideration('https://schema.org/AdultOrientedEnumeration'),

  ///
  /// //unece.org/DAM/trans/danger/publi/unrec/rev17/English/02EREv17_Part2.pdf)
  /// defining the 9 classes of dangerous goods such as explosives, gases,
  /// flammables, and more.
  dangerousGoodConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// Item is a pharmaceutical (e.g., a prescription or OTC drug) or a
  /// restricted medical device.
  healthcareConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// //www.incb.org/incb/en/narcotic-drugs/Yellowlist/yellow-list.html),
  /// for example marijuana or heroin.
  narcoticConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// A general code for cases where relevance to children is reduced, e.g.
  /// adult education, mortgages, retirement-related products, etc.
  reducedRelevanceForChildrenConsideration(
      'https://schema.org/AdultOrientedEnumeration'),

  /// Erotic videos or magazine, sexual enhancement devices, sex toys.
  sexualContentConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// Item contains tobacco and/or nicotine, for example cigars,
  /// cigarettes, chewing tobacco, e-cigarettes, or hookahs.
  tobaccoNicotineConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// The item is suitable only for adults, without indicating why. Due to
  /// widespread use of "adult" as a euphemism for "sexual", many such
  /// items are likely suited also for the SexualContentConsideration code.
  unclassifiedAdultConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// Item shows or promotes violence.
  violenceConsideration('https://schema.org/AdultOrientedEnumeration'),

  /// The item is intended to induce bodily harm, for example guns, mace,
  /// combat knives, brass knuckles, nail or other bombs, and spears.
  weaponConsideration('https://schema.org/AdultOrientedEnumeration');

  /// Constructor for [SchemaAdultOrientedEnumeration]
  const SchemaAdultOrientedEnumeration(this.value);

  /// Enum value as a string
  final String value;

  /// Serialize [SchemaAdultOrientedEnumeration] to JSON-LD
  @override
  String toJsonLd() => value;
}
