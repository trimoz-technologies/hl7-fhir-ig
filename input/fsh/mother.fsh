Extension: MotherName
Id: mother-name
Title: "Mother's Name"
Description: "An extension to represent the mother's first and last name for a patient."
Context: Patient

* extension contains first-name 0..1 and last-name 0..1
* extension[first-name].value[x] only string
* extension[first-name] ^short = "First name of the mother"
* extension[first-name] ^definition = "The first name of the mother."

* extension[last-name].value[x] only string
* extension[last-name] ^short = "Last name of the mother"
* extension[last-name] ^definition = "The last name of the mother."