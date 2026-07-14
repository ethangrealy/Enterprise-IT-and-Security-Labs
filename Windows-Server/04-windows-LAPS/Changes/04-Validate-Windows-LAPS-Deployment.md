# CHG-0004 – Validate Windows LAPS Deployment

## Change Summary

Validated the complete Windows LAPS deployment by generating, storing and retrieving managed local Administrator passwords.

---

## Objectives

- Confirm policy application.
- Confirm password generation.
- Confirm Active Directory storage.
- Validate delegated retrieval.

---

## Validation Activities

Performed the following:

- Forced Group Policy update.
- Triggered Windows LAPS policy processing.
- Retrieved password using Domain Administrator account.
- Retrieved password using delegated support account.

Commands used:

```powershell
Invoke-LapsPolicyProcessing

Get-LapsADPassword -Identity COMP01 -AsPlainText
```

---

## Validation Results

Confirmed:

- Password generated successfully.
- Password stored within Active Directory.
- Password encrypted successfully.
- Password retrieved successfully.
- Delegated user successfully decrypted password.

---

## Outcome

Windows LAPS deployment fully operational using delegated administration and enterprise security principles.
