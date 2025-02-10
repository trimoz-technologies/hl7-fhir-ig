CodeSystem: AppointmentFollowUpStateCodeSystem
Id: appointment-follow-up-state
Title: "Appointment Follow Up State Codes"
Description : "Describes the follow up state of an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #reached
    "Reached"
* #not_reached
    "Not Reached"
* #no_action_taken
    "No Action Taken"
