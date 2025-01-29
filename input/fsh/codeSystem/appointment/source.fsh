CodeSystem: AppointmentSourceCodeSystem
Id:         appointment-source
Title: "Appointment Source Codes"
Description : "Describes the origin of an appointment"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #ADMIN
    "Admin" "The appointment was taken by a worker of the establishment using the admin application."
* #PUBLIC
    "Public" "The appointment was taken by a citizen using the public portal."
