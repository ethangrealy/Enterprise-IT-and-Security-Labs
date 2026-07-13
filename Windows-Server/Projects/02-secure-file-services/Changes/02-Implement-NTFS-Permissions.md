# CHG-0006 - Implement NTFS Permissions

## Change Summary

Implement NTFS permissions using Active Directory Security Groups to secure departmental data.

---

## Business Justification

Departmental information contains business-sensitive data that must only be accessible by authorised staff.

Using Security Groups simplifies permission management while supporting organisational growth.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Incorrect permissions | Validate effective access using test accounts |
| Users receive excessive access | Apply the Principle of Least Privilege |
| Permission inheritance issues | Review NTFS inheritance before deployment |

Overall Risk:

**Low**

---

## Implementation

Configured NTFS permissions for departmental folders.

Permissions were assigned to Security Groups rather than individual users.

Examples included:

- SG_HR
- SG_Finance
- SG_HR_Managers
- SG_IT

HR Managers were granted read access to Finance resources while standard HR staff remained restricted.

---

## Validation

Successful implementation was confirmed by:

- HR users could only access HR resources.
- Finance users could access Finance resources.
- HR Managers inherited Finance read access.
- Unauthorised access attempts were denied.

---

## Rollback

If required:

- Remove custom NTFS permissions.
- Restore inherited permissions.
- Restore folder ACLs from backup.

---

## Outcome

A scalable permission model was implemented using Security Groups and NTFS permissions, reducing administrative effort while improving security.
