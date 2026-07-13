# Project 004 – Windows LAPS (Local Administrator Password Solution)

## Overview

This project implements Microsoft Windows LAPS within the Homelab.local Active Directory environment to provide secure management of local administrator passwords across domain-joined workstations.

Windows LAPS automatically generates unique local administrator passwords for managed devices, securely stores them within Active Directory and rotates them according to Group Policy. Administrative access is delegated using security groups following the Principle of Least Privilege.

---

## Objectives

- Implement Windows LAPS within Active Directory.
- Extend the Active Directory schema.
- Configure Group Policy for password management.
- Delegate password retrieval using role-based access control.
- Validate encrypted password retrieval using a non-Domain Administrator account.

---

## Environment

| Component | Configuration |
|-----------|---------------|
| Domain | homelab.local |
| Domain Controller | GT-DC01 |
| Workstation | COMP01 |
| Management User | peter.leeman |
| Operating System | Windows Server 2022 / Windows 11 |

---

## Technologies

- Active Directory
- Windows LAPS
- Group Policy
- PowerShell
- Active Directory Schema
- Security Groups
- Role-Based Access Control (RBAC)

---

## Implementation Summary

### Active Directory

- Extended Active Directory schema for Windows LAPS.
- Granted Workstations OU self-permissions.
- Configured delegated password read permissions.

### Group Policy

Configured Windows LAPS policy including:

- Backup directory
- Password complexity
- Password length
- Password age
- Password encryption
- Authorised password decryptors

### Validation

Successfully validated:

- Password generation
- Password storage within Active Directory
- Password rotation
- Password retrieval
- Delegated decryption using SG_LAPS_Password_Decryptors

---

## Skills Demonstrated

- Enterprise Windows Administration
- Active Directory
- Group Policy
- PowerShell
- Windows Security
- Windows LAPS
- RBAC
- Least Privilege Administration
- Technical Troubleshooting

---

## Outcome

Successfully deployed Microsoft Windows LAPS using enterprise administration practices while implementing delegated password management using security groups instead of broad Domain Administrator permissions.
