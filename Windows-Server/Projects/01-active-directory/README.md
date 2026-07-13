# Project 001 - Enterprise Active Directory

## Overview

This project documents the design and implementation of a Windows Server 2022 Active Directory environment built to simulate a small-to-medium enterprise.

The objective was to establish a secure, scalable directory service capable of supporting centralized authentication, authorization, Group Policy management and enterprise administration.

---

# Business Scenario

An organisation requires a centrally managed identity platform to support multiple departments, workstation management and secure access to shared resources.

The solution must provide:

- Centralised authentication
- Role-Based Access Control (RBAC)
- Organisational Unit (OU) management
- Group Policy deployment
- Enterprise scalability

---

# Environment

| Component | Configuration |
|-----------|---------------|
| Domain | homeab.local |
| Domain Controller | GT-DC01 |
| Client | Windows 11 Pro |
| Server | Windows Server 2022 |
| Hypervisor | VMware Workstation |

---

# Technologies

- Active Directory Domain Services (AD DS)
- DNS
- Organizational Units
- Security Groups
- Group Policy
- Windows Authentication
- Kerberos
- VMware

---

# Implemented Features

- Installed and configured Active Directory Domain Services
- Promoted Windows Server to Domain Controller
- Configured DNS
- Created enterprise OU structure
- Created departmental users
- Implemented Security Groups
- Joined workstation to the domain
- Configured enterprise naming standards

---

# Skills Demonstrated

- Active Directory administration
- User and computer management
- Organizational Unit design
- Group Policy administration
- Security Group implementation
- Windows Server administration
- Enterprise documentation

---

# Validation

The implementation was validated by confirming:

- Successful domain authentication
- Workstation domain join
- User logon using Active Directory credentials
- Security Group membership
- Group Policy application
- DNS resolution

---

# Lessons Learned

## Organizational Units are administrative boundaries

OUs should be designed around administration and Group Policy application rather than simply mirroring an organisation chart.

---

## Evidence

Implementation was validated using:

- Active Directory Users and Computers
- Domain-joined workstation verification
- Computer object validation
- Security Group configuration

Supporting screenshots are available in the **Screenshots** directory.

---

## Security Groups should control permissions

Permissions are assigned to Security Groups rather than directly to users to improve scalability and simplify administration.

---

## Group Policy requires planning

Proper OU placement is critical for successful Group Policy deployment.

---

# Outcome

The completed environment provides a solid enterprise foundation supporting future projects including:

- Secure File Services
- Enterprise Workstation Management
- Software Deployment
- Windows LAPS
- BitLocker
- PowerShell Automation
- Enterprise Security
