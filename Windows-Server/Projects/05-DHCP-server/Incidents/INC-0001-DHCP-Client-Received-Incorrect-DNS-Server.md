# INC-0001 – DHCP Client Received Incorrect DNS Server

## Incident Summary

COMP01 received a valid DHCP lease, but the lease was issued by the wrong DHCP server.

As a result, the workstation received incorrect DNS settings and the wrong DNS suffix for the `homelab.local` domain.

---

## Impact

The client had network connectivity but was not receiving the correct Active Directory DNS configuration.

This could prevent the workstation from reliably resolving internal domain resources such as:

- Domain Controllers
- Internal hostnames
- Active Directory services
- Group Policy resources

---

## Symptoms

The initial `ipconfig /all` output on COMP01 showed:

```text
DHCP Server . . . . . . . . . : 192.168.5.4
DNS Servers . . . . . . . . . : 192.168.5.2
Connection-specific DNS Suffix: localdomain
```

Expected values were:

```text
DHCP Server . . . . . . . . . : 192.168.5.129
DNS Servers . . . . . . . . . : 192.168.5.128
Connection-specific DNS Suffix: homelab.local
```

---

## Investigation

The following checks were completed:

- Confirmed the DHCP Server role was installed on GT-DHCP01.
- Confirmed GT-DHCP01 was authorised in Active Directory.
- Confirmed the DHCP scope was active.
- Confirmed scope options were configured.
- Reviewed COMP01 network configuration using `ipconfig /all`.

The client was receiving DHCP information from another DHCP service instead of GT-DHCP01.

---

## Root Cause

VMware's built-in DHCP service was still enabled on the lab virtual network.

This caused COMP01 to receive a lease from VMware DHCP rather than the Windows DHCP Server.

---

## Resolution

Disabled VMware DHCP for the lab virtual network while keeping NAT enabled for internet access.

After disabling VMware DHCP, COMP01 was able to obtain a lease from GT-DHCP01.

---

## Validation

Ran the following commands on COMP01:

```cmd
ipconfig /release
ipconfig /renew
ipconfig /all
```

Confirmed the corrected configuration:

```text
IPv4 Address . . . . . . . . . : 192.168.5.150
DHCP Server . . . . . . . . . : 192.168.5.129
DNS Servers . . . . . . . . . : 192.168.5.128
Connection-specific DNS Suffix: homelab.local
Default Gateway . . . . . . . : 192.168.5.2
```

---

## Lessons Learned

A valid IP address does not always mean the correct DHCP server issued the lease.

When troubleshooting DHCP, always confirm:

- DHCP Server
- DNS Server
- Default Gateway
- DNS suffix
- Lease source

This incident reinforced the importance of checking the full DHCP lease information rather than only confirming that the client has an IP address.
