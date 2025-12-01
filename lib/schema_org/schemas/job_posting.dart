import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A listing that describes a job opening in a certain organization.
/// See https://schema.org/JobPosting
class SchemaJobPosting implements SchemaSerializable {
  /// This should not be used for citizenship or work visa requirements.
  SchemaAdministrativeArea? applicantLocationRequirements;

  /// Contact details for further information relevant to this job posting.
  SchemaContactPoint? applicationContact;

  /// The base salary of the job or of an employee in an EmployeeRole.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification],
  /// [int]
  dynamic baseSalary;

  /// Description of benefits associated with the job.
  String? benefits;

  /// Publication date of an online listing.
  ///
  /// Supported types: [String], [String]
  String? datePosted;

  /// Indicates whether an [Schemaurl] that is associated with a
  /// [SchemaJobPosting] enables direct application for the job, via the
  /// posting website. A job posting is considered to have directApply of
  /// [SchemaTrue] if an application process for the specified job can be
  /// directly initiated via the url(s) given (noting that e.g. multiple
  /// internet domains might nevertheless be involved at an implementation
  /// level). A value of [SchemaFalse] is appropriate if there is no clear path
  /// to applying directly online for the specified job, navigating directly
  /// from the JobPosting url(s) supplied.
  bool? directApply;

  /// Educational background needed for the position or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic educationRequirements;

  /// The legal requirements such as citizenship, visa and other documentation
  /// required for an applicant to this job.
  String? eligibilityToWorkRequirement;

  /// A description of the employer, career opportunities and work environment
  /// for this position.
  String? employerOverview;

  /// Type of employment (e.g. full-time, part-time, contract, temporary,
  /// seasonal, internship).
  String? employmentType;

  /// Indicates the department, unit and/or facility where the employee reports
  /// and/or in which the job is to be performed.
  SchemaOrganization? employmentUnit;

  /// An estimated salary for a job posting or occupation, based on a variety
  /// of variables including, but not limited to industry, job title, and
  /// location. Estimated salaries are often computed by outside organizations
  /// rather than the hiring organization, who may not have committed to the
  /// estimated value.
  ///
  /// Supported types: [SchemaMonetaryAmount],
  /// [SchemaMonetaryAmountDistribution], [int]
  dynamic estimatedSalary;

  /// Indicates whether a [SchemaJobPosting] will accept experience (as
  /// indicated by [SchemaOccupationalExperienceRequirements]) in place of its
  /// formal educational qualifications (as indicated by
  /// [SchemaeducationRequirements]). If true, indicates that satisfying one of
  /// these requirements is sufficient.
  bool? experienceInPlaceOfEducation;

  /// Description of skills and experience needed for the position or
  /// Occupation.
  ///
  /// Supported types: [SchemaOccupationalExperienceRequirements], [String]
  dynamic experienceRequirements;

  /// Organization or Person offering the job position.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic hiringOrganization;

  /// Description of bonus and commission compensation aspects of the job.
  String? incentiveCompensation;

  /// Description of bonus and commission compensation aspects of the job.
  String? incentives;

  /// The industry associated with the job position.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic industry;

  /// Description of benefits associated with the job.
  String? jobBenefits;

  /// An indicator as to whether a position is available for an immediate
  /// start.
  bool? jobImmediateStart;

  /// A (typically single) geographic location associated with the job
  /// position.
  SchemaPlace? jobLocation;

  /// A description of the job location (e.g. TELECOMMUTE for telecommute
  /// jobs).
  String? jobLocationType;

  /// The date on which a successful applicant for this job would be expected
  /// to start work. Choose a specific date in the future or use the
  /// jobImmediateStart property to indicate the position is to be filled as
  /// soon as possible.
  ///
  /// Supported types: [String], [String]
  String? jobStartDate;

  /// for historical reasons, any textual label and formal code provided as a
  /// literal may be assumed to be from O*NET-SOC.
  ///
  /// Supported types: [SchemaCategoryCode], [String]
  dynamic occupationalCategory;

  /// A description of the types of physical activity associated with the job.
  /// Defined terms such as those in O*net may be used, but note that there is
  /// no way to specify the level of ability as well as its nature when using a
  /// defined term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic physicalRequirement;

  /// Specific qualifications required for this role or Occupation.
  ///
  /// Supported types: [SchemaEducationalOccupationalCredential], [String]
  dynamic qualifications;

  /// The Occupation for the JobPosting.
  SchemaOccupation? relevantOccupation;

  /// Responsibilities associated with this role or Occupation.
  String? responsibilities;

  /// //en.wikipedia.org/wiki/ISO_4217)) used for the main salary information
  /// in this job posting or for this employee.
  String? salaryCurrency;

  /// A description of any security clearance requirements of the job.
  ///
  /// Supported types: [String], [String]
  String? securityClearanceRequirement;

  /// A description of any sensory requirements and levels necessary to
  /// function on the job, including hearing and vision. Defined terms such as
  /// those in O*net may be used, but note that there is no way to specify the
  /// level of ability as well as its nature when using a defined term.
  ///
  /// Supported types: [SchemaDefinedTerm], [String], [String]
  dynamic sensoryRequirement;

  /// A statement of knowledge, skill, ability, task or any other assertion
  /// expressing a competency that is desired or required to fulfill this role
  /// or to work in this occupation.
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic skills;

  /// Any special commitments associated with this job posting. Valid entries
  /// include VeteranCommit, MilitarySpouseCommit, etc.
  String? specialCommitments;

  /// The title of the job.
  String? title;

  /// The number of positions open for this job posting. Use a positive
  /// integer. Do not use if the number of positions is unclear or not known.
  int? totalJobOpenings;

  /// The date after when the item is not valid. For example the end of an
  /// offer, salary period, or a period of opening hours.
  ///
  /// Supported types: [String], [String]
  String? validThrough;

  /// The typical working hours for this job (e.g. 1st shift, night shift,
  /// 8am-5pm).
  String? workHours;

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

  /// Create a new instance of [SchemaJobPosting]
  SchemaJobPosting({
    this.applicantLocationRequirements,
    this.applicationContact,
    this.baseSalary,
    this.benefits,
    this.datePosted,
    this.directApply,
    this.educationRequirements,
    this.eligibilityToWorkRequirement,
    this.employerOverview,
    this.employmentType,
    this.employmentUnit,
    this.estimatedSalary,
    this.experienceInPlaceOfEducation,
    this.experienceRequirements,
    this.hiringOrganization,
    this.incentiveCompensation,
    this.incentives,
    this.industry,
    this.jobBenefits,
    this.jobImmediateStart,
    this.jobLocation,
    this.jobLocationType,
    this.jobStartDate,
    this.occupationalCategory,
    this.physicalRequirement,
    this.qualifications,
    this.relevantOccupation,
    this.responsibilities,
    this.salaryCurrency,
    this.securityClearanceRequirement,
    this.sensoryRequirement,
    this.skills,
    this.specialCommitments,
    this.title,
    this.totalJobOpenings,
    this.validThrough,
    this.workHours,
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

  /// Serialize [SchemaJobPosting] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'JobPosting',
        'applicantLocationRequirements': convertToJsonLd(
            applicantLocationRequirements, [SchemaAdministrativeArea]),
        'applicationContact':
            convertToJsonLd(applicationContact, [SchemaContactPoint]),
        'baseSalary': convertToJsonLd(
            baseSalary, [SchemaMonetaryAmount, SchemaPriceSpecification, int]),
        'benefits': convertToJsonLd(benefits, [String]),
        'datePosted': convertToJsonLd(datePosted, [String, String]),
        'directApply': convertToJsonLd(directApply, [bool]),
        'educationRequirements': convertToJsonLd(educationRequirements,
            [SchemaEducationalOccupationalCredential, String]),
        'eligibilityToWorkRequirement':
            convertToJsonLd(eligibilityToWorkRequirement, [String]),
        'employerOverview': convertToJsonLd(employerOverview, [String]),
        'employmentType': convertToJsonLd(employmentType, [String]),
        'employmentUnit': convertToJsonLd(employmentUnit, [SchemaOrganization]),
        'estimatedSalary': convertToJsonLd(estimatedSalary,
            [SchemaMonetaryAmount, SchemaMonetaryAmountDistribution, int]),
        'experienceInPlaceOfEducation':
            convertToJsonLd(experienceInPlaceOfEducation, [bool]),
        'experienceRequirements': convertToJsonLd(experienceRequirements,
            [SchemaOccupationalExperienceRequirements, String]),
        'hiringOrganization': convertToJsonLd(
            hiringOrganization, [SchemaOrganization, SchemaPerson]),
        'incentiveCompensation':
            convertToJsonLd(incentiveCompensation, [String]),
        'incentives': convertToJsonLd(incentives, [String]),
        'industry': convertToJsonLd(industry, [SchemaDefinedTerm, String]),
        'jobBenefits': convertToJsonLd(jobBenefits, [String]),
        'jobImmediateStart': convertToJsonLd(jobImmediateStart, [bool]),
        'jobLocation': convertToJsonLd(jobLocation, [SchemaPlace]),
        'jobLocationType': convertToJsonLd(jobLocationType, [String]),
        'jobStartDate': convertToJsonLd(jobStartDate, [String, String]),
        'occupationalCategory':
            convertToJsonLd(occupationalCategory, [SchemaCategoryCode, String]),
        'physicalRequirement': convertToJsonLd(
            physicalRequirement, [SchemaDefinedTerm, String, String]),
        'qualifications': convertToJsonLd(
            qualifications, [SchemaEducationalOccupationalCredential, String]),
        'relevantOccupation':
            convertToJsonLd(relevantOccupation, [SchemaOccupation]),
        'responsibilities': convertToJsonLd(responsibilities, [String]),
        'salaryCurrency': convertToJsonLd(salaryCurrency, [String]),
        'securityClearanceRequirement':
            convertToJsonLd(securityClearanceRequirement, [String, String]),
        'sensoryRequirement': convertToJsonLd(
            sensoryRequirement, [SchemaDefinedTerm, String, String]),
        'skills': convertToJsonLd(skills, [SchemaDefinedTerm, String]),
        'specialCommitments': convertToJsonLd(specialCommitments, [String]),
        'title': convertToJsonLd(title, [String]),
        'totalJobOpenings': convertToJsonLd(totalJobOpenings, [int]),
        'validThrough': convertToJsonLd(validThrough, [String, String]),
        'workHours': convertToJsonLd(workHours, [String]),
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
