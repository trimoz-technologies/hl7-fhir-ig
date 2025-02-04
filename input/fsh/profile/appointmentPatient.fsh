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

* extension contains PatientPhoneExtension named phoneExtension 0..1
* extension[phoneExtension] ^short = "The patient's phone extension"

* extension contains PatientOccupation named occupation 0..1
* extension[occupation] ^short = "The patient's occupation"

* extension contains PatientUnknownMother named unknownMother 0..1
* extension[unknownMother] ^short = "The patient's unknown mother information"

* extension contains PatientUnknownFather named unknownFather 0..1
* extension[unknownFather] ^short = "The patient's unknown father information"

* extension contains PatientProfileNumber named profileNumber 0..1
* extension[profileNumber] ^short = "The patient's unique identifier number"

* extension contains PatientSchoolName named schoolName 0..1
* extension[schoolName] ^short = "The name of the school associated with the patient"

* extension contains PatientCommPhoneOnly named commPhoneOnly 0..1
* extension[commPhoneOnly] ^short = "Indicates if communication is restricted to phone only"

* extension contains PatientSchoolClass named schoolClass 0..1
* extension[schoolClass] ^short = "The class or grade level associated with the profile"
