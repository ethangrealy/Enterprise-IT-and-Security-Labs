# CHG-0002 – Configure DHCP Scope and Options

## Change Summary

Configure a DHCP scope and scope options to provide IP addressing, gateway and DNS configuration to domain-joined clients.

---

## Objectives

- Create a DHCP scope.
- Configure lease allocation.
- Configure gateway assignment.
- Configure DNS assignment.
- Configure DNS domain suffix.

---

## Implementation

Created the following DHCP scope:

| Setting | Value |
|--------|-------|
| Scope Name | Homelab Client Scope |
| Start IP | 192.168.5.150 |
| End IP | 192.168.5.250 |
| Subnet Mask | 255.255.255.0 |
| Lease Duration | 8 days |

Configured DHCP options:

| Option | Purpose | Value |
|-------|---------|-------|
| 003 Router | Default Gateway | 192.168.5.2 |
| 006 DNS Servers | DNS Server | 192.168.5.128 |
| 015 DNS Domain Name | DNS Suffix | homelab.local |

---

## Validation

Validated on COMP01 using:

```cmd
ipconfig /release
ipconfig /renew
ipconfig /all
