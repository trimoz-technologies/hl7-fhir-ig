CodeSystem: AppointmentAvailabilityStateCodeSystem
Id:         appointment-availability-state
Title: "Appointment Availability State Codes"
Description : "Describes the state of availability of an appointment"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #INVALID
    "Invalid"
* #DELETED
    "Deleted"
* #PENDING
    "Pending"
* #ACTIVE
    "Active"
* #INACTIVE
    "Inactive"