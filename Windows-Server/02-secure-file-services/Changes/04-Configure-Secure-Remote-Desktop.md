# CHG-0009 - Configure Secure Remote Desktop

## Change Summary

Configure Remote Desktop access through Group Policy while controlling access using Active Directory Security Groups.

---

## Business Justification

Remote Desktop enables authorised administrators to remotely manage enterprise workstations without requiring physical access.

Restricting access through Security Groups improves security while simplifying ongoing administration.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Unauthorised remote access | Restrict access using Security Groups |
| Firewall configuration errors | Validate Remote Desktop firewall rules |
| Incorrect policy deployment | Test using a dedicated workstation |

Overall Risk:

**Low**

---

## Implementation

Configured:

- Remote Desktop through Group Policy.
- Windows Firewall Remote Desktop rules.
- Local Remote Desktop Users group using Group Policy Preferences.
- Active Directory Security Group:

```
SG_Remote_Desktop_Users
```

---

## Validation

Successful implementation was confirmed by:

- Remote Desktop enabled on managed workstations.
- Firewall rules configured correctly.
- Security Group successfully added to the local Remote Desktop Users group.
- Remote Desktop connection established using an authorised user account.

---

## Rollback

If required:

- Disable the Group Policy Object.
- Remove Security Group membership.
- Disable Remote Desktop.

---

## Outcome

Remote administration was successfully centralised while maintaining least privilege through Security Group membership.

---

## Lessons Learned

During implementation the Group Policy Object was created but not linked to the **Workstations** Organisational Unit.

Once linked, the policy applied successfully and Remote Desktop access functioned as expected.
