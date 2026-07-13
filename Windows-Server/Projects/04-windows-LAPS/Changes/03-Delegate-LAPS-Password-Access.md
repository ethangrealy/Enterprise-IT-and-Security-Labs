# CHG-0003 – Delegate Windows LAPS Password Access

## Change Summary

Configured delegated password retrieval using security groups to implement least privilege administration.

---

## Objectives

- Delegate password retrieval.
- Avoid broad Domain Administrator permissions.
- Implement role-based access control.

---

## Implementation

Delegated password read permissions to:

SG_LAPS_Password_Decryptors

Configured:

```powershell
Set-LapsADReadPasswordPermission
```

Configured Windows LAPS authorised password decryptors using Group Policy.

Verified delegated permissions using:

```powershell
Find-LapsADExtendedRights
```

---

## Validation

Confirmed:

- Delegated security group assigned.
- Password decryptors configured.
- Delegated permissions visible within Active Directory.

---

## Business Value

Delegating administrative functions using security groups supports enterprise security best practice while reducing unnecessary privileged access.
