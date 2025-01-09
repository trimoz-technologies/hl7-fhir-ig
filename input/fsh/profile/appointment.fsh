Profile: AppointmentProfile
Id: appointment-profile
Parent: Appointment
Title: "Appointment"
Description : "This is an appointment that aligns with Clic Sante's systems"

* id 1..1
* status 1..1
* status from AppointmentStateValueSet
  * ^short = "taken | pending | awaiting-confirmation | confirmed | late"
* participant 1..*
* participant.actor only Reference(AppointmentPatientProfile or RelatedPersonProfile)
* participant.status from ClientStateValueSet
  * ^short = "absent | cancelled-admin | cancelled-public | late | not-eligible | present | sample-received | undefined"
