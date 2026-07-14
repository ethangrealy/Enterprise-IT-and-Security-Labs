# CHG-0002 - Create Enterprise Organisational Unit Structure

## Change Summary

Create an enterprise Organisational Unit (OU) structure to logically separate users, computers and administrative objects.

---

## Business Justification

A structured Active Directory environment improves administration, simplifies Group Policy deployment and provides a scalable foundation for future growth.

The OU structure separates business functions while allowing Group Policy to be targeted to specific organisational areas.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Incorrect GPO application | Validate OU placement before linking Group Policy |
| Administrative complexity | Follow consistent naming conventions |
| Future scalability | Design OUs around administration rather than individual users |

Overall Risk:

**Low**

---

## Implementation

Created the following Organisational Units:

```
homelab.local
│
├── Departments
│   ├── IT
│   ├── HR
│   ├── Finance
│   ├── Executive
│   └── Disabled Users
│
├── Workstations
├── Servers
├── Security Groups
└── Service Accounts
```

User accounts, computers and administrative objects were moved into their respective OUs.

---

## Validation

Successful implementation was confirmed by:

- OU hierarchy visible in Active Directory Users and Computers.
- Users correctly located within departmental OUs.
- Workstations located within the Workstations OU.
- Group Policy Objects successfully linked to the intended OUs.

---

## Rollback

If required:

- Remove custom OUs.
- Return objects to their previous locations.
- Restore Active Directory from snapshot if necessary.

---

## Outcome

The Active Directory environment now provides a scalable administrative structure supporting targeted Group Policy deployment and simplified object management.
