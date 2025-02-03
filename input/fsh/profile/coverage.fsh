Profile: CoverageProfile
Id: coverage
Parent: Coverage
Title: "Coverage"
Description : "This is an coverage that aligns with Clic Sante's systems"
* ^experimental = true

* implicitRules 0..0
* modifierExtension 0..0

* extension contains CoverageNam named coverageNam 0..1
* extension[coverageNam] ^short = "The nam of the patient"

* extension contains CoverageNamSequentialNumber named coverageNamSequentialNumber 0..1
* extension[coverageNamSequentialNumber] ^short = "The nam sequential number of the patient"
