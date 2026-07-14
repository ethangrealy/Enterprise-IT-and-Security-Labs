# CHG-0003 - Implement Role-Based Access Control (RBAC)

## Change Summary

Implement Role-Based Access Control (RBAC) using Active Directory Security Groups to centralise permission management across the enterprise environment.

---

## Business Justification

Managing permissions through Security Groups improves scalability, consistency and security.

Rather than assigning permissions directly to individual users, permissions are granted to Security Groups representing business roles. Users inherit access by becoming members of the appropriate group.

This approach reduces administrative effort while supporting the Principle of Least Privilege.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Incorrect access assignments | Validate Security Group membership before applying permissions |
| Excessive permissions | Grant only the minimum permissions required |
| Future growth | Design groups around business functions rather than individual users |

Overall Risk:

**Low**

---

## Implementation

Created the following Active Directory Security Groups.

| Security Group | Purpose |
|---------------|---------|
| SG_IT | IT Department access |
| SG_HR | Human Resources access |
| SG_HR_Managers | HR Management and Finance read access |
| SG_Finance | Finance access |
| SG_Remote_Desktop_Users | Remote Desktop access |

Permissions throughout the environment were assigned to Security Groups rather than directly to user accounts.

---

## Validation

Successful implementation was confirmed by:

- Users inherited permissions through Security Group membership.
- Departmental access reflected assigned business roles.
- HR users could not access Finance resources.
- HR Managers successfully accessed Finance resources.
- Remote Desktop permissions were managed using Security Group membership.

---

## Rollback

If required:

- Remove Security Groups.
- Remove Security Group membership from users.
- Reassign permissions as required.

---

## Outcome

The environment now uses a scalable Role-Based Access Control model that simplifies permission management and supports future organisational growth.
