Instance: ExampleAppointment
InstanceOf: AppointmentProfile
Title: "Appointment Appointment Instance"
Description: "An instance of an appointment based on the AppointmentProfile profile."
Usage: #example

* id = "1"
* language = urn:ietf:bcp:47#fr-CA
* status = AppointmentStateCodeSystem#TAKEN
* created = "2025-01-01T13:00:00-05:00"
* start = "2025-01-02T07:00:00-05:00"
* end = "2025-01-02T07:10:00-05:00"

* participant[0].actor.reference = "#65455b44-591e-420a-a34a-1e0d48e50b44"
* participant[0].actor.display = "Weldon Cormier"
* participant[0].status = ClientStateCodeSystem#UNDEFINED

* contained[0] = ExamplePatientFromAppointment

* extension[availabilityState] = ExampleAvailabilityStateExtension
