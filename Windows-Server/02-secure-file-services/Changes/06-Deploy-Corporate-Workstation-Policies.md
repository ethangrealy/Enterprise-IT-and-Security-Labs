# CHG-0008 - Deploy Corporate Workstation Policies

## Change Summary

Deploy standardised workstation policies using Group Policy to create a consistent, secure and managed user experience across all domain-joined workstations.

---

## Business Justification

A standard workstation configuration reduces support overhead, improves the user experience and ensures all users receive a consistent desktop environment.

---

## Risk Assessment

| Risk | Mitigation |
|------|------------|
| Policies applied to incorrect users | Link GPOs to the appropriate Organisational Unit |
| Incorrect desktop configuration | Validate policy application using test accounts |
| User disruption | Test configuration before wider deployment |

Overall Risk:

**Low**

---

## Implementation

Configured and deployed:

- Corporate desktop wallpaper
- Desktop personalisation restrictions
- Standard workstation configuration

Policies were linked to the **Departments** Organisational Unit and validated using standard user accounts.

---

## Validation

Successful implementation was confirmed by:

- Corporate wallpaper applied successfully.
- Users were unable to modify the corporate wallpaper.
- Policies applied consistently across multiple user accounts.
- Group Policy processing verified using `gpresult /r`.

---

## Rollback

If required:

- Unlink the Group Policy Object.
- Force a Group Policy update.
- Remove the configured policies.

---

## Outcome

A consistent corporate desktop experience was successfully deployed across managed workstations, reducing configuration drift and improving administrative consistency.
