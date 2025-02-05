CodeSystem: AppointmentSourceCodeSystem
Id: appointment-source
Title: "Appointment Source Codes"
Description : "Describes the platform used to take an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #admin
    "Admin" "The appointment was taken by a worker of the establishment using the admin application."
* #public
    "Public" "The appointment was taken by a citizen using the public portal."
