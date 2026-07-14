# CHG-0001 – Prepare Active Directory for Windows LAPS

## Change Summary

Prepared the Active Directory environment to support Windows LAPS by extending the schema and granting computer self-permissions.

---

## Objectives

- Extend the Active Directory schema.
- Enable Windows LAPS support.
- Allow workstations to update their own password attributes.

---

## Implementation

Completed the following tasks:

- Extended the Active Directory schema using Windows LAPS PowerShell.
- Granted self-permissions to the Workstations organisational unit.
- Verified schema extension completed successfully.

Commands used:

```powershell
Update-LapsADSchema

Set-LapsADComputerSelfPermission -Identity "OU=Workstations,DC=homelab,DC=local"
```

---

## Validation

Validated:

- Active Directory schema successfully extended.
- Workstations OU granted self-permissions.
- No replication or schema errors observed.

---

## Business Value

Preparing Active Directory allows managed workstations to securely update their local Administrator password without requiring manual administrative intervention.
