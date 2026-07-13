# CHG-0007 - Deploy Network Drive Mapping

## Change Summary

Deploy network drive mappings to domain users using Group Policy Preferences.

---

## Business Justification

Automatically mapping network drives provides users with immediate access to organisational resources while ensuring a consistent workstation experience.

Centralised drive mapping reduces manual configuration, simplifies onboarding and ensures users always connect to the correct network resources.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Drive mappings fail to apply | Validate Group Policy processing and network connectivity |
| Incorrect drive mappings | Verify UNC paths before deployment |
| User confusion | Apply consistent drive letters across the environment |

Overall Risk:

**Low**

---

## Implementation

Created and deployed Group Policy Preferences to automatically map network drives.

Configured the following mappings.

| Drive | Resource |
|--------|----------|
| D: | Departments |
| P: | Public |
| S: | Software |

Drive mappings were linked to the **Departments** Organisational Unit and deployed to users during logon.

---

## Validation

Successful implementation was confirmed by:

- Drive mappings automatically appeared after user logon.
- Users could access departmental resources.
- Users could access the Public share.
- Users could access the Software repository.
- UNC paths matched the configured drive mappings.

---

## Rollback

If required:

- Remove the Group Policy Preference drive mappings.
- Force a Group Policy update.
- Remove existing mapped drives from affected workstations.

---

## Outcome

Network resources are now presented consistently across all managed workstations, reducing manual configuration and improving the end-user experience.

```
Departments (D:)
Public (P:)
Software (S:)
```

---

## Lessons Learned

During implementation, drive mappings failed to deploy despite the Group Policy Object applying successfully.

### Root Cause

Windows processed user Group Policy before the workstation had fully initialised the network connection.

### Resolution

Enabled the following Group Policy setting:

```
Computer Configuration
→ Policies
→ Administrative Templates
→ System
→ Logon
→ Always wait for the network at computer startup and logon
```

This forced synchronous Group Policy processing during user logon, allowing the drive mappings to deploy successfully.

This issue reinforced the importance of reviewing Group Policy processing behaviour rather than focusing solely on share or NTFS permissions when troubleshooting mapped drive issues.
