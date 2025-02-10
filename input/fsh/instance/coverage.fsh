Instance: ExampleActiveCoverage
InstanceOf: CoverageProfile
Title: "Example Active Coverage"
Description: "An instance of an active coverage from the RAMQ."
Usage: #example

* payor
  * display = "RAMQ"

* beneficiary
  * reference = "Patient/65455b44-591e-420a-a34a-1e0d48e50b44"

* status = $financialResourceStatus#active

* extension[coverageNam] = ExampleCoverageNamExtension
* extension[coverageNamSequentialNumber] = ExampleCoverageNamSequentialNumberExtension
