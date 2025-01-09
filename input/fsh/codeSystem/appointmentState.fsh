CodeSystem: AppointmentStateCodeSystem
Id:         appointment-state
Title: "Appointment State codes"
Description : "Appointment Status code from Clic sante"
* ^status = #active
* ^content = #complete
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