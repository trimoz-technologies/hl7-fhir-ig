Instance: ExampleActiveCoverage
InstanceOf: CoverageProfile
Title: "Example Active Coverage"
Description: "An instance of an active coverage with a nam and a nam sequential number."
Usage: #example

* payor
  * reference = "#RAMQ"

* beneficiary
  * reference = "Patient/65455b44-591e-420a-a34a-1e0d48e50b44"

* status = $financialResourceStatus#active

* extension[coverageNam] = ExampleCoverageNamExtension
* extension[coverageNamSequentialNumber] = ExampleCoverageNamSequentialNumberExtension

* contained[0] = ExampleOrganizationRamq
