Instance: ExamplePatientFromAppointment
InstanceOf: AppointmentPatientProfile
Title: "Example Appointment Patient"
Description: "An instance of a patient contained inside an appointment."
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

* extension[occupation] = ExamplePatientOccupationExtension
* extension[unknownMother] = ExamplePatientUnknownMotherExtension
* extension[unknownFather] = ExamplePatientUnknownFatherExtension
* extension[profileNumber] = ExamplePatientProfileNumberExtension
* extension[schoolName] = ExamplePatientSchoolNameExtension
* extension[schoolClass] = ExamplePatientSchoolClassExtension
* extension[commPhoneOnly] = ExamplePatientCommPhoneOnlyExtension
* extension[region] = ExamplePatientRegionExtension
* extension[employerName] = ExamplePatientEmployerNameExtension
* extension[employeeNumber] = ExamplePatientEmployeeNumberExtension
* extension[employeeCategory] = ExamplePatientEmployeeCategoryExtension
* extension[employeeEstablishment] = ExamplePatientEmployeeEstablishmentExtension
* extension[employeeJobTitle] = ExamplePatientEmployeeJobTitleExtension
