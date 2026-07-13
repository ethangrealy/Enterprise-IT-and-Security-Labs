# INC-0001 – Delegated User Unable to Decrypt Windows LAPS Password

## Incident Summary

Following implementation of Windows LAPS, delegated users were unable to decrypt stored passwords despite possessing delegated read permissions.

---

## Symptoms

Observed:

- Password retrieval returned:

```
DecryptionStatus : Unauthorized
```

- Password field remained blank.

- Password retrieval succeeded only for Domain Administrators.

---

## Investigation

Validated:

- Active Directory schema.
- Computer self-permissions.
- Group membership.
- Group Policy application.
- Password storage.
- Delegated read permissions.

All configuration appeared correct.

---

## Root Cause

The Windows LAPS policy:

Configure authorised password decryptors

had not been configured.

Although delegated users possessed read permissions, passwords continued to be encrypted exclusively for Domain Administrators.

---

## Resolution

Configured Group Policy:

- Enabled password encryption.
- Configured authorised password decryptors.
- Assigned:

```
HOMELAB\SG_SG_LAPS_Password_Decryptors
```

Forced Group Policy update.

Triggered Windows LAPS policy processing.

Generated a new managed password.

---

## Validation

Confirmed:

```
DecryptionStatus : Success

AuthorisedDecryptor :
HOMELAB\SG_Remote_Desktop_Users
```

Delegated user successfully retrieved the encrypted password without Domain Administrator privileges.

---

## Lessons

Windows LAPS separates:

- Password read permissions.
- Password decryption permissions.

Both controls must be configured to achieve delegated password retrieval.
