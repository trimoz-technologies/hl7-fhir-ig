CodeSystem: ClientStateCodeSystem
Id:         client-state
Title:     "Client State Codes"
Description: "Client State Codes from Clic Sante"
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^count = 4
* #PRESENT
    "ClientState Present"
* #CANCELLED
    "ClientState Cancelled"
* #ABSENT
    "ClientState Absent"
* #UNDEFINED
    "ClientState Undefined"
* #NOT_ELIGIBLE
    "ClientState Not Eligible"