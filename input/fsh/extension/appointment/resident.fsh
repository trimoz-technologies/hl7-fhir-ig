Extension: ResidentFirstnameInitial
Id: appointment-resident-firstname-initial
Title: "Resident Firstname Initial"
Description: "An extension to represent the resident's firstname initial"
Context: AppointmentResident
* value[x] only string

Extension: ResidentLastname
Id: appointment-resident-lastname
Title: "Resident Lastname"
Description: "An extension to represent the resident's lastname"
Context: AppointmentResident
* value[x] only string

Extension: ResidentRoomNumber
Id: appointment-resident-room
Title: "Resident Room Number"
Description: "An extension to represent the resident's room number"
Context: AppointmentResident
* value[x] only string

Extension: ResidentBirthdayMonth
Id: appointment-resident-birthday-month
Title: "Resident Birthday Month"
Description: "An extension to represent the resident's birthday month"
Context: AppointmentResident
* value[x] only string

Extension: ResidentContactAlternative
Id: appointment-resident-contact-alternative
Title: "Resident Contact Alternative"
Description: "An extension to represent the resident's alternative contact"
Context: AppointmentResident
* value[x] only string

Extension: ResidentContactAllowZoom
Id: appointment-resident-allow-zoom
Title: "Resident Contact Allow Zoom"
Description: "An extension to represent the whether resident is allowed to be contacted via Zoom"
Context: AppointmentResident
* value[x] only boolean

Extension: ResidentMultipleUser
Id: appointment-resident-multiple-user
Title: "Resident Multiple User"
Description: "An extension to represent the whether there is multiple user"
Context: AppointmentResident
* value[x] only boolean

Extension: AppointmentResident
Id: appointment-resident
Title: "Appointment Resident"
Description: "An extension to represent the resident associated to an appointment"
Context: Appointment
* value[x] 0..0

* extension contains ResidentFirstnameInitial named firstnameInitial 0..1
* extension[firstnameInitial] ^short = "The resident's firstname initial"

* extension contains ResidentLastname named lastname 0..1
* extension[lastname] ^short = "The resident's lastname"

* extension contains ResidentRoomNumber named room 0..1
* extension[room] ^short = "The resident's room number"

* extension contains ResidentBirthdayMonth named birthdayMonth 0..1
* extension[birthdayMonth] ^short = "The resident's birthday month"

* extension contains ResidentContactAlternative named contactAlternative 0..1
* extension[contactAlternative] ^short = "The resident's alternative contact"

* extension contains ResidentContactAllowZoom named allowZoom 0..1
* extension[allowZoom] ^short = "Whether the resident allows to be contacted via Zoom"

* extension contains ResidentMultipleUser named multipleUser 0..1
* extension[multipleUser] ^short = "Whether there is multiple user"
