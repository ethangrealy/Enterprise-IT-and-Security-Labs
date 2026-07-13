# Infrastructure Standards

## Purpose

This document defines the standards used throughout the Enterprise IT Homelab.

Establishing consistent naming conventions and administrative practices improves scalability, readability and long-term maintainability.

---

# Naming Standards

## Servers

| Prefix | Purpose | Example |
|---------|---------|---------|
| GT- | Server | GT-DC01 |

---

## Workstations

| Prefix | Purpose | Example |
|---------|---------|---------|
| COMP | Workstation | COMP01 |

---

## Security Groups

| Prefix | Purpose | Example |
|---------|---------|---------|
| SG_ | Security Group | SG_HR |

---

## Organizational Units

Organizational Units are named after business functions.

Examples

```
Departments
HR
Finance
IT
Executive
Workstations
Servers
```

---

# Group Policy Standards

Group Policy Objects are named according to their function.

Examples

```
Corporate Wallpaper
Corporate Desktop Restrictions
Corporate Drive Maps
Deploy 7-Zip
Enable Remote Desktop
Windows Update - Workstations
```

Group Policies should:

- Have one clearly defined purpose.
- Be linked only to the required OU.
- Avoid unnecessary overlap.
- Be documented after implementation.

---

# Security Standards

The environment follows the Principle of Least Privilege.

Rules

- Permissions are assigned to Security Groups.
- Users are never granted permissions directly.
- Administrative privileges are limited to IT administrators.
- Remote Desktop access is controlled using Security Groups.
- NTFS permissions are preferred over individual user permissions.

---

# File Services Standards

- Departmental data is stored centrally.
- Software is deployed from a dedicated software repository.
- Public resources are separated from departmental resources.
- Access is controlled using RBAC.

---

# Documentation Standards

Every completed project includes:

- Business Scenario
- Objective
- Implementation
- Validation
- Lessons Learned
- Screenshots (where applicable)

Incidents should include:

- Symptoms
- Root Cause
- Resolution
- Prevention

Changes should include:

- Business Justification
- Risk Assessment
- Implementation Steps
- Validation
- Rollback Plan

---

# General Administration Principles

The environment is managed using the following principles.

- Keep solutions simple.
- Centralize management where possible.
- Automate repetitive administrative tasks.
- Test all changes before considering them complete.
- Troubleshoot using evidence rather than assumptions.
- Document changes immediately after implementation.

---

# Future Standards

As the homelab expands, these standards will also apply to:

- Windows LAPS
- BitLocker
- PowerShell Automation
- Microsoft 365
- Intune
- Windows Server Services
- Monitoring
