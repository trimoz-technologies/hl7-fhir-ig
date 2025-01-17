Profile: AppointmentPatientProfile
Parent: Patient
Id: appointment-patient
Title: "Appointment Patient"
Description: "This is a patient for an appointment that aligns with Clic Sante's Systems"

* modifierExtension 0..0
* implicitRules 0..0
* link 0..0

* identifier 0..*
* birthDate 0..1
* gender 0..1
* name 0..*

* telecom 0..*
  * system 1..1
  * value 1..1
  * use 0..0
  * rank 0..0
  * period 0..0

* deceased[x] 0..0

* address 0..*
  * use 0..0
  * type 0..0
  * text 0..0
  * line 0..1
  * city 0..1
  * district 0..0
  * state 0..0
  * postalCode 1..1
  * country 0..0
  * period 0..0

* maritalStatus 0..1
* photo 0..0
