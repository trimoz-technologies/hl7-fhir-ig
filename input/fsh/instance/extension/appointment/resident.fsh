Instance: ExampleResidentFirstnameInitialExtension
InstanceOf: ResidentFirstnameInitial
Title: "Example Resident Firstname Initial Extension"
Description: "An instance of a resident firstname initial extension."
Usage: #inline

* valueString = "R"

Instance: ExampleResidentLastnameExtension
InstanceOf: ResidentLastname
Title: "Example Resident Lastname Extension"
Description: "An instance of a resident lastname extension."
Usage: #inline

* valueString = "Doe"

Instance: ExampleResidentRoomNumberExtension
InstanceOf: ResidentRoomNumber
Title: "Example Resident Room Number Extension"
Description: "An instance of a resident room number extension."
Usage: #inline

* valueString = "603"

Instance: ExampleResidentBirthdayMonthExtension
InstanceOf: ResidentBirthdayMonth
Title: "Example Resident Birthday Month Extension"
Description: "An instance of a resident birthday month extension."
Usage: #inline

* valueString = "06"

Instance: ExampleResidentContactAlternativeExtension
InstanceOf: ResidentContactAlternative
Title: "Example Resident Contact Alternative Extension"
Description: "An instance of a resident contact alternative extension."
Usage: #inline

* valueString = "Teams"

Instance: ExampleResidentContactAllowZoomExtension
InstanceOf: ResidentContactAllowZoom
Title: "Example Resident Contact Allow Zoom Extension"
Description: "An instance of a resident contact allow zoom extension."
Usage: #inline

* valueBoolean = false

Instance: ExampleResidentMultipleUserExtension
InstanceOf: ResidentMultipleUser
Title: "Example Resident Multiple User Extension"
Description: "An instance of a resident multiple user extension."
Usage: #inline

* valueBoolean = true

Instance: ExampleAppointmentResidentExtension
InstanceOf: AppointmentResident
Title: "Example Appointment Resident Extension"
Description: "An instance of an appointment resident extension."
Usage: #inline

* extension[firstnameInitial] = ExampleResidentFirstnameInitialExtension
* extension[lastname] = ExampleResidentLastnameExtension
* extension[room] = ExampleResidentRoomNumberExtension
* extension[birthdayMonth] = ExampleResidentBirthdayMonthExtension
* extension[contactAlternative] = ExampleResidentContactAlternativeExtension
* extension[allowZoom] = ExampleResidentContactAllowZoomExtension
* extension[multipleUser] = ExampleResidentMultipleUserExtension
