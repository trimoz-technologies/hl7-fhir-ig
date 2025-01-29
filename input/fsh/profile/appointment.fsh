Profile: AppointmentProfile
Id: appointment
Parent: Appointment
Title: "Appointment"
Description : "This is an appointment that aligns with Clic Sante's systems"
* ^experimental = true

* implicitRules 0..0
* modifierExtension 0..0

* id 1..1
* language 1..1
* meta 0..1
  * extension contains $tzExtension named timezone 0..1
  * extension[timezone] ^short = "The timezone of all datetime present in the appointment"
* status 1..1
* status from AppointmentStateValueSet
  * ^short = "taken | pending | awaiting-confirmation | confirmed | late"
* created 1..1
* start 1..1
* end 1..1

// TODO: maybe we should add identifier slices?

* participant 1..*
  * modifierExtension 0..0
  * actor only Reference(AppointmentPatientProfile or RelatedPersonProfile)
  * status from ClientStateValueSet
    * ^short = "absent | cancelled-admin | cancelled-public | late | not-eligible | present | sample-received | undefined"
  * extension contains ClientStateModified named clientStateModified 0..1
  * extension[clientStateModified] ^short = "When the status was last modified"

* extension contains AppointmentAvailabilityState named availabilityState 0..1
* extension[availabilityState] ^short = "invalid | deleted | pending | active | inactive"

* extension contains AppointmentStatusModified named statusModified 0..1
* extension[statusModified] ^short = "When the status of the appointment was last modified"

* extension contains AppointmentGroup named group 0..1
* extension[group]  ^short = "UUID of the group to which the appointment belongs"

* extension contains CreatedBy named createdBy 0..1
* extension[createdBy] ^short = "ID of the user who created the appointment"

* extension contains AppointmentFollowUpState named followUpState 0..1
* extension[followUpState] ^short = "reached | not_reached | no_action_taken"

* extension contains AppointmentFollowUpStateModified named followUpStateModified 0..1
* extension[followUpStateModified] ^short = "When the follow up state was last modified"

* extension contains AppointmentSource named source 0..1
* extension[source] ^short = "admin | public"

* extension contains AppointmentReminderSent named isReminderSent 0..1
* extension[isReminderSent] ^short = "Whether the reminder message has been sent"

* extension contains AppointmentRelaunchSent named isRelaunchSent 0..1
* extension[isRelaunchSent] ^short = "Whether the relaunch message has been sent"

* extension contains AppointmentDistanceHidden named isDistanceHidden 0..1
* extension[isDistanceHidden] ^short = "Whether the distance should be hidden"

* extension contains AppointmentResident named resident 0..1
* extension[resident] ^short = "The resident associated with the appointment"
