CodeSystem: ClientStateCodeSystem
Id:         client-state
Title:     "Client State Codes"
Description: "Client State Codes from Clic Sante"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #ABSENT
    "Absent"
* #CANCELLED_ADMIN
    "Cancelled (admin)"
* #CANCELLED_PUBLIC
    "Cancelled (public)"
* #LATE
    "Late"
* #NOT_ELIGIBLE
    "Not eligible"
* #PRESENT
    "Present"
* #SAMPLE_RECEIVED
    "Sample received"
* #UNDEFINED
    "Undefined"
