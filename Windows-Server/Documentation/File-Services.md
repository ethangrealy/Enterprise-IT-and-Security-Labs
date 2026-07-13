# File Services

## Overview

The homelab implements a centralized file server using SMB shares and NTFS permissions to provide secure access to departmental resources.

Access is controlled through Active Directory Security Groups using the principle of Role-Based Access Control (RBAC).

---

# File Server

| Server | Role |
|--------|------|
| GT-DC01 | Domain Controller / File Server |

---

# Shared Resources

| Share | Purpose | Access |
|------|---------|--------|
| Departments | Departmental business data | Department Security Groups |
| Public | Shared documents available to all staff | Authenticated Users |
| Software | Software deployment repository | Domain Computers / Authenticated Users |
| Wallpapers | Corporate branding resources | Authenticated Users |

---

# Department Structure

```
Departments
├── HR
├── Finance
├── IT
└── Projects
```

---

# Permission Model

The environment uses two layers of permissions.

## Share Permissions

Share permissions determine whether users can access the shared resource across the network.

Typical configuration:

| Group | Permission |
|------|------------|
| Authenticated Users | Read |
| Administrators | Full Control |

---

## NTFS Permissions

NTFS permissions determine what users can do once they access the folder.

Examples:

| Folder | Security Group | Permission |
|--------|----------------|-----------|
| HR | SG_HR | Modify |
| Finance | SG_Finance | Modify |
| Finance | SG_HR_Managers | Read |
| Public | Authenticated Users | Modify |
| Software | Authenticated Users | Read & Execute |

---

# Role-Based Access Control (RBAC)

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

This allows permissions to scale as new employees join the business.

---

# Drive Mapping

Departmental shares are automatically mapped using Group Policy Preferences.

| Drive | Share |
|------|-------|
| D: | Departments |
| P: | Public |
| S: | Software |

Drive mappings are deployed through User Configuration using Group Policy Preferences.

---

# Authentication Flow

When a user accesses a network share:

1. User authenticates to Active Directory.
2. Kerberos issues an authentication ticket.
3. Security Group membership is evaluated.
4. Share permissions are checked.
5. NTFS permissions are checked.
6. Effective permissions determine access.

Both Share and NTFS permissions must permit access before a user can open the resource.

---

# Troubleshooting Process

When troubleshooting file access:

1. Confirm the user belongs to the correct Security Group.
2. Confirm the Security Group has NTFS permissions.
3. Confirm Share permissions allow access.
4. Verify the mapped drive or UNC path.
5. Run:

```cmd
whoami /groups
```

6. Review:

```cmd
gpresult /r
```

7. Test using the UNC path.

Example

```
\\GT-DC01\Departments
```

---

# Lessons Learned

Mapped drives deployed through Group Policy Preferences required the policy:

```
Always wait for the network at computer startup and logon
```

Without this configuration, Windows processed user policy before the network connection was fully initialized, preventing drive mappings from applying successfully.

Separating Share Permissions from NTFS permissions provides a layered security model that is easier to manage and troubleshoot.
