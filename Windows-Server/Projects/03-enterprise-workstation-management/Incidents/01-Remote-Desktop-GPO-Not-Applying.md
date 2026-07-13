# INC-0002 - Remote Desktop GPO Not Applying

## Summary

Remote Desktop configuration failed to apply to the workstation after the Group Policy Object had been created.

---

## Impact

Remote Desktop remained unavailable despite the required configuration existing within the Group Policy Object.

---

## Symptoms

- Remote Desktop remained disabled.
- Firewall rules were not applied.
- The Security Group was not added to the local Remote Desktop Users group.

---

## Investigation

The following checks were completed.

- Reviewed Group Policy configuration.
- Verified Group Policy Preferences.
- Confirmed workstation OU placement.
- Reviewed `gpresult /r`.
- Inspected the Group Policy Scope tab.

---

## Root Cause

The Group Policy Object had been created but had not been linked to the **Workstations** Organisational Unit.

Without a link, the policy was never processed.

---

## Resolution

Linked the Group Policy Object to the **Workstations** Organisational Unit.

Forced a Group Policy refresh and restarted the workstation.

---

## Validation

Validation confirmed:

- Remote Desktop enabled successfully.
- Firewall rules applied.
- Security Group added to the local Remote Desktop Users group.
- Remote Desktop connection established successfully.

---

## Lessons Learned

Creating a Group Policy Object is only part of the deployment process.

Always verify:

- GPO link
- OU placement
- Policy processing

before investigating more complex causes.
