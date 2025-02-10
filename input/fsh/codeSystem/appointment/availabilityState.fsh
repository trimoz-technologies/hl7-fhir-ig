CodeSystem: AppointmentAvailabilityStateCodeSystem
Id: appointment-availability-state
Title: "Appointment Availability State Codes"
Description : "Describes the state of availability of an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #invalid
    "Invalid"
* #deleted
    "Deleted"
* #pending
    "Pending"
* #active
    "Active"
* #inactive
    "Inactive"
