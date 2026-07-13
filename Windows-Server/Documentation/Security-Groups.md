# Security Groups

## Overview

This document outlines the security groups implemented within the homelab environment and their intended purpose.

The environment follows the principle of **Role-Based Access Control (RBAC)** by assigning permissions to security groups rather than directly to individual users.

---

# Security Groups

| Security Group | Purpose | Typical Members |
|---------------|---------|-----------------|
| SG_IT | IT Department access | IT Administrators |
| SG_HR | Human Resources shared folder access | HR Staff |
| SG_HR_Managers | Additional access to Finance documents | HR Managers |
| SG_Finance | Finance shared folder access | Finance Staff |
| SG_Remote_Desktop_Users | Permission to establish Remote Desktop sessions | Approved Remote Users |

---

# Access Model

Permissions are assigned to Security Groups rather than individual user accounts.

Example:

```
Peter Leeman
        │
        ▼
SG_HR_Managers
        │
        ▼
Finance Folder
        │
        ▼
Read Access
```

This approach:

- Simplifies administration.
- Improves scalability.
- Reduces administrative overhead.
- Supports the Principle of Least Privilege.

---

# Naming Standard

The following naming convention is used throughout the environment.

| Prefix | Description |
|---------|-------------|
| SG_ | Security Group |
| GT- | Server Prefix |
| COMP | Workstation Prefix |

Examples

```
SG_IT
SG_HR
SG_HR_Managers
SG_Remote_Desktop_Users
GT-DC01
COMP01
```

---

# Design Principles

The environment follows these principles.

- Permissions are never assigned directly to users.
- Users inherit permissions through Security Group membership.
- Groups represent business roles rather than individual employees.
- Additional access is granted by adding users to another Security Group rather than modifying NTFS permissions directly.

---

# Lessons Learned

Creating dedicated Security Groups provides a scalable permission model.

When new staff join a department, only Security Group membership needs to be updated rather than modifying NTFS permissions on individual folders.
