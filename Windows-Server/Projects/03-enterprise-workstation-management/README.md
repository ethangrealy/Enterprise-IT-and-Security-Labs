# Project 003 - Enterprise Workstation Management

## Overview

This project implements centralized workstation management using Active Directory Group Policy.

The objective was to create a secure, standardized and scalable Windows workstation environment capable of supporting enterprise administration with minimal manual intervention.

---

# Business Scenario

The organisation requires a consistent workstation configuration across all departments.

The IT department must be able to:

- Standardise the user experience.
- Improve workstation security.
- Automate software deployment.
- Enable secure remote administration.
- Reduce manual configuration.

---

# Technologies

- Active Directory
- Group Policy
- Group Policy Preferences
- Windows Firewall
- Remote Desktop
- Software Installation
- Windows Update
- SMB File Services

---

# Implemented Features

## Corporate Branding

- Corporate wallpaper deployment
- Desktop personalisation restrictions

---

## Network Resources

- Automatic drive mapping
- Departmental drive allocation
- Public resource access
- Software repository mapping

---

## Software Deployment

- Centralised deployment of 7-Zip
- MSI deployment through Group Policy
- Startup software installation

---

## Remote Administration

- Remote Desktop enabled through Group Policy
- Windows Firewall configuration
- Remote Desktop Users managed through Active Directory Security Groups

---

## Windows Update

Configured enterprise update management including:

- Scheduled installation
- Active Hours
- Automatic download
- Restart behaviour

---

# Skills Demonstrated

- Group Policy administration
- Group Policy Preferences
- Software deployment
- Windows Firewall
- Enterprise workstation management
- Remote Desktop configuration
- Windows Update management
- Troubleshooting enterprise client environments

---

# Validation

The implementation was validated by confirming:

- Corporate wallpaper applied successfully.
- Desktop restrictions prevented unauthorised changes.
- Network drives mapped automatically.
- 7-Zip installed automatically after restart.
- Remote Desktop access functioned through Security Group membership.
- Windows Update policies applied successfully.

---

# Challenges Encountered

## Group Policy Preferences

Drive mappings initially failed to apply.

### Root Cause

Windows processed user policy before the workstation network connection was fully established.

### Resolution

Enabled:

Always wait for the network at computer startup and logon

This forced synchronous Group Policy processing during logon.

---

## Remote Desktop

Remote Desktop configuration initially failed.

### Root Cause

The Group Policy Object had been created but was not linked to the Workstations Organizational Unit.

### Resolution

Linked the GPO to the Workstations OU and forced a policy refresh.

---

## Software Deployment

Software deployment did not occur immediately after running:

```cmd
gpupdate /force
```

### Root Cause

Computer-assigned MSI packages install during computer startup rather than during a background policy refresh.

### Resolution

Restarted the workstation to allow startup processing to install the managed application.

---

# Business Value

This project demonstrates how enterprise workstation management can be centralized using Active Directory.

Benefits include:

- Reduced manual workstation configuration.
- Consistent user experience.
- Improved security.
- Centralized software deployment.
- Simplified administration.
- Reduced operational overhead.

---

# Lessons Learned

One correctly configured Group Policy can replace hundreds of manual workstation changes.

Enterprise troubleshooting should always begin by validating:

- GPO links
- OU placement
- Security filtering
- Policy processing
- Event Viewer
- gpresult output

Building the environment also reinforced the importance of documenting both successful implementations and the troubleshooting process used to resolve issues.

---

## Evidence

Implementation was validated using:

- Remote Desktop connectivity testing
- Group Policy Results (`gpresult`)
- Successful Group Policy software deployment
- Windows Event Viewer
- Windows Update policy verification

Supporting screenshots are available in the **Screenshots** directory.

