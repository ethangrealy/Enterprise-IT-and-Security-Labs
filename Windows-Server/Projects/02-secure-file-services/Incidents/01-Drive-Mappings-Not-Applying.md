# INC-0001 - Drive Mappings Not Applying

## Summary

Network drive mappings failed to appear for domain users despite the Group Policy Object applying successfully.

---

## Impact

Users were unable to access departmental resources using mapped drives.

Although the network shares were accessible via their UNC paths, no mapped drives were created during logon.

---

## Symptoms

- Drive mappings did not appear in File Explorer.
- `gpresult /r` confirmed the Group Policy Object had applied.
- UNC paths were accessible manually.
- No errors were reported within the Drive Maps Group Policy Preference.

---

## Investigation

The following troubleshooting steps were completed.

- Verified the GPO was linked to the correct Organisational Unit.
- Confirmed users were located within the correct OU.
- Confirmed Security Group membership.
- Validated Share and NTFS permissions.
- Tested UNC path access.
- Reviewed Event Viewer.
- Compared Group Policy processing behaviour.

---

## Root Cause

Windows processed user Group Policy before the workstation had fully initialised the network connection.

As a result, the Drive Maps preference processed before the required network resources were available.

---

## Resolution

Enabled the following policy.

```
Computer Configuration
→ Policies
→ Administrative Templates
→ System
→ Logon
→ Always wait for the network at computer startup and logon
```

After restarting the workstation, drive mappings were successfully created during user logon.

---

## Validation

Validation confirmed:

- Drive mappings appeared automatically.
- Users could access departmental resources.
- Users could access the Public share.
- Users could access the Software repository.

---

## Lessons Learned

Group Policy Preferences may process before the workstation network connection is available.

When troubleshooting mapped drives, validate Group Policy processing behaviour before assuming the issue relates to Share or NTFS permissions.
