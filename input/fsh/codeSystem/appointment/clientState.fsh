CodeSystem: ClientStateCodeSystem
Id: client-state
Title: "Client State Codes"
Description: "Describes the client state (status) of a patient participation on an appointment."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = true

* #absent
    "Absent"
* #cancelled-admin
    "Cancelled (admin)"
* #cancelled-public
    "Cancelled (public)"
* #not-eligible
    "Not eligible"
* #present
    "Present"
* #sample-received
    "Sample received"
* #undefined
    "Undefined"
