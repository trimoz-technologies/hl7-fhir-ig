Profile: AppointmentPatientProfile
Id: appointment-patient-profile
Parent: Patient
Title: "Appointment Patient"
Description: "This is a patient for an appointment that aligns with Clic Sante's Systems"

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