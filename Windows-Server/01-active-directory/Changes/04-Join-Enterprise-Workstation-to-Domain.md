# CHG-0004 - Join Enterprise Workstation to Active Directory Domain

## Change Summary

Join the Windows 11 Pro workstation to the Active Directory domain to enable centralised authentication, Group Policy processing and enterprise workstation management.

---

## Business Justification

A domain-joined workstation allows the organisation to centrally manage user authentication, security policies, software deployment and workstation configuration.

Without domain membership, users cannot benefit from enterprise management features such as Group Policy, Security Groups or centralised administration.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Domain join failure | Verify DNS configuration and network connectivity before joining the domain |
| Authentication issues | Validate domain credentials prior to deployment |
| Incorrect computer placement | Move the workstation into the appropriate Organisational Unit after joining the domain |

Overall Risk:

**Low**

---

## Implementation

Completed the following tasks:

- Configured the workstation with the Domain Controller as its preferred DNS server.
- Joined the workstation to the `homelab.local` domain.
- Restarted the workstation.
- Verified successful domain membership.
- Moved the workstation object into the **Workstations** Organisational Unit.

---

## Validation

Successful implementation was confirmed by:

- Workstation successfully authenticated against Active Directory.
- Users could sign in using domain credentials.
- Computer object appeared in Active Directory.
- Group Policy processed successfully.
- Domain resources were accessible.

---

## Rollback

If required:

- Remove the workstation from the domain.
- Return the workstation to a workgroup.
- Restore the virtual machine snapshot if necessary.

---

## Outcome

The workstation became centrally managed through Active Directory and provided the foundation for Group Policy deployment, software installation and enterprise workstation administration.
