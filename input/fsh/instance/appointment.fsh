Instance: ExampleAppointment
InstanceOf: AppointmentProfile
Title: "Example Appointment"
Description: "An instance of an appointment."
Usage: #example

* id = "1"
* meta
  * extension[timezone] = ExampleTimezoneExtension
* language = urn:ietf:bcp:47#fr-CA
* status = AppointmentStateCodeSystem#taken
* created = "2025-01-01T13:00:00-05:00"
* start = "2025-01-02T07:00:00-05:00"
* end = "2025-01-02T07:10:00-05:00"

* participant[0].actor.reference = "#65455b44-591e-420a-a34a-1e0d48e50b44"
* participant[0].actor.display = "Weldon Cormier"
* participant[0].status = ClientStateCodeSystem#undefined
* participant[0].extension[clientStateModified] = ExampleClientStateModifiedExtension

* contained[+] = ExamplePatientFromAppointment
// * contained[+] = ExampleActiveCoverage
// * contained[+] = ExampleRelatedMother

* extension[availabilityState] = ExampleAvailabilityStateExtension
* extension[statusModified] = ExampleAppointmentStatusExtension
* extension[group] = ExampleAppointmentGroupExtension
* extension[createdBy] = ExampleCreatedByExtension
* extension[followUpState] = ExampleAppointmentFollowUpStateExtension
* extension[followUpStateModified] = ExampleAppointmentFollowUpStateModifiedExtension
* extension[source] = ExampleAppointmentSourceExtension
* extension[isReminderSent] = ExampleAppointmentReminderSentExtension
* extension[isRelaunchSent] = ExampleAppointmentRelaunchSentExtension
* extension[isDistanceHidden] = ExampleAppointmentDistanceHiddenExtension
* extension[resident] = ExampleAppointmentResidentExtension
