Instance: ExamplePatientFromAppointment
InstanceOf: AppointmentPatientProfile
Title: "Appointment Patient Instance"
Description: "An instance of a patient based on the AppointmentPatientProfile profile."
Usage: #example

* id = "65455b44-591e-420a-a34a-1e0d48e50b44"
* active = true
* birthDate = "1964-04-06"
* gender = #male

* name[0].family = "Cormier"
* name[0].given = "Weldon"
* name[0].text = "Weldon Cormier"
* name[0].use = #official

* name[1].text = "John Cormier"
* name[1].use = #old

* name[2].text = "Weldon Mickael Cormier"

* maritalStatus = $martialStatusCode#S

* extension[commPhoneOnly] = ExamplePatientCommPhoneOnly
* extension[occupation] = ExamplePatientOccupationExtension
* extension[phoneExtension] = ExamplePatientPhoneExtension
* extension[profileNumber] = ExamplePatientProfileNumberExtension
* extension[schoolClass] = ExamplePatientSchoolClassExtension
* extension[schoolName] = ExamplePatientSchoolNameExtension
* extension[unknownFather] = ExamplePatientUnknownFatherExtension
* extension[unknownMother] = ExamplePatientUnknownMotherExtension
