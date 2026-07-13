# Organizational Unit (OU) Structure

## Overview

The Active Directory environment is organised using Organizational Units (OUs) to separate users, computers and administrative functions.

This structure allows Group Policy Objects (GPOs) to be targeted to specific areas of the business while maintaining a scalable and manageable directory.

---

# OU Structure

```
homelab.local
│
├── Departments
│   ├── IT
│   ├── HR
│   ├── Finance
│   ├── Executive
│   └── Disabled Users
│
├── Workstations
│
├── Servers
│
├── Security Groups
│
└── Service Accounts
```

---

# Design Principles

The OU hierarchy was designed using the following principles.

- Separate users from computers.
- Apply Group Policy at the highest practical level.
- Organise users by business function.
- Keep administrative objects separated from production users.
- Support future growth without restructuring the domain.

---

# Group Policy Application

| OU | Typical Policies |
|-----|------------------|
| Departments | Wallpaper, Drive Maps, Desktop Restrictions |
| Workstations | Remote Desktop, Software Deployment, Windows Update |
| Servers | Server-specific administration policies |
| Security Groups | No GPOs applied |
| Service Accounts | No interactive logon policies |

---

# Why OUs Instead of Security Groups?

Organizational Units and Security Groups serve different purposes.

| Organizational Unit | Security Group |
|---------------------|----------------|
| Organises Active Directory objects | Grants permissions |
| Receives Group Policy | Controls access to resources |
| Administrative boundary | Security boundary |

An employee may belong to the **HR OU** while simultaneously being a member of several Security Groups.

Example:

```
Sarah Parker

OU
Departments
└── HR

Security Groups
├── SG_HR
└── SG_Remote_Desktop_Users
```

---

# Lessons Learned

Separating users, computers and security groups simplifies administration and allows Group Policy to be targeted accurately.

A Group Policy Object must be linked to the correct OU before it will apply to users or computers located within that Organizational Unit.
