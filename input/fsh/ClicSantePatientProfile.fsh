Profile: AppointmentPatientProfile
Parent: Patient
Id: clicstante-appointment-patient-profile
Title: "Patient of an appointment"
Description: "This is a patient for an appointment that aligns with Clic Sante's Systems"

* active MS // Active is mandatory
* birthDate MS // BirthDate is mandatory
* gender MS // Gender is mandatory

* name 2.. MS // At least one name is mandatory
// * name[0].use = #official (exactly) MS // First occurrence of name must have a use
// * name[0].given MS // First occurrence of name must have at least one given name
// * name[0].family MS // First occurrence of name must have a family name
// * name[0].text MS // First occurrence of name must have text
// * name[1..*]

// * name[1].use MS // Old names must also have a use
// * name[1].use = #old (exactly)
// * name[1].text MS // Old names must also have text

// Examples
Instance: ExamplePatientFromAppointment
InstanceOf: AppointmentPatientProfile
Title: "Weldon Cormier Patient Instance"
Description: "An instance of a patient based on the AppointmentPatientProfile profile."
Usage: #example

* id = "65455b44-591e-420a-a34a-1e0d48e50b44"

* active = true

* birthDate = "1964-04-06"

* gender = #unknown

* name[0].family = "Cormier"
* name[0].given = "Weldon"
* name[0].text = "Weldon Cormier"
* name[0].use = #official

* name[1].text = ""
* name[1].use = #old

* name[2].text = ""