# CHG-0003 – Configure DHCP Reservation for COMP01

## Change Summary

Configure a DHCP reservation for COMP01 to ensure the workstation consistently receives the same IPv4 address from GT-DHCP01.

---

## Objectives

- Reserve a consistent DHCP address for COMP01.
- Link the reservation to the workstation MAC address.
- Validate that COMP01 receives the reserved address after lease renewal.

---

## Implementation

Created a DHCP reservation for COMP01.

| Setting | Value |
|--------|-------|
| Reservation Name | COMP01 |
| Reserved IP Address | 192.168.5.150 |
| MAC Address | 000C29C2CD4F |
| Description | Reserved DHCP address for COMP01 |
| Supported Types | Both |

---

## Validation

Validated on COMP01 using:

```cmd
ipconfig /release
ipconfig /renew
ipconfig /all
