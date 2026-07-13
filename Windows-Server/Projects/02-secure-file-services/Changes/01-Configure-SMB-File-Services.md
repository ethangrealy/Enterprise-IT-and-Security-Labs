# CHG-0005 - Configure SMB File Services

## Change Summary

Configure centralised SMB file shares to provide secure network storage for organisational resources.

---

## Business Justification

The organisation requires a central file server where users can securely access departmental information from any domain-joined workstation.

Centralising file storage improves collaboration, simplifies backups and enables consistent permission management.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Users unable to access shared resources | Validate share permissions and network connectivity |
| Incorrect share configuration | Verify UNC paths before deployment |
| Excessive access | Restrict access using Security Groups |

Overall Risk:

**Low**

---

## Implementation

Configured the following SMB shares on **GT-DC01**.

| Share | Purpose |
|--------|---------|
| Departments | Departmental business data |
| Public | Shared organisational resources |
| Software | Software deployment repository |
| Wallpapers | Corporate wallpaper storage |

Each share was configured using a UNC path and validated from a domain-joined workstation.

---

## Validation

Successful implementation was confirmed by:

- All shares accessible via UNC path.
- Shares visible from domain-joined workstations.
- Network connectivity verified.
- Users could browse authorised shares.

---

## Rollback

If required:

- Remove SMB shares.
- Restore previous share configuration.
- Restore the server from backup or snapshot.

---

## Outcome

A secure, centralised file server was established to support departmental collaboration and future software deployment.
