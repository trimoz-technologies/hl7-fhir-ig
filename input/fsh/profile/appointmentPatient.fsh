Profile: AppointmentPatientProfile
Id: appointment-patient
Parent: Patient
Title: "Appointment Patient"
Description: "This is a patient for an appointment that aligns with Clic Sante's Systems"
* ^experimental = true

* name 1..*
* birthDate 1..1
* gender 1..1
* maritalStatus 0..1

* deceased[x] 0..0
* address 0..0
* photo 0..0
* modifierExtension 0..0
* link 0..0
* implicitRules 0..0

* extension contains ProfilePhoneExtension named phoneExtension 0..1
* extension[phoneExtension] ^short = "The profile's phone extension"

* extension contains Occupation named occupation 0..1
* extension[occupation] ^short = "The profile's occupation"

* extension contains UnknownMother named unknownMother 0..1
* extension[unknownMother] ^short = "The profile's unknown mother information"

* extension contains UnknownFather named unknownFather 0..1
* extension[unknownFather] ^short = "The profile's unknown father information"

* extension contains ProfileNumber named profileNumber 0..1
* extension[profileNumber] ^short = "The profile's unique identifier number"

* extension contains SchoolName named schoolName 0..1
* extension[schoolName] ^short = "The name of the school associated with the profile"

* extension contains CommPhoneOnly named commPhoneOnly 0..1
* extension[commPhoneOnly] ^short = "Indicates if communication is restricted to phone only"

* extension contains SchoolClass named schoolClass 0..1
* extension[schoolClass] ^short = "The class or grade level associated with the profile"
