CodeSystem: AppointmentStateCodeSystem
Id: appointment-state
Title: "Appointment State codes"
Description : "Describes the state (status) of an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #TAKEN
    "Taken"
* #PENDING
    "Pending"
* #AWAITING_CONFIRMATION
    "Awaiting confirmation"
* #CONFIRMED
    "Confirmed"
* #LATE
    "Late"
