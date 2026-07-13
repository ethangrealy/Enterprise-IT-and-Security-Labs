# Group Policy Inventory

## Overview

This document tracks all Group Policy Objects (GPOs) implemented within the homelab environment.

---

## Active GPOs

| GPO Name | Linked OU | Type | Purpose | Status |
|----------|-----------|------|---------|--------|
| Default Domain Policy | homelab.local | Computer | Domain password and account lockout policies | ✅ Active |
| Corporate Wallpaper | Departments | User | Deploy corporate wallpaper to all users | ✅ Active |
| Corporate Desktop Restrictions | Departments | User | Prevent users changing wallpaper and desktop appearance | ✅ Active |
| Corporate Drive Maps | Departments | User (Preferences) | Automatically map departmental network drives | ✅ Active |
| Enable Remote Desktop | Workstations | Computer | Enable RDP and configure workstation firewall | ✅ Active |
| Deploy 7-Zip | Workstations | Computer | Deploy 7-Zip automatically during startup | ✅ Active |
| Windows Update - Workstations | Workstations | Computer | Configure Windows Update behaviour and maintenance window | ✅ Active |

---

# Enterprise Design Principles

The following principles are used throughout the environment.

- Separate User and Computer policies where appropriate.
- Link GPOs only to the OUs that require them.
- Use Security Groups for access control instead of assigning permissions directly to users.
- Use Group Policy Preferences for user configuration such as mapped drives.
- Test every GPO using a dedicated workstation before production deployment.

---

# Troubleshooting Process

When troubleshooting Group Policy:

1. Confirm the GPO is linked to the correct OU.
2. Confirm the object (user/computer) resides within that OU.
3. Run:

```cmd
gpupdate /force
```

4. Verify policy application:

```cmd
gpresult /r
```

5. Review Event Viewer:

```
Applications and Services Logs
→ Microsoft
→ Windows
→ GroupPolicy
→ Operational
```

6. Validate the expected configuration has been applied.

---

# Lessons Learned

## Drive Mapping

Group Policy Preferences for Drive Maps required the policy:

```
Always wait for the network at computer startup and logon
```

Without this setting, mapped drives failed to apply because Windows processed user policy before the network was fully initialized.

## Remote Desktop

Creating a GPO alone is insufficient.

A GPO must also be linked to the appropriate OU before it can apply.

## Software Deployment

Computer-assigned MSI packages install during computer startup rather than immediately after running:

```cmd
gpupdate /force
```

A restart is required before managed software is installed.
