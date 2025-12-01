import 'package:meta_seo/schema_org/src/utils.dart';
import 'package:meta_seo/schema_org/schemas.dart';

/// A patient is any person recipient of health care services.
/// See https://schema.org/Patient
class SchemaPatient implements SchemaSerializable {
  /// One or more alternative conditions considered in the differential
  /// diagnosis process as output of a diagnosis process.
  SchemaMedicalCondition? diagnosis;

  /// Specifying a drug or medicine used in a medication procedure.
  SchemaDrug? drug;

  /// Specifying the health condition(s) of a patient, medical study, or other
  /// target audience.
  SchemaMedicalCondition? healthCondition;

  /// An additional name for a Person, can be used for a middle name.
  String? additionalName;

  /// Physical address of the item.
  ///
  /// Supported types: [SchemaPostalAddress], [String]
  dynamic address;

  /// An organization that this person is affiliated with. For example, a
  /// school/university, a club, or a team.
  SchemaOrganization? affiliation;

  /// The number of completed interactions for this entity, in a particular
  /// role (the 'agent'), in a particular action (indicated in the statistic),
  /// and in a particular context (i.e. interactionService).
  SchemaInteractionCounter? agentInteractionStatistic;

  /// An organization that the person is an alumni of.
  ///
  /// Supported types: [SchemaEducationalOrganization], [SchemaOrganization]
  dynamic alumniOf;

  /// An award won by or for this item.
  String? award;

  /// Awards won by or for this item.
  String? awards;

  /// Date of birth.
  String? birthDate;

  /// The place where the person was born.
  SchemaPlace? birthPlace;

  /// The brand(s) associated with a product or service, or the brand(s)
  /// maintained by an organization or business person.
  ///
  /// Supported types: [SchemaBrand], [SchemaOrganization]
  dynamic brand;

  /// //en.wikipedia.org/wiki/Call_sign), as used in broadcasting and radio
  /// communications to identify people, radio and TV stations, or vehicles.
  String? callSign;

  /// A child of the person.
  SchemaPerson? children;

  /// A colleague of the person.
  ///
  /// Supported types: [SchemaPerson], [String]
  dynamic colleague;

  /// A colleague of the person.
  SchemaPerson? colleagues;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoint;

  /// A contact point for a person or organization.
  SchemaContactPoint? contactPoints;

  /// Date of death.
  String? deathDate;

  /// The place where the person died.
  SchemaPlace? deathPlace;

  /// The Dun & Bradstreet DUNS number for identifying an organization or
  /// business person.
  String? duns;

  /// Email address.
  String? email;

  /// Family name. In the U.S., the last name of a Person.
  String? familyName;

  /// The fax number.
  String? faxNumber;

  /// The most generic uni-directional social relation.
  SchemaPerson? follows;

  /// A person or organization that supports (sponsors) something through some
  /// kind of financial contribution.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic funder;

  /// A [SchemaGrant] that directly or indirectly provide funding or
  /// sponsorship for this item. See also [SchemaownershipFundingInfo].
  SchemaGrant? funding;

  /// //schema.org/Female may be used, text strings are also acceptable for
  /// people who do not identify as a binary gender. The [Schemagender]
  /// property can also be used in an extended sense to cover e.g. the gender
  /// of sports teams. As with the gender of individuals, we do not try to
  /// enumerate all possibilities. A mixed-gender [SchemaSportsTeam] can be
  /// indicated with a text value of "Mixed".
  ///
  /// Supported types: [SchemaGenderType], [String]
  dynamic gender;

  /// Given name. In the U.S., the first name of a Person.
  String? givenName;

  /// //www.gs1.org/gln) (GLN, sometimes also referred to as International
  /// Location Number or ILN) of the respective organization, person, or place.
  /// The GLN is a 13-digit number used to identify parties and physical
  /// locations.
  String? globalLocationNumber;

  /// Certification information about a product, organization, service, place,
  /// or person.
  SchemaCertification? hasCertification;

  /// A credential awarded to the Person or Organization.
  SchemaEducationalOccupationalCredential? hasCredential;

  /// The Person's occupation. For past professions, use Role for expressing
  /// dates.
  SchemaOccupation? hasOccupation;

  /// Indicates an OfferCatalog listing for this Organization, Person, or
  /// Service.
  SchemaOfferCatalog? hasOfferCatalog;

  /// Points-of-Sales operated by the organization or person.
  SchemaPlace? hasPOS;

  /// The height of the item.
  ///
  /// Supported types: [SchemaDistance], [SchemaQuantitativeValue]
  dynamic height;

  /// A contact location for a person's residence.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaPlace]
  dynamic homeLocation;

  /// An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
  String? honorificPrefix;

  /// An honorific suffix following a Person's name such as M.D./PhD/MSCSW.
  String? honorificSuffix;

  /// The number of interactions for the CreativeWork using the WebSite or
  /// SoftwareApplication. The most specific child type of InteractionCounter
  /// should be used.
  SchemaInteractionCounter? interactionStatistic;

  /// The International Standard of Industrial Classification of All Economic
  /// Activities (ISIC), Revision 4 code for a particular organization,
  /// business person, or place.
  String? isicV4;

  /// The job title of the person (for example, Financial Manager).
  ///
  /// Supported types: [SchemaDefinedTerm], [String]
  dynamic jobTitle;

  /// The most generic bi-directional social/work relation.
  SchemaPerson? knows;

  /// Of a [SchemaPerson], and less typically of an [SchemaOrganization], to
  /// indicate a topic that is known about - suggesting possible expertise but
  /// not implying it. We do not distinguish skill levels here, or relate this
  /// to educational content, events, objectives or [SchemaJobPosting]
  /// descriptions.
  ///
  /// Supported types: [String], [String], [SchemaThing]
  dynamic knowsAbout;

  /// //tools.ietf.org/html/bcp47).
  ///
  /// Supported types: [SchemaLanguage], [String]
  dynamic knowsLanguage;

  /// A pointer to products or services offered by the organization or person.
  SchemaOffer? makesOffer;

  /// An Organization (or ProgramMembership) to which this Person or
  /// Organization belongs.
  ///
  /// Supported types: [SchemaOrganization], [SchemaProgramMembership]
  dynamic memberOf;

  /// The North American Industry Classification System (NAICS) code for a
  /// particular organization or business person.
  String? naics;

  /// Nationality of the person.
  SchemaCountry? nationality;

  /// The total financial value of the person as calculated by subtracting
  /// assets from liabilities.
  ///
  /// Supported types: [SchemaMonetaryAmount], [SchemaPriceSpecification]
  dynamic netWorth;

  /// Products owned by the organization or person.
  ///
  /// Supported types: [SchemaOwnershipInfo], [SchemaProduct]
  dynamic owns;

  /// A parent of this person.
  SchemaPerson? parent;

  /// A parents of the person.
  SchemaPerson? parents;

  /// Event that this person is a performer or participant in.
  SchemaEvent? performerIn;

  /// The publishingPrinciples property indicates (typically via [SchemaURL]) a
  /// document describing the editorial principles of an [SchemaOrganization]
  /// (or individual, e.g. a [SchemaPerson] writing a blog) that relate to
  /// their activities as a publisher, e.g. ethics or diversity policies. When
  /// applied to a [SchemaCreativeWork] (e.g. [SchemaNewsArticle]) the
  /// principles are those of the party primarily responsible for the creation
  /// of the [SchemaCreativeWork].
  ///
  /// While such policies are most typically expressed in natural language,
  /// sometimes related information (e.g. indicating a [Schemafunder]) can be
  /// expressed using schema.org terminology.
  ///
  /// Supported types: [SchemaCreativeWork], [String]
  dynamic publishingPrinciples;

  /// The most generic familial relation.
  SchemaPerson? relatedTo;

  /// A pointer to products or services sought by the organization or person
  /// (demand).
  SchemaDemand? seeks;

  /// A sibling of the person.
  SchemaPerson? sibling;

  /// A sibling of the person.
  SchemaPerson? siblings;

  /// A person or organization that supports a thing through a pledge, promise,
  /// or financial contribution. E.g. a sponsor of a Medical Study or a
  /// corporate sponsor of an event.
  ///
  /// Supported types: [SchemaOrganization], [SchemaPerson]
  dynamic sponsor;

  /// The person's spouse.
  SchemaPerson? spouse;

  /// The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US
  /// or the CIF/NIF in Spain.
  String? taxID;

  /// The telephone number.
  String? telephone;

  /// The Value-added Tax ID of the organization or person.
  String? vatID;

  /// The weight of the product or person.
  SchemaQuantitativeValue? weight;

  /// A contact location for a person's place of work.
  ///
  /// Supported types: [SchemaContactPoint], [SchemaPlace]
  dynamic workLocation;

  /// Organizations that the person works for.
  SchemaOrganization? worksFor;

  /// The target group associated with a given audience (e.g. veterans, car
  /// owners, musicians, etc.).
  String? audienceType;

  /// The geographic area associated with the audience.
  SchemaAdministrativeArea? geographicArea;

  /// Audiences defined by a person's gender.
  String? requiredGender;

  /// Audiences defined by a person's maximum age.
  int? requiredMaxAge;

  /// Audiences defined by a person's minimum age.
  int? requiredMinAge;

  /// The age or age range for the intended audience or person, for example
  /// 3-12 months for infants, 1-5 years for toddlers.
  SchemaQuantitativeValue? suggestedAge;

  /// The suggested gender of the intended person or audience, for example
  /// "male", "female", or "unisex".
  ///
  /// Supported types: [SchemaGenderType], [String]
  dynamic suggestedGender;

  /// Maximum recommended age in years for the audience or user.
  int? suggestedMaxAge;

  /// A suggested range of body measurements for the intended audience or
  /// person, for example inseam between 32 and 34 inches or height between 170
  /// and 190 cm. Typically found on a size chart for wearable products.
  SchemaQuantitativeValue? suggestedMeasurement;

  /// Minimum recommended age in years for the audience or user.
  int? suggestedMinAge;

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

  /// Create a new instance of [SchemaPatient]
  SchemaPatient({
    this.diagnosis,
    this.drug,
    this.healthCondition,
    this.additionalName,
    this.address,
    this.affiliation,
    this.agentInteractionStatistic,
    this.alumniOf,
    this.award,
    this.awards,
    this.birthDate,
    this.birthPlace,
    this.brand,
    this.callSign,
    this.children,
    this.colleague,
    this.colleagues,
    this.contactPoint,
    this.contactPoints,
    this.deathDate,
    this.deathPlace,
    this.duns,
    this.email,
    this.familyName,
    this.faxNumber,
    this.follows,
    this.funder,
    this.funding,
    this.gender,
    this.givenName,
    this.globalLocationNumber,
    this.hasCertification,
    this.hasCredential,
    this.hasOccupation,
    this.hasOfferCatalog,
    this.hasPOS,
    this.height,
    this.homeLocation,
    this.honorificPrefix,
    this.honorificSuffix,
    this.interactionStatistic,
    this.isicV4,
    this.jobTitle,
    this.knows,
    this.knowsAbout,
    this.knowsLanguage,
    this.makesOffer,
    this.memberOf,
    this.naics,
    this.nationality,
    this.netWorth,
    this.owns,
    this.parent,
    this.parents,
    this.performerIn,
    this.publishingPrinciples,
    this.relatedTo,
    this.seeks,
    this.sibling,
    this.siblings,
    this.sponsor,
    this.spouse,
    this.taxID,
    this.telephone,
    this.vatID,
    this.weight,
    this.workLocation,
    this.worksFor,
    this.audienceType,
    this.geographicArea,
    this.requiredGender,
    this.requiredMaxAge,
    this.requiredMinAge,
    this.suggestedAge,
    this.suggestedGender,
    this.suggestedMaxAge,
    this.suggestedMeasurement,
    this.suggestedMinAge,
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

  /// Serialize [SchemaPatient] to JSON-LD
  @override
  Map<String, dynamic> toJsonLd() => removeEmpty({
        '@context': 'https://schema.org',
        '@type': 'Patient',
        'diagnosis': convertToJsonLd(diagnosis, [SchemaMedicalCondition]),
        'drug': convertToJsonLd(drug, [SchemaDrug]),
        'healthCondition':
            convertToJsonLd(healthCondition, [SchemaMedicalCondition]),
        'additionalName': convertToJsonLd(additionalName, [String]),
        'address': convertToJsonLd(address, [SchemaPostalAddress, String]),
        'affiliation': convertToJsonLd(affiliation, [SchemaOrganization]),
        'agentInteractionStatistic': convertToJsonLd(
            agentInteractionStatistic, [SchemaInteractionCounter]),
        'alumniOf': convertToJsonLd(
            alumniOf, [SchemaEducationalOrganization, SchemaOrganization]),
        'award': convertToJsonLd(award, [String]),
        'awards': convertToJsonLd(awards, [String]),
        'birthDate': convertToJsonLd(birthDate, [String]),
        'birthPlace': convertToJsonLd(birthPlace, [SchemaPlace]),
        'brand': convertToJsonLd(brand, [SchemaBrand, SchemaOrganization]),
        'callSign': convertToJsonLd(callSign, [String]),
        'children': convertToJsonLd(children, [SchemaPerson]),
        'colleague': convertToJsonLd(colleague, [SchemaPerson, String]),
        'colleagues': convertToJsonLd(colleagues, [SchemaPerson]),
        'contactPoint': convertToJsonLd(contactPoint, [SchemaContactPoint]),
        'contactPoints': convertToJsonLd(contactPoints, [SchemaContactPoint]),
        'deathDate': convertToJsonLd(deathDate, [String]),
        'deathPlace': convertToJsonLd(deathPlace, [SchemaPlace]),
        'duns': convertToJsonLd(duns, [String]),
        'email': convertToJsonLd(email, [String]),
        'familyName': convertToJsonLd(familyName, [String]),
        'faxNumber': convertToJsonLd(faxNumber, [String]),
        'follows': convertToJsonLd(follows, [SchemaPerson]),
        'funder': convertToJsonLd(funder, [SchemaOrganization, SchemaPerson]),
        'funding': convertToJsonLd(funding, [SchemaGrant]),
        'gender': convertToJsonLd(gender, [SchemaGenderType, String]),
        'givenName': convertToJsonLd(givenName, [String]),
        'globalLocationNumber': convertToJsonLd(globalLocationNumber, [String]),
        'hasCertification':
            convertToJsonLd(hasCertification, [SchemaCertification]),
        'hasCredential': convertToJsonLd(
            hasCredential, [SchemaEducationalOccupationalCredential]),
        'hasOccupation': convertToJsonLd(hasOccupation, [SchemaOccupation]),
        'hasOfferCatalog':
            convertToJsonLd(hasOfferCatalog, [SchemaOfferCatalog]),
        'hasPOS': convertToJsonLd(hasPOS, [SchemaPlace]),
        'height':
            convertToJsonLd(height, [SchemaDistance, SchemaQuantitativeValue]),
        'homeLocation':
            convertToJsonLd(homeLocation, [SchemaContactPoint, SchemaPlace]),
        'honorificPrefix': convertToJsonLd(honorificPrefix, [String]),
        'honorificSuffix': convertToJsonLd(honorificSuffix, [String]),
        'interactionStatistic':
            convertToJsonLd(interactionStatistic, [SchemaInteractionCounter]),
        'isicV4': convertToJsonLd(isicV4, [String]),
        'jobTitle': convertToJsonLd(jobTitle, [SchemaDefinedTerm, String]),
        'knows': convertToJsonLd(knows, [SchemaPerson]),
        'knowsAbout':
            convertToJsonLd(knowsAbout, [String, String, SchemaThing]),
        'knowsLanguage':
            convertToJsonLd(knowsLanguage, [SchemaLanguage, String]),
        'makesOffer': convertToJsonLd(makesOffer, [SchemaOffer]),
        'memberOf': convertToJsonLd(
            memberOf, [SchemaOrganization, SchemaProgramMembership]),
        'naics': convertToJsonLd(naics, [String]),
        'nationality': convertToJsonLd(nationality, [SchemaCountry]),
        'netWorth': convertToJsonLd(
            netWorth, [SchemaMonetaryAmount, SchemaPriceSpecification]),
        'owns': convertToJsonLd(owns, [SchemaOwnershipInfo, SchemaProduct]),
        'parent': convertToJsonLd(parent, [SchemaPerson]),
        'parents': convertToJsonLd(parents, [SchemaPerson]),
        'performerIn': convertToJsonLd(performerIn, [SchemaEvent]),
        'publishingPrinciples':
            convertToJsonLd(publishingPrinciples, [SchemaCreativeWork, String]),
        'relatedTo': convertToJsonLd(relatedTo, [SchemaPerson]),
        'seeks': convertToJsonLd(seeks, [SchemaDemand]),
        'sibling': convertToJsonLd(sibling, [SchemaPerson]),
        'siblings': convertToJsonLd(siblings, [SchemaPerson]),
        'sponsor': convertToJsonLd(sponsor, [SchemaOrganization, SchemaPerson]),
        'spouse': convertToJsonLd(spouse, [SchemaPerson]),
        'taxID': convertToJsonLd(taxID, [String]),
        'telephone': convertToJsonLd(telephone, [String]),
        'vatID': convertToJsonLd(vatID, [String]),
        'weight': convertToJsonLd(weight, [SchemaQuantitativeValue]),
        'workLocation':
            convertToJsonLd(workLocation, [SchemaContactPoint, SchemaPlace]),
        'worksFor': convertToJsonLd(worksFor, [SchemaOrganization]),
        'audienceType': convertToJsonLd(audienceType, [String]),
        'geographicArea':
            convertToJsonLd(geographicArea, [SchemaAdministrativeArea]),
        'requiredGender': convertToJsonLd(requiredGender, [String]),
        'requiredMaxAge': convertToJsonLd(requiredMaxAge, [int]),
        'requiredMinAge': convertToJsonLd(requiredMinAge, [int]),
        'suggestedAge':
            convertToJsonLd(suggestedAge, [SchemaQuantitativeValue]),
        'suggestedGender':
            convertToJsonLd(suggestedGender, [SchemaGenderType, String]),
        'suggestedMaxAge': convertToJsonLd(suggestedMaxAge, [int]),
        'suggestedMeasurement':
            convertToJsonLd(suggestedMeasurement, [SchemaQuantitativeValue]),
        'suggestedMinAge': convertToJsonLd(suggestedMinAge, [int]),
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
