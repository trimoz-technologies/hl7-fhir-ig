Profile: AppointmentPatientProfile
Id: appointment-patient
Parent: Patient
Title: "Appointment Patient"
Description: "A patient specifically linked to an appointment that aligns with Clic Sante's Systems."
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

* extension contains PatientOccupation named occupation 0..1
* extension[occupation] ^short = "Current patient's occupation (job)"

* extension contains PatientUnknownMother named unknownMother 0..1
* extension[unknownMother] ^short = "Whether the patient's mother is unknown"

* extension contains PatientUnknownFather named unknownFather 0..1
* extension[unknownFather] ^short = "Whether the patient's father is unknown"

* extension contains PatientProfileNumber named profileNumber 0..1
* extension[profileNumber] ^short = "Profile number associated to the patient"

* extension contains PatientSchoolName named schoolName 0..1
* extension[schoolName] ^short = "Name of the school the patient is attending"

* extension contains PatientSchoolClass named schoolClass 0..1
* extension[schoolClass] ^short = "Class the patient is attending when the appointment occurs"

* extension contains PatientCommPhoneOnly named commPhoneOnly 0..1
* extension[commPhoneOnly] ^short = "Whether the patient requested to be contacted by phone only"

* extension contains PatientRegion named region 0..1
* extension[region] ^short = "Region where the patient is located"

* extension contains PatientEmployerName named employerName 0..1
* extension[employerName] ^short = "The patient's current employer"

* extension contains PatientEmployeeNumber named employeeNumber 0..1
* extension[employeeNumber] ^short = "The patient's employee number"

* extension contains PatientEmployeeCategory named employeeCategory 0..1
* extension[employeeCategory] ^short = "The patient's employee category"

* extension contains PatientEmployeeEstablishment named employeeEstablishment 0..1
* extension[employeeEstablishment] ^short = "The patient's employee establishment"

* extension contains PatientEmployeeJobTitle named employeeJobTitle 0..1
* extension[employeeJobTitle] ^short = "The patient's job title as an employee"
