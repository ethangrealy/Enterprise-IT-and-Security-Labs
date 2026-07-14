# Lessons Learned

## DHCP Server Authorisation

In an Active Directory environment, Windows DHCP servers should be authorised before they issue leases.

Authorisation helps prevent unauthorised DHCP servers from assigning incorrect network configuration to domain clients.

---

## DHCP Scope Planning

A DHCP scope should be planned before clients are moved to automatic addressing.

In this project, the client scope was configured as:

| Purpose | Range |
|--------|-------|
| Infrastructure Addresses | 192.168.5.100 – 192.168.5.149 |
| DHCP Client Scope | 192.168.5.150 – 192.168.5.250 |

This prevents DHCP from assigning addresses that should remain reserved for servers and other infrastructure devices.

---

## DHCP Options

DHCP does more than assign an IP address.

It can also provide important client network settings, including:

- Default gateway
- DNS server
- DNS suffix
- Lease duration

Incorrect DHCP options can cause domain access issues even when the client has a valid IP address.

---

## DNS and Active Directory

Domain-joined clients should use internal DNS.

In this lab, COMP01 must use GT-DC01 as its DNS server because GT-DC01 hosts DNS for the `homelab.local` domain.

Using an external DNS server or the wrong DHCP-provided DNS server can prevent clients from resolving internal Active Directory resources.

---

## DHCP Conflicts

Multiple DHCP services on the same virtual network can cause clients to receive leases from the wrong source.

In this project, VMware DHCP was still enabled and issued a lease to COMP01 before GT-DHCP01 was able to provide the correct configuration.

The issue was resolved by disabling VMware DHCP while keeping NAT enabled for internet access.

---

## DHCP Reservations

DHCP reservations allow specific devices to receive predictable IP addresses while still being centrally managed through DHCP.

COMP01 was configured with a DHCP reservation so it consistently receives:

| Device | Reserved Address |
|--------|------------------|
| COMP01 | 192.168.5.150 |

---

## Troubleshooting Approach

A client having an IP address does not automatically mean DHCP is configured correctly.

When troubleshooting DHCP, the full lease details should be reviewed, including:

- IP address
- Subnet mask
- Default gateway
- DHCP server
- DNS server
- DNS suffix

This project reinforced the importance of checking the DHCP lease source, not just confirming that an address was assigned.
