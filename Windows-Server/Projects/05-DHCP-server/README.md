# Project 005 – DHCP Server

## Overview

This project implements a dedicated Windows DHCP Server within the homelab.local Active Directory environment.

The objective was to move DHCP responsibility away from VMware's built-in DHCP service and configure a domain-authorised Windows DHCP Server to provide controlled IP address assignment, DNS configuration and gateway settings for domain-joined clients.

---

# Environment

| Component | Configuration |
|----------|---------------|
| Domain | homelab.local |
| Domain Controller | GT-DC01 |
| DHCP Server | GT-DHCP01 |
| Client Workstation | COMP01 |
| Network | 192.168.5.0/24 |

---

# Changes

| ID | Description |
|----|-------------|
| CHG-0001 | Deploy Dedicated DHCP Server |
| CHG-0002 | Configure DHCP Scope and Options |
| CHG-0003 | Configure DHCP Reservation for COMP01 |

---

# Incidents

| ID | Description |
|----|-------------|
| INC-0001 | DHCP Client Received Incorrect DNS Server |

---

# Implemented Features

- Dedicated Windows DHCP Server
- Active Directory DHCP authorisation
- DHCP scope creation
- DHCP scope options
- DHCP client leasing
- DHCP reservation
- DHCP troubleshooting
- VMware DHCP conflict resolution

---

# Skills Demonstrated

- Windows Server administration
- DHCP Server configuration
- DHCP scope management
- DHCP reservations
- DHCP options
- Network troubleshooting
- Active Directory-integrated infrastructure services
- Client IP configuration testing

---

# Outcome

Successfully implemented a dedicated Windows DHCP Server for the homelab environment.

COMP01 now receives its IPv4 address, gateway, DNS server and domain suffix from GT-DHCP01 rather than VMware DHCP.
