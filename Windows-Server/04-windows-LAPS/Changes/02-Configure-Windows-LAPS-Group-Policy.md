# CHG-0002 – Configure Windows LAPS Group Policy

## Change Summary

Configured Windows LAPS through Group Policy to automate password management across domain-joined workstations.

---

## Objectives

- Configure password backup.
- Configure password complexity.
- Configure password rotation.
- Configure password encryption.

---

## Implementation

Created a dedicated Group Policy Object:

Windows LAPS – Workstations

Configured:

- Password backup to Active Directory.
- Password length.
- Password complexity.
- Password age.
- Password encryption.
- Authorised password decryptors.

Applied the policy to the Workstations organisational unit.

---

## Validation

Validated:

- Group Policy successfully applied.
- LAPS policy processed successfully.
- Password written to Active Directory.

---

## Business Value

Automating password management reduces the risk of shared local Administrator credentials while improving security and compliance.
