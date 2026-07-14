# CHG-0001 – Deploy Dedicated DHCP Server

## Change Summary

Deploy a dedicated Windows Server 2022 virtual machine to provide DHCP services for the homelab.local environment.

---

## Objectives

- Provision a dedicated DHCP server.
- Assign a static IPv4 address.
- Join the server to the homelab.local domain.
- Authorise the DHCP server in Active Directory.

---

## Implementation

Configured a new Windows Server 2022 virtual machine:

| Setting | Value |
|--------|-------|
| Hostname | GT-DHCP01 |
| IPv4 Address | 192.168.5.129 |
| Subnet Mask | 255.255.255.0 |
| Default Gateway | 192.168.5.2 |
| DNS Server | 192.168.5.128 |
| Domain | homelab.local |

Installed the DHCP Server role and completed post-installation configuration using domain administrator credentials.

---

## Validation

Validated:

- GT-DHCP01 joined to homelab.local.
- DHCP Server role installed successfully.
- DHCP Server authorised in Active Directory.
- DHCP console displayed IPv4 and IPv6 nodes.

---

## Business Value

Deploying a dedicated DHCP server centralises client IP address management and provides a more realistic enterprise network design than relying on VMware's built-in DHCP service.
