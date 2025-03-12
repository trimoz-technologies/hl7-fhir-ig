CodeSystem: AppointmentStateCodeSystem
Id: appointment-state
Title: "Appointment State codes"
Description : "Describes the state (status) of an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #taken
    "Taken"
* #pending
    "Pending"
* #awaiting_confirmation
    "Awaiting confirmation"
* #confirmed
    "Confirmed"
