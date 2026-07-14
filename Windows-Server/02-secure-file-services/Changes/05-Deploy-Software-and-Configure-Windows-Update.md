# CHG-0010 - Deploy Software and Configure Windows Update

## Change Summary

Deploy enterprise software using Group Policy Software Installation and standardise Windows Update behaviour through Group Policy.

---

## Business Justification

Centralised software deployment ensures consistent application versions across managed workstations while reducing manual effort.

Standardised Windows Update settings improve security and minimise disruption during business hours.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Software deployment failure | Validate MSI package and UNC path |
| Update configuration errors | Test policies on a single workstation |
| User disruption | Configure Active Hours and scheduled installation |

Overall Risk:

**Low**

---

## Implementation

Configured:

- 7-Zip MSI deployment using Group Policy Software Installation.
- Dedicated software repository.
- Scheduled Windows Updates.
- Active Hours.
- Automatic update configuration.

---

## Validation

Successful implementation was confirmed by:

- 7-Zip installed automatically after workstation restart.
- Group Policy applied successfully.
- Windows Update settings reflected the configured policies.
- Software deployment validated through Event Viewer.

---

## Rollback

If required:

- Remove the software deployment package.
- Unlink the Group Policy Object.
- Restore default Windows Update configuration.

---

## Outcome

Enterprise software deployment and Windows Update management were successfully centralised, reducing manual administration while improving consistency across managed workstations.

---

## Lessons Learned

Computer-assigned MSI packages install during computer startup rather than immediately following a background Group Policy refresh.

Reviewing Event Viewer confirmed that software installation had been deferred until the next synchronous startup, explaining the delayed installation behaviour.
