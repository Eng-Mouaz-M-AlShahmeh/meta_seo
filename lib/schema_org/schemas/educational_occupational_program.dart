import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A program offered by an institution which determines the learning
/// progress to achieve an outcome, usually a credential like a degree or
/// certificate. This would define a discrete set of opportunities (e.g.,
/// job, courses) that together constitute a program with a clear start, end,
/// set of requirements, and transition to a new occupational opportunity
/// (e.g., a job), or sometimes a higher educational opportunity (e.g., an
/// advanced degree).
/// See https://schema.org/EducationalOccupationalProgram
class SchemaEducationalOccupationalProgram implements SchemaSerializable {
  /// The date at which the program stops collecting applications for the next
  /// enrollment cycle.
  String? applicationDeadline;

  /// The date at which the program begins collecting applications for the next
  /// enrollment cycle.
  String? applicationStartDate;

  /// The day of the week for which these opening hours are valid.
  SchemaDayOfWeek? dayOfWeek;

  /// A description of the qualification, award, certificate, diploma or other
  /// educational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String],
  /// [String]
  dynamic educationalCredentialAwarded;

  /// //ceds.ed.gov/element/001311#Asynchronous ).
  ///
  /// Supported types: [String], [String]
  String? educationalProgramMode;

  /// //en.wikipedia.org/wiki/ISO_8601)).
  ///
  /// Supported types: [String], [String]
  String? endDate;

  /// A financial aid type or program which students may use to pay for tuition
  /// or fees associated with the program.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic financialAidEligible;

  /// A course or class that is one of the learning opportunities that
  /// constitute an educational / occupational program. No information is
  /// implied about whether the course is mandatory or optional; no guarantee
  /// is implied about whether the course will be available to everyone on the
  /// program.
  SchemaCourse? hasCourse;

  /// The maximum number of students who may be enrolled in the program.
  int? maximumEnrollment;

  /// The number of credits or units awarded by a Course or required to
  /// complete an EducationalOccupationalProgram.
  ///
  /// Supported types: [SchemaStructuredValue], [int]
  dynamic numberOfCredits;

  /// for historical reasons, any textual label and formal code provided as a
  /// literal may be assumed to be from O*NET-SOC.
  ///
  /// Supported types: [SchemaCategoryCode], [String]
  dynamic occupationalCategory;

  /// A description of the qualification, award, certificate, diploma or other
  /// occupational credential awarded as a consequence of successful completion
  /// of this course or program.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String],
  /// [String]
  dynamic occupationalCredentialAwarded;

  /// An offer to provide this item&#x2014;for example, an offer to sell a
  /// product, rent the DVD of a movie, perform a service, or give away tickets
  /// to an event. Use [SchemabusinessFunction] to indicate the kind of
  /// transaction offered, i.e. sell, lease, etc. This property can also be
  /// used to describe a [SchemaDemand]. While this property is listed as
  /// expected on a number of common types, it can be used in others. In that
  /// case, using a second type, such as Product or a subtype of Product, can
  /// clarify the nature of the offer.
  ///
  /// Supported types: [SchemaDemand], [SchemaOffer]
  dynamic offers;

  /// Prerequisites for enrolling in the program.
  ///
  /// Supported types: [SchemaAlignmentObject], [SchemaCourse],
  /// [SchemaEducationalOccupationalCredential], [String]
  dynamic programPrerequisites;

  /// The type of educational or occupational program. For example, classroom,
  /// internship, alternance, etc.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic programType;

  /// The service provider, service operator, or service performer; the goods
  /// producer. Another party (a seller) may offer those services or goods on
  /// behalf of the provider. A provider may also serve as the seller.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic provider;

  /// The expected salary upon completing the training.
  SchemaMonetaryAmountDistribution? salaryUponCompletion;

  /// //en.wikipedia.org/wiki/ISO_8601)).
  ///
  /// Supported types: [String], [String]
  String? startDate;

  /// The amount of time in a term as defined by the institution. A term is a
  /// length of time where students take one or more classes. Semesters and
  /// quarters are common units for term.
  SchemaDuration? termDuration;

  /// The number of times terms of study are offered per year. Semesters and
  /// quarters are common units for term. For example, if the student can only
  /// take 2 semesters for the program in one year, then termsPerYear should be
  /// 2.
  int? termsPerYear;

  /// The time of day the program normally runs. For example, "evenings".
  String? timeOfDay;

  /// The expected length of time to complete the program if attending
  /// full-time.
  SchemaDuration? timeToComplete;

  /// The estimated salary earned while in the program.
  SchemaMonetaryAmountDistribution? trainingSalary;

  /// The number of credits or units a full-time student would be expected to
  /// take in 1 term however 'term' is defined by the institution.
  ///
  /// Supported types: [SchemaStructuredValue], [int]
  dynamic typicalCreditsPerTerm;

  /// //schema.org/docs/styleguide.html">style guide</a>.
  ///
  /// Supported types: [String], [String]
  String? additionalType;

  /// An alias for the item.
  String? alternateName;

  /// A description of the item.
  ///
  /// Supported types: [String], [SchemaTextObject]
  dynamic description;

  /// A sub property of description. A short description of the item used to
  /// disambiguate from other, similar items. Information from other properties
  /// (in particular, name) may be necessary for the description to be useful
  /// for disambiguation.
  String? disambiguatingDescription;

  /// The identifier property represents any kind of identifier for any kind of
  /// [SchemaThing], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides
  /// dedicated properties for representing many of these, either as textual
  /// strings or as URL (URI) links. See [background
  /// notes](/docs/datamodel.html#identifierBg) for more details.
  ///
  /// Supported types: [SchemaPropertyValue], [String], [String]
  dynamic identifier;

  /// An image of the item. This can be a [SchemaURL] or a fully described
  /// [SchemaImageObject].
  ///
  /// Supported types: [SchemaImageObject], [String]
  dynamic image;

  /// Indicates a page (or other CreativeWork) for which this thing is the main
  /// entity being described. See [background
  /// notes](/docs/datamodel.html#mainEntityBackground) for details.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic mainEntityOfPage;

  /// The name of the item.
  String? name;

  /// Indicates a potential Action, which describes an idealized action in
  /// which this thing would play an 'object' role.
  SchemaAction? potentialAction;

  /// URL of a reference Web page that unambiguously indicates the item's
  /// identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or
  /// official website.
  String? sameAs;

  /// A CreativeWork or Event about this Thing.
  ///
  /// Supported types: [SchemaCreativeWork], [SchemaEvent]
  dynamic subjectOf;

  /// URL of the item.
  String? url;

  /// Create a new instance of [SchemaEducationalOccupationalProgram]
  SchemaEducationalOccupationalProgram({
    this.applicationDeadline,
    this.applicationStartDate,
    this.dayOfWeek,
    this.educationalCredentialAwarded,
    this.educationalProgramMode,
    this.endDate,
    this.financialAidEligible,
    this.hasCourse,
    this.maximumEnrollment,
    this.numberOfCredits,
    this.occupationalCategory,
    this.occupationalCredentialAwarded,
    this.offers,
    this.programPrerequisites,
    this.programType,
    this.provider,
    this.salaryUponCompletion,
    this.startDate,
    this.termDuration,
    this.termsPerYear,
    this.timeOfDay,
    this.timeToComplete,
    this.trainingSalary,
    this.typicalCreditsPerTerm,
    this.additionalType,
    this.alternateName,
    this.description,
    this.disambiguatingDescription,
    this.identifier,
    this.image,
    this.mainEntityOfPage,
    this.name,
    this.potentialAction,
    this.sameAs,
    this.subjectOf,
    this.url,
  });

  /// Serialize [SchemaEducationalOccupationalProgram] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'EducationalOccupationalProgram',
        'applicationDeadline': convertToJsonLd(applicationDeadline, [String]),
        'applicationStartDate': convertToJsonLd(applicationStartDate, [String]),
        'dayOfWeek': convertToJsonLd(dayOfWeek, [SchemaDayOfWeek]),
        'educationalCredentialAwarded': convertToJsonLd(
            educationalCredentialAwarded,
            [SchemaEducationalOccupationalCredential, String, String]),
        'educationalProgramMode':
            convertToJsonLd(educationalProgramMode, [String, String]),
        'endDate': convertToJsonLd(endDate, [String, String]),
        'financialAidEligible':
            convertToJsonLd(financialAidEligible, [SchemaDefinedTerm, String]),
        'hasCourse': convertToJsonLd(hasCourse, [SchemaCourse]),
        'maximumEnrollment': convertToJsonLd(maximumEnrollment, [int]),
        'numberOfCredits':
            convertToJsonLd(numberOfCredits, [SchemaStructuredValue, int]),
        'occupationalCategory':
            convertToJsonLd(occupationalCategory, [SchemaCategoryCode, String]),
        'occupationalCredentialAwarded': convertToJsonLd(
            occupationalCredentialAwarded,
            [SchemaEducationalOccupationalCredential, String, String]),
        'offers': convertToJsonLd(offers, [SchemaDemand, SchemaOffer]),
        'programPrerequisites': convertToJsonLd(programPrerequisites, [
          SchemaAlignmentObject,
          SchemaCourse,
          SchemaEducationalOccupationalCredential,
          String
        ]),
        'programType':
            convertToJsonLd(programType, [SchemaDefinedTerm, String]),
        'provider':
            convertToJsonLd(provider, [SchemaOrganization, SchemaPerson]),
        'salaryUponCompletion': convertToJsonLd(
            salaryUponCompletion, [SchemaMonetaryAmountDistribution]),
        'startDate': convertToJsonLd(startDate, [String, String]),
        'termDuration': convertToJsonLd(termDuration, [SchemaDuration]),
        'termsPerYear': convertToJsonLd(termsPerYear, [int]),
        'timeOfDay': convertToJsonLd(timeOfDay, [String]),
        'timeToComplete': convertToJsonLd(timeToComplete, [SchemaDuration]),
        'trainingSalary':
            convertToJsonLd(trainingSalary, [SchemaMonetaryAmountDistribution]),
        'typicalCreditsPerTerm': convertToJsonLd(
            typicalCreditsPerTerm, [SchemaStructuredValue, int]),
        'additionalType': convertToJsonLd(additionalType, [String, String]),
        'alternateName': convertToJsonLd(alternateName, [String]),
        'description': convertToJsonLd(description, [String, SchemaTextObject]),
        'disambiguatingDescription':
            convertToJsonLd(disambiguatingDescription, [String]),
        'identifier':
            convertToJsonLd(identifier, [SchemaPropertyValue, String, String]),
        'image': convertToJsonLd(image, [SchemaImageObject, String]),
        'mainEntityOfPage':
            convertToJsonLd(mainEntityOfPage, [SchemaCreativeWork, String]),
        'name': convertToJsonLd(name, [String]),
        'potentialAction': convertToJsonLd(potentialAction, [SchemaAction]),
        'sameAs': convertToJsonLd(sameAs, [String]),
        'subjectOf':
            convertToJsonLd(subjectOf, [SchemaCreativeWork, SchemaEvent]),
        'url': convertToJsonLd(url, [String]),
      });
}
