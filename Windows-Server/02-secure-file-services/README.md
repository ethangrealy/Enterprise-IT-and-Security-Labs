# Project 002 - Secure File Services

## Overview

This project implements a centralized Windows File Server using SMB shares, NTFS permissions and Role-Based Access Control (RBAC).

Access to departmental data is controlled through Active Directory Security Groups, providing a scalable and secure enterprise file sharing solution.

---

# Business Scenario

The organisation requires a secure file server capable of providing departmental access while preventing unauthorised users from viewing sensitive information.

The solution must:

- Centralise business data
- Restrict access by department
- Scale as new employees join
- Simplify permission management
- Support automatic drive mapping

---

# Technologies

- SMB File Sharing
- NTFS Permissions
- Share Permissions
- Active Directory
- Security Groups
- Group Policy Preferences
- Windows File Server

---

# Implemented Features

- Created enterprise file shares
- Configured NTFS permissions
- Configured Share permissions
- Implemented RBAC using Security Groups
- Created departmental folders
- Configured Public and Software repositories
- Automatically mapped drives using Group Policy

---

# Security Model

Permissions are assigned to Security Groups rather than individual users.

Example

```
Sarah Parker
        │
        ▼
SG_HR
        │
        ▼
HR Folder
```

Management access

```
Peter Leeman
        │
        ▼
SG_HR_Managers
        │
        ▼
Finance Folder
```

---

# Skills Demonstrated

- Windows File Services
- NTFS Permissions
- Share Permissions
- RBAC
- Security Group administration
- Group Policy Preferences
- Enterprise troubleshooting

---

# Validation

The implementation was validated by confirming:

- HR users could access HR resources.
- Finance users could access Finance resources.
- HR Managers inherited Finance read access.
- Public resources were available to all authenticated users.
- Departmental drives mapped automatically after logon.

---

# Challenges Encountered

## Drive Mapping

Mapped drives initially failed to appear.

### Root Cause

Windows processed user policy before the workstation had fully initialized the network connection.

### Resolution

Enabled:

```
Always wait for the network at computer startup and logon
```

After enabling synchronous Group Policy processing, mapped drives applied successfully during user logon.

---

# Lessons Learned

Share permissions and NTFS permissions work together to determine a user's effective access.

Using Security Groups instead of assigning permissions directly to users creates a scalable and maintainable access model.

Enterprise troubleshooting should always begin by validating:

- Security Group membership
- GPO application
- Share permissions
- NTFS permissions
- Event Viewer

---

## Evidence

Implementation was validated using:

- SMB share configuration
- NTFS permission verification
- Successful Group Policy drive mapping
- Functional testing from domain user accounts

Supporting screenshots are available in the **Screenshots** directory.

