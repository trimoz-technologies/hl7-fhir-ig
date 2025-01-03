Alias: $v3RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

ValueSet: LimitedPatientRelationshipType
Title: "Limited Patient Relationship"
Description: "A ValueSet derived from PatientRelationshipType, limited to 'mother', 'father' and 'spouse'"
* include $v3RoleCode#FTH
* include $v3RoleCode#MTH
* include $v3RoleCode#SPS

Profile: LimitedRelatedPerson
Parent: RelatedPerson
Title: "Limited RelatedPerson"
Description: "A constrained RelatedPerson resource to represent specific familial relationships, including spouse, mother and father"

* id 0..0
* meta 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* identifier 0..0
* active 0..0
* patient 1..1
* name 1..1
  * id 0..0
  * prefix 0..0
  * suffix 0..0
  * period 0..0
  * use 0..0
  * family 1..1
  * given 1..1
* relationship 1..1
  * ^short = "FTH | MTH | SPS"
* relationship from LimitedPatientRelationshipType (required)
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0