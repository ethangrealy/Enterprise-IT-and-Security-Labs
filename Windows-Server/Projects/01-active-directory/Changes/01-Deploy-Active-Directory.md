# CHG-0001 - Deploy Active Directory Domain Services

## Change Summary

Deploy a new Active Directory Domain Services (AD DS) environment to provide centralised authentication, authorisation and management for the organisation.

---

## Business Justification

The organisation requires a central identity platform to support users, computers and enterprise management.

Active Directory enables:

- Centralised authentication
- Centralised administration
- Group Policy management
- Security Group management
- Enterprise scalability

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Domain deployment failure | Validate configuration before promotion |
| DNS configuration issues | Verify DNS after promotion |
| Authentication failure | Test domain logon using workstation |

Overall Risk:

**Low**

---

## Implementation

1. Install Active Directory Domain Services.
2. Promote server to Domain Controller.
3. Configure DNS.
4. Create domain:

```
homelab.local
```

5. Restart server.
6. Validate Active Directory health.

---

## Validation

Successful completion was confirmed by:

- Domain Controller operational.
- DNS resolving correctly.
- Active Directory Users and Computers accessible.
- Workstation successfully joined to the domain.
- Domain authentication functioning.

---

## Rollback

If deployment failed:

- Remove Active Directory Domain Services.
- Restore server snapshot.
- Reattempt deployment after resolving identified issues.

---

## Outcome

The Active Directory environment was successfully deployed and became the foundation for all subsequent infrastructure projects.
