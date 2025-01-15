CodeSystem: AppointmentFollowUpStateCodeSystem
Id:         appointment-follow-up-state
Title: "Appointment Follow Up State Codes"
Description : "Describes the follow up state of an appointment"
* ^status = #active
* ^content = #complete
* #REACHED
    "Reached"
* #NOT_REACHED
    "Not Reached"
* #NO_ACTION_TAKEN
    "No Action Taken"
