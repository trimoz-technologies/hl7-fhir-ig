Extension: AppointmentSource
Id: appointment-source
Title: "Availability Source"
Description: "An extension to represent which platform was use to take the appointment."
Context: Appointment
* ^experimental = true

* value[x] only code
* value[x] from AppointmentSourceValueSet (required)
