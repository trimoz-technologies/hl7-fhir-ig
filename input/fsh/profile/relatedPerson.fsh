Profile: RelatedPersonProfile
Id: related-person
Parent: RelatedPerson
Title: "Related Person"
Description: "A constrained RelatedPerson resource to represent specific familial relationships, including spouse, mother, father and emergency contact."
* ^experimental = true

* id 1..1
* meta 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
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
  * ^short = "FTH | MTH | SPS | C"
* relationship from PatientRelationshipTypeValueSet (required)
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* telecom 0..1
* communication 0..0

* extension contains RelatedPersonOccupation named relatedPersonOccupation 0..1
* extension[relatedPersonOccupation] ^short = "The occupation of the related person"
