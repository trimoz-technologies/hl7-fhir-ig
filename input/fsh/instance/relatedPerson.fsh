Instance: ExampleRelatedMother
InstanceOf: RelatedPersonProfile
Title: "Example Related Person (Mother)"
Description: "An instance of a related person who is a mother."
Usage: #example

* id = "b091622d-2b03-4715-84ba-a2565e588a13"

* patient
  * reference = "Patient/65455b44-591e-420a-a34a-1e0d48e50b44"

* name[0]
  * given[0] = "Marise"
  * family = "Moe"

* relationship = $v3RoleCode#MTH

* extension[relatedPersonOccupation] = ExampleRelatedPersonOccupationExtension
