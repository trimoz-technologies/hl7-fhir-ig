This identifier represents a scanned request for a [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) that you will typically find on appointments where a scanned request file has been uploaded.

It's an unusual identifier used to point to an endpoint on Clic Santé's API where the scanned request (pdf) is retrievable.  
After receiving a [DocumentReference](https://hl7.org/fhir/R4/documentreference.html) with this identifier, you can call the endpoint contained in the system field to get the file and it's content.

| Field    | Description                                | Scheme                                                                       |
|:---------|:-------------------------------------------|:-----------------------------------------------------------------------------|
| `system` | Contains the endpoint related to the file. | `https://api3.clicsante.ca/v3/appointments/<organization id>/scannedRequest` |
| `value`  | Contains the file name.                    | `<name>.pdf`                                                                 |

### Example
```json
{
  "identifier": [
    {
      "system": "https://api3.clicsante.ca/v3/appointments/1/scannedRequest",
      "value": "document-test.pdf"
    }
  ]
}
```
